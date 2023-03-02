PImage I, L;
int N = 1;
void setup(){
  size(1024,512);
  I = loadImage("lena.png");
  I.resize(512,512);
  frameRate('s'-60);
  image(I, 0, 0);
  

}

void draw(){
  if(frameCount%25==0){
    N++;
    println(N);
    if(N==9){
      N=1;
    }
  }
  L = grid(I,int(pow(2,N)));
  image(L,512,0);

  
}

PImage stretching(PImage I){
  PImage R = I.copy();
  R.loadPixels();
  float minr = red(R.pixels[0]);
  float ming = green(R.pixels[0]);
  float minb = blue(R.pixels[0]);
  float maxr = red(R.pixels[0]);
  float maxg = green(R.pixels[0]);
  float maxb = blue(R.pixels[0]);
   
  for(int i=1; i<R.pixels.length;i++){
    minr = min(minr, red(R.pixels[i]));  
    ming = min(ming, green(R.pixels[i]));  
    minb = min(minb, blue(R.pixels[i]));  
    maxr = max(maxr, red(R.pixels[i]));
    maxg = max(maxg, green(R.pixels[i]));
    maxb = max(maxb, blue(R.pixels[i]));
  } 
  
  for(int i=0; i<R.pixels.length;i++){
    float r= ((red(R.pixels[i])-minr)/(maxr-minr))*255;
    float g= ((green(R.pixels[i])-ming)/(maxg-ming))*255;
    float b= ((blue(R.pixels[i])-minb)/(maxb-minb))*255;
    R.pixels[i]=color( r, g, b);
  }
  R.updatePixels();
return R;
}

PImage grid(PImage I, int N){
  PImage R = I.copy();
  PImage tmp;
  
  for(int i = 0; i<I.width; i+=N){
    for(int j=0; j<I.height; j+=N){
      tmp = R.get(i,j,N,N);
      tmp = stretching(tmp);
      R.set(i,j,tmp);
    }
  }
  
return R;  
}
