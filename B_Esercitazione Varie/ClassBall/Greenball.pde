class Greenball extends ball{
  Greenball(float x, float y, float s, float sx, float sy){
    super(x,y,s,sx,sy);
  }
  Greenball(float x, float y, float size){
    super(x,y,size);
  }

  void display(){
    fill(0,255,0);
    stroke(129,0,255);
    strokeWeight(5);
    ellipse(px,py,size,size);
  }

}
