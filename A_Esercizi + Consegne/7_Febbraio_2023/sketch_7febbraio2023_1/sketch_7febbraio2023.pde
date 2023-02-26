ArrayList<Casa> c;
ArrayList<Casetta> h;
void setup(){
  size(500,500);
  background(0);
  c = new ArrayList<Casa>();
  h = new ArrayList<Casetta>();
}

void draw(){
  background(0);
  for(Casa c1:c){
    c1.run();
  }
  for(Casetta h1:h){
    h1.run();
  }
}

void keyPressed(){
  if(key=='r' || key == 'R'){
    setup();  
  }
}

void mousePressed(){

  if(mouseButton==LEFT){
    c.add(new Casa());
  }
  if(mouseButton==RIGHT){
    h.add(new Casetta());
  }
  
}
