void setup(){
  size(400,240);
  fill(0,0,255);
  stroke(0,0,255);
}

void draw(){
  
  if(mousePressed){
    if(mouseButton==LEFT){stroke(0,0,255);}
    if(mouseButton==RIGHT){stroke(255,0,0);}
    line(pmouseX,pmouseY,mouseX,mouseY);
  }
}
