ArrayList<Voto> b;
ArrayList<Votone> d;
void setup(){
  size(500,500);
  background(0);
  b = new ArrayList<Voto>();
  d = new ArrayList<Votone>();
}

void draw(){
  background(0);
  for(Voto v:b){
    v.run();
  }
  for(Votone p:d){
    p.run();
  }
}

void keyPressed(){
  if(key=='r'||key=='R'){setup();}
}

void mousePressed(){
  if(mouseButton==LEFT){
    b.add(new Voto());
  }
  if(mouseButton==RIGHT){
    d.add(new Votone());
  }
}
