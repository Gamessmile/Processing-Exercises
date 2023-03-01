PImage I, L;
int s = 2;
void setup(){
  size(512,256);
  I = loadImage("lena.png");
  I.resize(256,256);
  I.filter(GRAY);
  image(I,0,0);
}

PImage jonnyFilter(PImage I, int N){
  PImage R = I.copy();
  PImage tmp;
  
  
  
  for(int i=0;i<I.width;i++){
    for(int j=0; j<I.height;j++){
      
      tmp = I.get(i-N/2, j-N/2, N, N);
      tmp.loadPixels();
      float massimo = 0; 
      float minimo = 300;
      for(int x=0; x<tmp.pixels.length;x++){
        if(red(tmp.pixels[x])>massimo){
          massimo = red(tmp.pixels[x]);        
        }
        if(red(tmp.pixels[x])<minimo){
          minimo = red(tmp.pixels[x]);        
        }
      }
      R.set(i, j, color(massimo-minimo));     
    }
  }
return R; 
}

void draw(){
  L = jonnyFilter(I,s);
  image(L, 256,0);
  fill(255);
  textSize(40);
  text(s,width-20,30);
}

void keyPressed(){
  if(key=='+' && s<9){
    s++;
    println(s);
  }
  if(key=='-' && s>2){
    s--;
    println(s);
  }
}
