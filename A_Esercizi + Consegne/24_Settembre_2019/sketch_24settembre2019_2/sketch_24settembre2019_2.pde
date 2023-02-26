

PImage I, L, K;

void setup(){
  size(768, 256);
  I = loadImage("lena.png");
  I.filter(GRAY);
  I.resize(256,256);
  L = tBox(I, int(random(16,256)));
  image(I,0,0);
  image(L, 256,0);
  K = tBox(I, int(random(16,256)), 7);
  image(K,512,0);
}

void draw(){}

PImage tBox(PImage I, int h){
  PImage R = I.copy();
  for(int i = 0; i<h; i++){
    for(int j=0; j<h; j++){
      if(i+j<h){
        R.set(i,j,color(60));
      } 
    }
  }
return R;
}

PImage tBox(PImage I, int h, int N){
  I = tBox(I,h);
  PImage R = createImage(I.width, I.height, RGB);
  PImage temp;
  int off=N/2;
  float res;
  
  for(int i=0; i<I.width;i++){
    for(int j=0; j<I.height;j++){
      res=0;
      temp = I.get(i-off,j-off,N,N);
      for(int x=0; x<temp.width;x++){
        for(int y=0; y<temp.height; y++){
          res += red(temp.get(x,y));
        }
      }
      R.set(i,j,color(res/(N*N)));
    }
  }
return R;
}

void keyPressed(){
  if(key=='r'||key=='R'){
    setup();
  }
}
