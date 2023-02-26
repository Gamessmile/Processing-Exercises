void setup(){
  size(400,240);
  fill(0,0,255);
  stroke(0,0,255);
}

void draw(){
  if(key=='r'){
    fill(255,0,0);
  }
  else{
    fill(0,255,0);
  }
}

void mouseClicked(){
  rect(mouseX,mouseY,10,30);
}
