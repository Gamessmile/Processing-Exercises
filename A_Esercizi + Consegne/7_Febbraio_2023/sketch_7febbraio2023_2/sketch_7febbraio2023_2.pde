PImage I, L;

void setup(){
  size(512,256);
  I = loadImage("lena.png");
  I.resize(256,256);
  image(I,0,0);
  L = wow(I);
  image(L, 256, 0);
}

void draw(){

}

PImage wow(PImage I){
  PImage R = createImage(I.width,I.height,RGB);
  PImage P = I.get(0,0,I.width/2,I.height);
  PImage S = I.get(I.width/2,0, I.width/2, I.height);
  
  R.set(0,0,S);
  R.set(I.width/2,0,P);
  
  R.loadPixels();
  float r, g, b, percentuale = random(0,50)*R.pixels.length/100;
  
  for(int i=0;i<percentuale;i++){
    r=red(R.pixels[i]);
    g=green(R.pixels[i]);
    b=blue(R.pixels[i]);
    
    R.pixels[i] = color(b,g,r);
  }
  
  for(int i=int(percentuale);i<R.pixels.length;i++){
    r=red(R.pixels[i]);
    g=green(R.pixels[i]);
    b=blue(R.pixels[i]);
    
    R.pixels[i] = color(r,b,g);
  }

return R;
}

void keyPressed(){
  if(key == 'r' || key == 'R'){
    setup();
  }
}
