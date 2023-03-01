class volcano{
  float px, py, random;
  boolean status = false;
  ArrayList<fireball> f;
  
  volcano(float px, float py){
    this.px=px;
    this.py=py;
    f = new ArrayList<fireball>();
  }
  
  void display(){
    fill(120,60,40);
    beginShape();
    vertex(px+30,py-30);
    vertex(px-30,py-30);
    vertex(px-60, py+30);
    vertex(px+60,py+30);
    endShape(CLOSE);
  }
  
  void status(){
    status = !status;
    println(status);
  }
  
  void run(){
    display();
    random = random(0,100);
    if(random<=20 && status==true){
      f.add(new fireball(px,py-31,random(5,10), random(-2,2), random(2,8)));
    }
    for(fireball f1:f){
      f1.run();
    }
    
  }

}
