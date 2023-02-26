class BlueHeart extends Heart{
  color c = color(0,0,255);
    
  BlueHeart(){
    super();
  }
  
  void display(color c){
    //noFill();
    //stroke(255);
    //rectMode(CENTER);
    //rect(px,py,50,40);
    noStroke();
    fill(c);
    bezier(px,py+20,px-40,py-25,px,py-33,px,py-7);
    bezier(px,py+20,px+40,py-25,px,py-33,px,py-7);
  }
  
  void run(){
    display(c);
    
    if(mouseX>px-30 && mouseX<px+30 && mouseY>py-10 && mouseY<py+10){
      //if(mouseY>py-10 && mouseY<py+10){
        c = color(100);
      //}
    }
    else{
      c = color(0,0,255);
      move();
    }
  }
  

}
