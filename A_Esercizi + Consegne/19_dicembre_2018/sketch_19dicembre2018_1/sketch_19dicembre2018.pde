PImage I, F;
int k = 75;
int mode = 1;
void setup(){
  size(512,512);
  I = loadImage("lena.png");
  F = I.copy();
  
}

void draw(){
  image(F,0,0);
  noFill();
  rectMode(CENTER);
  rect(mouseX, mouseY,k,k);
}

void mousePressed(){
  F = applyOperator(F,mouseX,mouseY,k,mode);
}

void keyPressed(){
  if(key=='+' && k < 511){
    k+=2;
  }
  if(key=='-' && k > 3){
    k-=2;
  }
  if(key == '1'){
    mode=1;
  }
  if(key == '2'){
    mode=2;
  }
  
}

PImage gamma(PImage I, float gm){
 PImage R = I.copy();
  
 float C=1/pow(255,gm-1);
  float r,g,b;
  R.loadPixels();
  
  for(int i=0;i<R.pixels.length;i++){
     r = C*pow(red(R.pixels[i]), gm);
     g = C*pow(green(R.pixels[i]), gm);
     b = C*pow(blue(R.pixels[i]), gm);
     R.pixels[i] = color(r,g,b);
  }
  
R.updatePixels();
return R;
}

PImage logaritmo(PImage I){
  PImage R = I.copy();
  float C = 255/log(256);
  float r,g,b;
  R.loadPixels();
  
  for(int i = 0; i<R.pixels.length;i++){
    r= C*log(1+red(R.pixels[i]));
    g= C*log(1+green(R.pixels[i]));
    b= C*log(1+blue(R.pixels[i]));
    R.pixels[i] = color(r,g,b);
  }
  
  R.updatePixels();
return R;
}

PImage applyOperator(PImage I, float x, float y, float n, int s){
  PImage R = I.copy();
  PImage tmp;
  tmp = I.get(int(x-n/2),int(y-n/2),int(n),int(n));
  if(s==1){
    tmp = logaritmo(tmp);
  }
  if(s==2){
    tmp = gamma(tmp, 2);
  }
  
  R.set(int(x-n/2), int(y-n/2), tmp);


return R;  
}
