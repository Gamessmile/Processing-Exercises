ArrayList<bullet> b;
ArrayList<asteroid> a;
int P = 0;
gun p1;

void setup(){
  size(512,512);
  frameRate(60);
  background(0,180,180);
  p1 = new gun(mouseX, height- 35);
  a = new ArrayList<asteroid>();
  b = new ArrayList<bullet>();
}

void draw(){
  float random=random(0,100);
  background(0,60,80);
  p1.run();
  if(random<=5){
    a.add(new asteroid(-50, random(0,256), random(2,7), random(-2,2)));
  }
  p1.run();
  for(asteroid a1:a){
    a1.run();
    for(bullet b1:b){
      a1.hit(b1);
    }
  }
}

void keyPressed(){
  if(key=='a'||key=='A'){
    p1.shot();
  }  
}
