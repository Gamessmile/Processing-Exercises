baloon p1;
ArrayList<spear> S;
double energy = 0;
int points = 0;
int x = 1;
void setup(){
  size(512,512);
  frameRate(60);
  
  fill(255);
  rect(0, height-(height*5/100), width, width);
  p1 = new baloon(width/2,height-(height*5/100)-25);
  S = new ArrayList<spear>();
}


void draw(){
  background(0,255,255);
  float chance = random(0,100);
  if(chance<=10){
    S.add(new spear(random(0+10,width-10), -60, random(3,8)));
  }
  
  for(spear s1:S){
    s1.run();
    if(p1.hit(s1)==true){
      noLoop();
    }
  }
  println(energy);
  p1.run(energy);
  
  if(p1.px>=width-25){energy=-energy;}
  if(p1.px<=25){energy=-energy;}
  
  //Personalizzazioni carine
  fill(255);
  textSize(50);
  if(frameCount%1000==0){fill(255,255,0);x++;}
  points+=x;
  text("Points = "+points,0,0+40);
}

void keyPressed(){
  if(key=='r'||key=='R'){setup();loop();x=1;points=0;energy=0;}
  
  if(key=='a'||key=='A' && energy>-3){energy-=0.2;}
  if(key=='d'||key=='D' && energy<3){energy+=0.2;}
  
  if(energy>0){energy-=0.05;}
  if(energy<0){energy+=0.05;}
}
