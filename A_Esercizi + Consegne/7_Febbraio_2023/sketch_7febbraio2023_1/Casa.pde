class Casa{

  float px, py, vx;
  color c;
  
  
  Casa(){
    px=random(0,width);
    py=random(0,height);
    vx=random(2,10);
    c=color(255,255,0);
  }
  
  void display(){
    strokeWeight(3);
    stroke(c);
    noFill();
    square(px,py,30);
    triangle(px-3,py,px+15, py-15, px+33, py);
  }
  
  void move(){
    px+=vx;
    if(px>=height-30){
      vx=-vx;
    }
    if(px>height-29){//evitare che spawna nel bordo e si blocchi
      px = px -1;
    }
    if(px<=0){
      vx=-vx;
    }
  
  }
  
  void run(){
    display();
    move();
  }

}
