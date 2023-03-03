PImage I;
void setup(){
 size(512,512);
 I = loadImage("lena.png"); 
 I.resize(512,512);
 I = wow(I);
 image(I,0,0);
}

void draw(){

}

PImage wow(PImage I){
  PImage R = I.copy();
  PImage tmp1, tmp2;
  float f = random(0,2);
  println("f = "+f);

  tmp1 = R.get(0,0,width/3,height);
  tmp2 = R.get((width/3)*2,0, width,height);
  
  tmp1.loadPixels();
  
  for(int i=0; i<tmp1.pixels.length;i++){
    tmp1.pixels[i] = color(red(tmp1.pixels[i])/f, blue(tmp1.pixels[i]), green(tmp1.pixels[i]));
  }
  for(int i=0; i<tmp2.pixels.length;i++){
    tmp2.pixels[i] = color(red(tmp2.pixels[i])*f, blue(tmp2.pixels[i]), green(tmp2.pixels[i]));
  }
  
  tmp2.updatePixels();
  R.set(0,0, tmp2);
  
  R.set((width/3),0, I.get(width/3,0,width/3*2,height));
  tmp1.updatePixels();
  R.set((width/3)*2,0, tmp1);

return R;
}

void keyPressed(){
  if(key=='r'||key=='R'){
    setup();
  }
}
