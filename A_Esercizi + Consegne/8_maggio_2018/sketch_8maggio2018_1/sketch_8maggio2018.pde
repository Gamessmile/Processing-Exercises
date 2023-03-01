int K = 10 * (5+1);

PImage I;
void setup(){
  size(1024, 512);
}

void draw(){
  I = loadImage("lena.png");
  I.resize(512,512);
  image(I, 0, 0);
  color c = regionMean(I, mouseX, mouseY, K);
  stroke(255,0,255);
  noFill();
  rectMode(CENTER);
  rect(mouseX,mouseY,K,K);
  fill(c);
  rectMode(CORNER);
  rect(512,0,512,512);
  
}

void keyPressed(){
  if(key=='+' && K<250){
    K+=10;
  }
  if(key=='-' && K>10){
    K-=10;  
  }
}

color imMean(PImage I){
  color c;
  float r=0;
  float g=0;
  float b=0;
  int n;
  I.loadPixels();
  n = I.pixels.length;
  for(int i=0;i<I.pixels.length;i++){
    r += red(I.pixels[i]);
    g += green(I.pixels[i]);
    b += blue(I.pixels[i]);
  }
  c = color(r/n, g/n, b/n);
 
return c;
}

color regionMean(PImage I, int x, int y, int n){
  color c;
  PImage tmp = I.get(x-n/2,y-n/2,n,n);
  c = imMean(tmp);
return c;
}
