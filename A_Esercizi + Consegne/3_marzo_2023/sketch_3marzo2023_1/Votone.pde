class Votone extends Voto{
  Votone(){super();}
  
  void display(){
    rectMode(CENTER);
    strokeWeight(3);
    stroke(255);
    noFill();
    rect(px,py,30,30);
    textSize(28);
    text(voton,px-13,py+9);
    if(this.voton>24){
      text("LODE",px-13,py+40);
    }
  }
  
  void move(){}
  
}
