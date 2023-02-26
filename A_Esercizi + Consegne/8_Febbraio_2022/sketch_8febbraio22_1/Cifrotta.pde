class Cifrotta extends Cifra{
  
  Cifrotta(char c){
    super(c);
  }
  
  void display(){
    noFill();
    stroke(255);
    ellipseMode(CENTER);
    ellipse(px+7,py-10,32,32);
    fill(255);
    textSize(32);
    text(c,px,py);  
  }
  
  void move(){
    py += -vy;
    if(py<=0){
      py=height;
    }
  }


}
