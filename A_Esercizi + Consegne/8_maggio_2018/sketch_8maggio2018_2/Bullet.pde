class bullet{
  float px, py;

  bullet(float px, float py){
    this.px=px;
    this.py=py;
  }
  
  void display(){
    noStroke();
    fill(255,0,255);
    ellipseMode(CENTER);
    ellipse(px,py,10,10);
  }
  
  void move(){
    py+=-10;
  }
  
  void run(){
    display();
    move();
  }
  

}
