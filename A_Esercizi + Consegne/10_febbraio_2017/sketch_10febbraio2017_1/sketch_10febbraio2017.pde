volcano []t = new volcano[3];
void setup(){
  size(640,480);
  background(0);
  frameRate(60);
  t[0] = new volcano(random(40,600),height-30);
  t[1] = new volcano(random(40,600),height-30);
  t[2] = new volcano(random(40,600),height-30);
}

void draw(){
  background(0);
  t[0].run();
  t[1].run();
  t[2].run();
}

  void keyPressed(){
    if(key=='n' || key=='N'){
      t[0].status();
      t[1].status();
      t[2].status();
    }
  }
