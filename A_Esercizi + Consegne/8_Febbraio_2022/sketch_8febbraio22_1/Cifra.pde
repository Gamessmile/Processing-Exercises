
class Cifra{
  float px, py, vy;
  char c;
  Cifra(char c){
    px = random(0,width);
    py = random(0, height/2);
    vy = random(2,10);
    this.c=c;
  }
  
  void display(){
    fill(255,255,0);
    textSize(32);
    text(c,px,py);  
  }
  
  void move(){
    py+=vy;
    if(py>=height){
      py=0;
    }
  }
  
  void run(){
    display();
    move();
  }




}
