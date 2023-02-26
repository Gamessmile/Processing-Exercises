
float s=1;

void setup(){
  size(500,500);
  rectMode(CENTER);
}

void draw(){
  background(255);
  translate(width/2, height/2);
  scale(s);
  rect(0,0,50,50);
  s+=0.01;
}
