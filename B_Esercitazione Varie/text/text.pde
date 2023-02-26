size(200,400);
PFont f;
//f= createFont("Arial",16,true); //"Crei tu"
f = loadFont("TimesNewRomanPSMT-16.vlw"); //Carica il font usando

fill(0);
line(100,0,100,400);
textFont(f,20); //Digli di usare il tuo font messo in f, secondo valore dimensione

fill(0);//colore testo
textSize(40); //Grandezza testo
textAlign(RIGHT);
text("Destra", 100,40);

textAlign(LEFT);
text("Sinistra", 100,70);

textAlign(CENTER);
text("Centro", 100,100);
