class Casetta extends Casa{

  Casetta(){
  
    super();
    c=(255);
  }
  
   void display(){
    strokeWeight(3);
    stroke(c);
    noFill();
    square(px,py,30);
    triangle(px-3,py,px+15, py-15, px+33, py);
    fill(c);
    rect(px+14,py+30,2,-10);
  }
  
  void move(){
    px= px - vx;
    if(px<=0-30){
      px=height;
    }
  }
  
  

}
