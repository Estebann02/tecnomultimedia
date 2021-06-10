int py, py2;
int pantalla;
PImage fondo;
//PImage halcon milenario;
PFont creditos;
float tam, tam2;
float ex, ey, ex2, ey2;

void setup(){
  size(600,400);
  pantalla = 0;
  tam = 30;
  creditos = loadFont("Arial-BoldMT-48.vlw");
  fondo = loadImage("star wars.png"); 
  py = 400;
  py2 = 400;
  
//halcon milenario
}
  
void draw(){
  println(mouseX,mouseY);
  imageMode(CENTER);
  image(fondo,width/2,height/2,width,height);
  textAlign(CENTER);
  textFont(creditos,tam);
  ex = random(width);
  ey = random(height);
  ex2 = random(width);
  ey2 = random(height);
    
//ESTRELLITAS
if(frameCount < 310 && frameCount < 1130 || frameCount > 1020 && frameCount < 1130 ){
  fill(255);
  ellipse(ex,ey,5,5);
  fill(10,140,150);
  ellipse(ex2,ey2,5,5);
}
//TITULO SUBE
if(pantalla == 0 && frameCount < 100){
  py = py-2;
  fill(10,140,150);
  text("STAR WARS IV \n UNA NUEVA ESPERANZA",width/2,py);
}
//TITULO DESVANECE
if(frameCount >= 100 && frameCount < 130){ 
  float verde = map(frameCount, 100, 130, 140, 0);
  float azul = map(frameCount, 100, 130, 150, 0);
  float rojo = map(frameCount, 100, 130, 10, 0);
  fill(rojo,verde,azul);
  text("STAR WARS IV \n UNA NUEVA ESPERANZA",width/2,height/2);
}
if(frameCount >= 130){
  pantalla = 2;
}
// 4 PROTAS APARECE
if(pantalla == 2 && frameCount < 160){
  float verde = map(frameCount, 130, 160, 0, 140);
  float azul = map(frameCount, 130, 160, 0, 150);
  float rojo = map(frameCount, 130, 160, 0, 10);
  fill(rojo,verde,azul);
  text(" MARK HAMILL" ,150,150);
  text("CARRIE FISHER",450,150);
  text("HARRISON FORD", 150,300);
  text("PETER MAYHEW",450,300);
  textSize(20);
  text("Luke Skywalker",150,180);
  text("Leia Organa",450,180);
  text("Han Solo",150,330);
  text("Chewbacca",450,330);  
}
// 4 PROTAS.
if(frameCount >= 160 && frameCount < 190){
   fill(10,140,150);
   text(" MARK HAMILL" ,150,150);
   text("CARRIE FISHER",450,150);
   text("HARRISON FORD", 150,300);
   text("PETER MAYHEW",450,300);
   textSize(20);
   text("Luke Skywalker",150,180);
   text("Leia Organa",450,180);
   text("Han Solo",150,330);
   text("Chewbacca",450,330); 
}
//4 PROTAS DESVANECE
if(frameCount >= 190 && frameCount < 220){
  float verde = map(frameCount, 190, 220, 140, 0);
  float azul = map(frameCount, 190, 220, 150, 0);
  float rojo = map(frameCount, 190, 220, 10, 0);
  fill(rojo,verde,azul);
  text(" MARK HAMILL" ,150,150);
  text("CARRIE FISHER",450,150);
  text("HARRISON FORD", 150,300);
  text("PETER MAYHEW",450,300);
  textSize(20);
  text("Luke Skywalker",150,180);
  text("Leia Organa",450,180);
  text("Han Solo",150,330);
  text("Chewbacca",450,330);
}
if(frameCount >= 220){
  pantalla = 3;
}
//2 PROTAS APARECE
if(pantalla == 3 && frameCount < 250){
  float verde = map(frameCount, 220, 250, 0, 140);
  float azul = map(frameCount, 220, 250, 0, 150);
  float rojo = map(frameCount, 220, 250, 0, 10);
  fill(rojo,verde,azul);
  text("ALEC GUINNESS",150,200);
  text("DAVID PROWSE",450,200);
  textSize(20);
  text("Obi-Wan Kenobi",150,230);
  text("Darth Vader",450,230);
}
//2 PROTAS.
if(frameCount >= 250 && frameCount < 280){
  fill(10,140,150);
  text("ALEC GUINNESS",150,200);
  text("DAVID PROWSE",450,200);
  textSize(20);
  text("Obi-Wan Kenobi",150,230);
  text("Darth Vader",450,230);
}
//2 PROTAS DESVANECE.
if(frameCount >= 280 && frameCount < 310){
  float verde = map(frameCount, 280, 310, 140, 0);
  float azul = map(frameCount, 280, 310, 150, 0);
  float rojo = map(frameCount, 280, 310, 10, 0);
  fill(rojo,verde,azul);
  text("ALEC GUINNESS",150,200);
  text("DAVID PROWSE",450,200);
  textSize(20);
  text("Obi-Wan Kenobi",150,230);
  text("Darth Vader",450,230); 
}
if(frameCount > 310){
  pantalla = 4;
  tam= 20;
}
//SECUNDARIOS SUBEN
if(pantalla == 4 && frameCount > 320 && frameCount < 720){
  py2 -= 3;
  fill(10,140,150);
  text(" ANTHONY DANIELS \nC-3P0 \n \n PETER CUSHING \n Almirante Tarkin \n \n SHELAGH FRASER\n Beru Lars \n \n JACK PURVIS \n Jefe Jawa \n \n ALEX McCRINDLE \n General Dodonna \n \n DREWE HENLEY \n Garven Dreis \n \n DON HENDERSON \n Cassio Tage \n \n WILLIAM HOOTKINS \n Rojo 6 \n \n JEREMY SINDEN \n Dorado 2 \n \n GRANT McCUNE \n Artillero \n \n MALCOM TIERNEY \n Lt. Childsen",150,py2);
  text("KENNY BAKER \n R2-D2 \n \n DENIS LAWSON \n Wedge Antilles \n \n PHIL BROWN \n Owen Lars \n \n GARRICK HAGON \n Biggs Darklighter \n \n EDDIE BYRNE \n General Willard \n \n ANGUS MACLNNES \n Lider Dorado \n \n LESLIE SCHOFIELD \n Comandante 1 \n \n JACK KLAFF \n Rojo 4 \n \n JOE JOHNSTON \n Death Startrooper \n \n PAUL BLAKE \n Greedo \n \n ALFIE CURTIS \n Dr. Evazan",450,py2);
}
if(frameCount >= 720){
  pantalla = 5;
}
//VOCES DARTH VADER APARECE
if(pantalla == 5 && frameCount < 750){
  float verde = map(frameCount, 720, 750, 0, 140);
  float azul = map(frameCount, 720, 750, 0, 150);
  float rojo = map(frameCount, 720, 750, 0, 10);
  fill(rojo,verde,azul);
  text("ANTHONY DANIELS, KENNY BAKER, PETER MAYHEW, \n DAVID PROWSE, JACK PURVIS, EDDIE BYRNE, \n JAMES EARL JONES",width/2,height/2);
  textSize(10);
  text("como la voz de Darth Vader",300,270);
}
//VOCES DARTH VADER
if(frameCount >= 750 && frameCount < 780){
  fill(10,140,150);
  text("ANTHONY DANIELS, KENNY BAKER, PETER MAYHEW, \n DAVID PROWSE, JACK PURVIS, EDDIE BYRNE, \n JAMES EARL JONES",width/2,height/2);
  textSize(10);
  text("como la voz de Darth Vader",300,270);
}
//VOCES DARTH VADER DESAPARECE
if(frameCount >= 780 && frameCount < 810){
  float verde = map(frameCount, 780, 810, 140, 0);
  float azul = map(frameCount, 780, 810, 150, 0);
  float rojo = map(frameCount, 780, 810, 10, 0);
  fill(rojo,verde,azul);
  text("ANTHONY DANIELS, KENNY BAKER, PETER MAYHEW, \n DAVID PROWSE, JACK PURVIS, EDDIE BYRNE, \n JAMES EARL JONES",width/2,height/2);
  textSize(10);
  text("como la voz de Darth Vader",300,270);
}
if(frameCount >= 820){
  pantalla = 6;
  tam= 30;
}
//MUSICA APARECE
if(pantalla == 6 && frameCount < 850){
  float verde = map(frameCount, 820, 850, 0, 140);
  float azul = map(frameCount, 820, 850, 0, 150);
  float rojo = map(frameCount, 820, 850, 0, 10);
  fill(rojo,verde,azul);
  text("JOHN WILLIAMS", width/2, height/2);
  textSize(15);
  text("Musica compuesta por",width/2,170);
}
//MUSICA
if(frameCount >= 850 && frameCount < 880){
  fill(10,140,150);
  text("JOHN WILLIAMS", width/2, height/2);
  textSize(15);
  text("Musica compuesta por",width/2,170);
}
//MUSICA DESAPARECE
if(frameCount >= 880 && frameCount < 910){
  float verde = map(frameCount, 880, 910, 140, 0);
  float azul = map(frameCount, 880, 910, 150, 0);
  float rojo = map(frameCount, 880, 910, 10, 0);
  fill(rojo,verde,azul);
  text("JOHN WILLIAMS", width/2, height/2);
  textSize(15);
  text("Musica compuesta por",width/2,170);
}
if(frameCount >= 920){
  pantalla = 7;
}
//PRODUCTOR APARECE
if(pantalla == 7 && frameCount < 950){
  float verde = map(frameCount, 920, 950, 0, 140);
  float azul = map(frameCount, 920, 950, 0, 150);
  float rojo = map(frameCount, 920, 950, 0, 10);
  fill(rojo,verde,azul);
  text("GARY KURTZ", width/2, height/2);
  textSize(15);
  text("Producida por",width/2,170);
}
//PRODUCTOR
if(frameCount >= 950 && frameCount < 980){
  fill(10,140,150);
  text("GARY KURTZ", width/2, height/2);
  textSize(15);
  text("Producida por",width/2,170);
}
//PRODUCTOR DESAPARECE
if(frameCount >= 980 && frameCount < 1010){
  float verde = map(frameCount, 980, 1010, 140, 0);
  float azul = map(frameCount, 980, 1010, 150, 0);
  float rojo = map(frameCount, 980, 1010, 10, 0);
  fill(rojo,verde,azul);
  text("GARY KURTZ", width/2, height/2);
  textSize(15);
  text("Producida por",width/2,170);
}
if(frameCount >= 1020){
  pantalla = 8;
  }
//DIRECTOR APARECE
if(pantalla == 8 && frameCount < 1050){
  float verde = map(frameCount, 1020, 1050, 0, 140);
  float azul = map(frameCount, 1020, 1050, 0, 150);
  float rojo = map(frameCount, 1020, 1050, 0, 10);
  fill(rojo,verde,azul);
  text("GEORGE LUCAS", width/2, height/2);
  textSize(15);
  text("Escrita y Dirigida por",width/2,170);
}
if(frameCount >= 1050 && frameCount < 1100){
  fill(10,140,150);
  text("GEORGE LUCAS", width/2, height/2);
  textSize(15);
  text("Escrita y Dirigida por",width/2,170);
}
if(frameCount >= 1100 && frameCount < 1130){
  float verde = map(frameCount, 1100, 1130, 140, 0);
  float azul = map(frameCount, 1100, 1130, 150, 0);
  float rojo = map(frameCount, 1100, 1130, 10, 0);
  fill(rojo,verde,azul);
  text("GEORGE LUCAS", width/2, height/2);
  textSize(15);
  text("Escrita y Dirigida por",width/2,170);
}
}
  
void mousePressed(){
  frameCount = 0;
  py = 400;
  py2 = 400;
  tam = 30;
  pantalla = 0;
} 
