PImage I, L, K;

void setup(){
  size(756, 256);
  I = loadImage("lena.png");
  I.filter(GRAY);
  I.resize(256,256);
  image(I,0,0);
  L = wow(I);
  image(L,256,0);
  K = mas(L,int(random(5,15)));
  image(K, 512,0);
}

void draw(){}

PImage wow(PImage I){
  PImage R = createImage(I.width, I.height, RGB);
  PImage P;
  
  P = I.get(0,I.height/2,I.width,I.height);
  R.set(0,0,P);
  P = I.get(0,0,I.width,I.height/2);
  R.set(0,I.height/2,P);
  for(int i=I.width/2;i<I.width;i++){
    for(int j=I.height/2;j<I.height;j++){
      if(i==j){
        R.set(i,j,color(255));
      }
    }
  }
return R;
}

PImage mas(PImage I, int n){
   PImage R = createImage(I.width, I.height, RGB);
   PImage tmp;
   int l=0;
   for(int i=0; i<I.width;i++){
     for(int j=0; j<I.height;j++){
       tmp = I.get(i-(n/2),j-(n/2),n,n);
       tmp.loadPixels();
       l = int(red(tmp.pixels[0]));
       for(int x=0;x<(tmp.pixels.length)-1;x++){
         if(red(tmp.pixels[x+1])>l){
           l = int(red(tmp.pixels[x+1]));
         }
         R.set(i,j,color(l));
         
       }
     }
   }
return R;
}

void keyPressed(){
  if(key=='r'||key=='R'){
    setup();
  }
}
