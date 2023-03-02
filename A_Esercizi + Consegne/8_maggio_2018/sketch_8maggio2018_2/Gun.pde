class gun{
  float px, py;
  
  
  gun(float px, float py){
    this.px=px;
    this.py=py;
    b = new ArrayList<bullet>();
  }
  
  void display(){
    strokeWeight(1);
    stroke(0);
    rectMode(CENTER);
    fill(210);
    rect(px,py,20,70);
    //PERSONALIZZAZIONI RANDOM
    fill(255,0,0);
    rect(px,0+70,3,height+220, 100);
    fill(0,255,0);
    triangle(px-10,py-35,px,py-40,px+10,py-35);
    //PUNTEGGIO
    fill(255);
    if(P%10==0 && P!=0){fill(255,255,0);}
    textSize(40);
    text(P, width/2, 0+34);
    
  }
  
  void move(){
    px=mouseX;
  }
  
  void shot(){
    b.add(new bullet(px,py-35));
  }
  
  void run(){
    display();
    move();
    for(bullet A:b){
      A.run();
    }
  }

}
