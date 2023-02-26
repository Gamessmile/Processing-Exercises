Heart a;
BlueHeart b;
void setup(){
  size(300,300);
  background(0,0,50);
  a = new Heart();
  b = new BlueHeart();
}

void draw(){
  background(0,0,50);
  a.run();
  b.run();
}

void keyPressed(){
  if(key=='r'||key=='R'){
    setup();
  }
}
