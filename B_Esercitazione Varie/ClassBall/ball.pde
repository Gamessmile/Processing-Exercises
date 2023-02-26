class ball{

   float px, py, size, sx, sy;
   ball(float x, float y, float size, float sx, float sy){
     this.px = x;
     this.py = y;
     this.size = size;
     this.sx = sx;
     this.sy = sy;
   }
   ball(float x, float y, float size){
     this(x,y,size,0,0);
   }
   
   void display(){
     fill(255,255,0);
     noStroke();
     ellipse(this.px, this.py, this.size, this.size);
   }
   
   void move(){
     px+=sx;
     py+=sy;
   }
   
   void bounce(){
     if(px<=0+size/2 || px >=width-size/2){
       sx=-sx;
     }
     if(py<=0+size/2 || py >=height-size/2){
       sy=-sy;
     }
   }
   
   void gravity(){
     sy+=0.1;
   }
   
   void run(){
     this.gravity();
     this.move();
     this.bounce();
     this.display();
   }


}
