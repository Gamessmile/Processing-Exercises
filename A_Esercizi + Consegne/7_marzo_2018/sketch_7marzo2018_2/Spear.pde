class spear{
  float px, py, vy;
  
  spear(float px, float py, float vy){
    this.px=px;
    this.py=py;
    this.vy=vy;
  }
  
  void display(){
    noStroke();
    fill(0,50,100);
    triangle(px-10,py-50,px+10, py-50, px, py);
  }
  
  void move(){
    py+=vy;  
  }

  void run(){
    move();
    display();
  }
}
