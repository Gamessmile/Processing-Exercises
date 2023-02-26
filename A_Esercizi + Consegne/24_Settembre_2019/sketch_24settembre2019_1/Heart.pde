class Heart{
  float px,py,vx,vy;
  
  Heart(){
    px=random(0,width);
    py=random(0,height);
    vx=random(-5,5);
    vy=random(-5,5);
  }

  void display(){
    //noFill();
    //stroke(255);
    //rectMode(CENTER);
    //rect(px,py,50,40);
    noStroke();
    fill(255,0,0);
    bezier(px,py+15,px-30,py-15,px,py-23,px,py-5);
    bezier(px,py+15,px+30,py-15,px,py-23,px,py-5);
  }
  
  void move(){
    px+=vx;
    py+=vy;
    if(px<0){
      vx=-vx;
    }
    if(py<0){
      vy=-vy;
    }
    if(px>width){
      vx=-vx;
    }
    if(py>height){
      vy=-vy;
    }
  }
   void run(){
     display();
     move();
   }
  
}
