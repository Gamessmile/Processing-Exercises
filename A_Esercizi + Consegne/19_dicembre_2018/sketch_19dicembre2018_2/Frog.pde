class Frog{
  float px, py, vx, vy;
  
  Frog(float px, float py, float vx, float vy){
    this.px = px;
    this.py = py;
    this.vx = vx;
    this.vy = vy;
  }

  void display(){
    //La consegna é un pó confusa sulle forme della rana
    noStroke();
    fill(0,255,0);
    ellipseMode(CENTER);
    ellipse(px,py,70,50);
    fill(255,0,0);
    ellipse(px-25,py-20,20,20);
    ellipse(px+25,py-20,20,20);
    //Gli occhi ci vogliono
    stroke(0);
    strokeWeight(5);
    point(px-25, py-20);
    point(px+25, py-20);
    //Bocca
    stroke(0);
    strokeWeight(2);
    noFill();
    bezier(px-25,py+5,px-20,py+10,px+1,py+2,px,py);
    bezier(px+25,py+5,px+20,py+10,px-1,py+2,px,py);
    //Naso
    strokeWeight(2);
    point(px-10,py-3);
    point(px+10,py-3);
  }
  
  void move(){
    py+=vy;
    px+=vx;
    
    vy+=0.2;
    
    if(px>=width-35){
      vx=-vx;
    }
    if(px<=0+35){
      vx=-vx;
    }
    if(py>=height-25){
      vy=-vy;
    }
    if(py<=0+25){
      vy=-vy;
    }
    
    if(dist(mouseX, mouseY,px,py)<20){
      vy=7*-1;
    }
    
  }
  
  void run(){
    display();
    move();
  }
}
