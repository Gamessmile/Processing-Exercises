ArrayList<ball> bs;

void setup(){
  size(800,500);
  background(0);
  bs= new ArrayList<ball>();
 
}

void draw(){
  noStroke();
  fill(0,30);
  rect(0,0,width,height);
  
  for(ball b:bs){
    b.run();
  }
  
}

void keyPressed(){
  
  if(key=='b' || key=='B'){
    bs.add(new ball(random(30,width-30),random(30,height-30),random(20,60), random(1,10),random(1,0)));
  }
  
  if(key=='g' || key=='G'){
    bs.add(new Greenball(random(30,width-30),random(30,height-30),random(20,60), random(1,10),random(1,0)));
  }
  
  if(key=='r' || key=='R'){
   setup(); 
  }
  
}
