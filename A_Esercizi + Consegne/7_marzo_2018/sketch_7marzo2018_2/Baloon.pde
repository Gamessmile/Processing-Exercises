class baloon{
  float px, py;
  
  baloon(float px, float py){
    this.px=px;
    this.py=py;
  }
  
  void display(){
    noStroke();
    fill(100,0,0);
    ellipseMode(CENTER);
    circle(px,py,50);
  }

  void move(double e){
    px+=e;
  }
  
  boolean range(float x, float y){
     if(px > x && px < y){
       return true;
     }
     return false;
  }
  
  boolean hit(spear x){
    if(dist(x.px,x.py, px, py) <= 25){return true;} //HIT SULLA PUNTA
    if(dist(px,py, x.px, x.py-50)<=25){return true;} //HIT SUL BUSTO
    return false;
  }
  
  void run(double e){
    move(e);
    display();
  }
  
}
