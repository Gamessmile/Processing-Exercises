class Voto{
  float px,py, vx;
  int voton;
  
  Voto(){
    this.px=random(15,width-15); //fatto cossí per evitare che potesse spawnare metá quadrato fuori dalla canvas
    this.py=random(15,height-15); //fatto cossí per evitare che potesse spawnare metá quadrato fuori dalla canvas
    this.vx=random(2,10);
    this.voton=int(random(18,30));  
  }
  
  void display(){
    textSize(28);
    rectMode(CENTER);
    strokeWeight(3);
    stroke(255,255,0);
    noFill();
    rect(px,py,30,30);  
    text(this.voton,px-13,py+9);
  }
  
  void move(){
    px+=vx;
    if(px>=width-15){
      vx=-vx;
    }
    if(px<=0+15){
      vx=-vx;
    }
  }
  
  void run(){
    display();
    move();
  }


}
