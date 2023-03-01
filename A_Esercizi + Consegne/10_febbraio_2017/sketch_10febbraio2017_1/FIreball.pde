class fireball{
  float px, py, vx, vy, D; 

  fireball(float px, float py, float D, float vx, float vy){
    this.px=px;
    this.py=py;
    this.D=D;
    this.vx=vx;
    this.vy=vy;
  }
  
  
  void display(){
    ellipseMode(CENTER);
    noStroke();
    fill(100,0,0);
    circle(px,py,D);
  }
  
  void move(){
    px += vx;
    py -= vy;
    vy -= 0.1;
  }
  
  void run(){
    display();
    move();
  }

}
