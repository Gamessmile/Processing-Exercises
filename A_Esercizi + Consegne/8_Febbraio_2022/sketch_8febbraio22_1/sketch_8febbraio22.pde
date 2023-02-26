ArrayList<Cifra> c;
ArrayList<Cifrotta> h;

void setup(){
  size(500,500);
  background(0);
  c = new ArrayList<Cifra>();
  h = new ArrayList<Cifrotta>();
}

void draw(){
  background(0);
  for(Cifra c1:c){
    c1.run();
  }
  for(Cifrotta c2:h){
    c2.run();
  }
}

void keyPressed(){
  
  char x = key;
  switch(x){
    case '1':
      c.add(new Cifra('1'));
      break;
    case '2':
      c.add(new Cifra('2'));
      break;
    case '3':
      c.add(new Cifra('3'));
      break;
    case '4':
      c.add(new Cifra('4'));
      break;
    case '5':
      c.add(new Cifrotta('5'));
      break;
    case '6':
      c.add(new Cifrotta('6'));
      break;
    case '7':
      c.add(new Cifrotta('7'));
      break;
    case '8':
      c.add(new Cifrotta('8'));
      break;
    case '9':
      c.add(new Cifrotta('9'));
      break;
  }
}

void mousePressed(){
  if(mouseButton == RIGHT){
    setup();
  }
}
