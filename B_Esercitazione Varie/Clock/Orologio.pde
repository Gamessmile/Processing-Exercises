class Orologio{
  float px, py;
  int s,m,o; //secondi, minuti, ore
  int is = 0, im = 0, io = 0;
  
  Orologio(float px, float py, int s, int m, int o){
    this.px=px;
    this.py=py;
    this.s=s;
    this.m=m;
    this.o=o;
    is = s*360/60;
    im = m*360/60;
    if(o>12){
      this.o=0-12;
    }
    io = o*360/12;
  }
  
  void display(){
    ellipseMode(CENTER);
    strokeWeight(2);
    stroke(0,255,0);
    fill(255);
    ellipse(px,py,120,120);
    
    
    //SECONDI
    pushMatrix();
    strokeWeight(1);
    stroke(0);
    translate(px,py);
    rotate(radians(360+is));
    line(0, 0, 0, -50);
    popMatrix();
    
    //MINUTI
    pushMatrix();
    strokeWeight(2);
    stroke(255,0,0);
    translate(px,py);
    rotate(radians(360+im));
    line(0,0, 0, -40);
    popMatrix();
    
    //ORE
    pushMatrix();
    strokeWeight(3);
    stroke(0,0,255);
    translate(px,py);
    rotate(radians(360+io));
    line(0 ,0, 0, -30);
    popMatrix();
  }
  
  void run(){
    display();
    is+=6;
    if(is==360){
      is=0;
      im+=6;
    }
    if(im==360){
      im=0;
      io+=30;
    }
    if(io==360){
      io=0;
    }
    
  }



}
