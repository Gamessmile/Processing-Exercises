Orologio A;
int f = 1;
void setup(){
  size(500,500);
  background(255); 
  A = new Orologio(width/2, height/2, int(random(0,59)),int(random(0,59)), int(random(0,11))); 
}

void draw(){
  frameRate(f);
  background(255);
  A.run();
}

void keyPressed(){
  if(key=='+'){
    f++;
    println(frameRate);
  }
  if(key=='-' && frameRate!=1){
    f--;
    println(frameRate);
  }
  if(key=='['){ //EPIC SPEEDDO
    f+=80;
    println(frameRate);
  }
 
}
