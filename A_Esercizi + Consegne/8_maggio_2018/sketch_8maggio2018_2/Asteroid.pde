class asteroid{
  float px, py, vx, vy;
  boolean status;
  
  asteroid(float px, float py, float vx, float vy){
    this.px=px;
    this.py=py;
    this.vx=vx;
    this.vy=vy;
    this.status = true;
  }
  
  void display(){
    ellipseMode(CENTER);
    strokeWeight(8);
    stroke(255,255,0);
    if(status==true){fill(100,0,0);}
    if(status==false){fill(180);}
    ellipse(px,py,50,50);
  }
  
  void move(){
    px+=vx;
    py+=vy;
    if(status==false){
      vy+=0.2;
    }
  }
  
  void hit(bullet A){
    if(status!=false && dist(A.px, A.py, px, py)<50){
      status = false;    
      P++;
    }
  }
  
  void run(){
    display();
    move();
  }
}
