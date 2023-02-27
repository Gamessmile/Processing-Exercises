ArrayList<Frog> A;
Frog B;
void setup(){
  size(512,512);
  background(255);
  frameRate(60);
  A = new ArrayList<Frog>();
  B = new Frog(300,300,1,10);
}

void draw(){
  background(255);
  for(Frog a1:A){
    a1.run();
  }
}

void keyPressed(){
  if(key=='f' || key=='F'){
    A.add(new Frog(random(50,450), random(50,450), random(-3,3), random(-3,3)));
  }
  if(key=='r'||key=='R'){setup();}
  
  if(key=='+' && frameRate<300){frameRate(frameRate+1);println(frameRate);}
  if(key=='-' && frameRate>5){frameRate(frameRate-1);println(frameRate);}
}

void mousePressed(){}
