String pantalla;
PImage fondo, credito;
PImage marcotitulosup, marcotituloinf;
PImage intro1, intro2, intro3, intro4, intro5;
PFont titulo, caminos;
int dor1,dor2,dor3,dor4,dor5,dor6;
String[] intro, historia, historia2, historia3, historia4, historia5, historia6;
int linea, linea2, linea3, linea4, linea5, linea6, linea7;
PImage caminos1, caminos2, caminos3, caminos4, caminos5, caminos6, caminos7, caminos8, caminos9, caminos10, caminos11, caminos12, caminos13, caminos14;
int g1,g2,g3;
PImage [] camino = new PImage[14];

void setup(){
  size(800,600);
  textAlign(CENTER);
  imageMode(CENTER);
  pantalla = "0";
  intro = loadStrings("AsterionIntroduccion.txt");
  historia = loadStrings("historia.txt");
  historia2 = loadStrings("historia2.txt");
  historia3 = loadStrings("historia3.txt");
  historia4 = loadStrings("historia4.txt");
  historia5 = loadStrings("historia5.txt");
  historia6 = loadStrings("historia6.txt");
  fondo = loadImage("titulo.png");
  marcotitulosup = loadImage("marcotitulosup.png");
  marcotituloinf= loadImage("marcotituloinf.png");
  intro1 = loadImage("introduccion1.png");
  intro2 = loadImage("introduccion2.png");
  intro3 = loadImage("introduccion3.png");
  intro4 = loadImage("introduccion4.png");
  intro5 = loadImage("introduccion5.png");
  caminos = createFont("Romanica.ttf",30);
  titulo = createFont("DIOGENES.ttf",50);
  for(int c=0; c<camino.length; c++){
    camino[c] = loadImage("camino"+c+".png");
  }
}

void draw(){
  background(0);
  println(mouseX, mouseY);
  //println(frameCount);
  //println(pantalla);
  //println(linea2);
  //println(linea3);
  fill(255);
  textFont(caminos);
  background(0);
  textSize(15);
 
 //PANTALLA DE INICIO
 if(pantalla.equals("0")){
    Titulo();
    dor1 = 0;
    dor2 = 0;
    dor3 = 0;
    dor4 = 0;
  }
  if(mouseX>=325 && mouseX<=475 && mouseY >=475 && mouseY <=498 && pantalla.equals("0")){
    dor1 = 255;
    dor2 = 191;
  }else{
    dor1 = 0;
    dor2 = 0;
  }
  if(mouseX>=360 && mouseX<=440 && mouseY >=523 && mouseY <=538 && pantalla.equals("0")){
    dor3 = 255;
    dor4 = 191;
  }else{
    dor3 = 0;
    dor4 = 0;
  }

//CREDITOS
  if(pantalla.equals("2")){
    Creditos();
  }
  if(mouseX>=17 && mouseX<=81 && mouseY >=543 && mouseY <=560 && pantalla.equals("2")){
    dor5 = 255;
    dor6 = 191;
  }else{
    dor5 = 0;
    dor6 = 0;
  }

//INTRODUCCION
if(pantalla.equals("1")){
 Introduccion1();
}
//HISTORIA
if(pantalla.equals("3")){
  Historia1();
}
//CAMINO REFLEXIVO 1
if(pantalla.equals("4")){
  Historia3();
}
if(pantalla.equals("5")){
  Historia4();
}
if(pantalla.equals("6")){
  Historia5();
}
if(pantalla.equals("7")){
  Historia6();
}
if(pantalla.equals("8")){
  Historia7();
}
if(pantalla.equals("9")){
  Historia8();
}
if(pantalla.equals("10")){
  Historia9();
}
if(pantalla.equals("11")){
  Historia10();
}
if(pantalla.equals("12")){
  Final1();
}
if(pantalla.equals("13")){
  Historia11();
}
if(pantalla.equals("14")){
  Historia12();
}
if(pantalla.equals("15")){
  Historia13();
}
if(pantalla.equals("16")){
  Historia14();
}
if(pantalla.equals("17")){
  Historia15();
}
if(pantalla.equals("18")){
  Historia16();
}
if(pantalla.equals("19")){
  Final2();
}
if(pantalla.equals("20")){
  Historia17();
}
if(pantalla.equals("21")){
  Historia18();
}
if(pantalla.equals("22")){
  Historia19();
}
if(pantalla.equals("23")){
  Historia20();
}
if(pantalla.equals("24")){
  Historia21();
}
if(pantalla.equals("25")){
  Historia22();
}
if(pantalla.equals("26")){
  Final3();
}
if(pantalla.equals("27")){
  Historia23();
}
if(pantalla.equals("28")){
  Historia24();
}
if(pantalla.equals("29")){
  Historia25();
}
if(pantalla.equals("30")){
  Historia26();
}
if(pantalla.equals("31")){
  Historia27();
}
if(pantalla.equals("32")){
  Historia28();
}
if(pantalla.equals("33")){
  Historia29();
}
if(pantalla.equals("34")){
  Historia30();
}
if(pantalla.equals("35")){
  Historia31();
}
if(pantalla.equals("36")){
  Historia32();
}
if(pantalla.equals("37")){
  Final4();
}
if(pantalla.equals("38")){
  Historia33();
}
if(pantalla.equals("39")){
  Historia34();
}
if(pantalla.equals("40")){
  Final5();
}
}
void mousePressed(){
  if(mouseX>=325 && mouseX<=475 && mouseY >=475 && mouseY <=498 && pantalla.equals("0")){ // COMENZAR
    pantalla = "1"; 
    frameCount = 0;
  }
  if(mouseX>=360 && mouseX<=440 && mouseY >=523 && mouseY <=538 && pantalla.equals("0")){ //CREDITOS
    pantalla = "2";
  }
  if(mouseX>=17 && mouseX<= 81 && mouseY >=543 && mouseY <=560 && pantalla.equals("2")){ // VOLVER
    pantalla = "0";
  }
  if(mouseX >= 692 && mouseX <= 777 && mouseY >= 559 && mouseY <= 580 && pantalla.equals("3")){ // continuar
    linea2+=3;
    frameCount = 0;
  }
  if(linea2 > 7 && pantalla.equals("3")){
    pantalla = "4";
    frameCount = 0;
  }
  if(mouseX >= 679 && mouseX <= 780 && mouseY >= 563 && mouseY <= 580 && pantalla.equals("4") && frameCount > 30){ // hacia el centro
    pantalla = "5";
    frameCount = 0;
  }
  if(mouseX >= 691 && mouseX <= 797 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("5") && frameCount > 30){ // continuar2
    pantalla = "6";
    frameCount = 0;
  }
  if(mouseX >= 683 && mouseX <= 777 && mouseY >= 559 && mouseY <= 580 && pantalla.equals("6") && frameCount > 30){ // continuar 3
    linea2+=2;
  }
  if(linea2 > 14 && pantalla.equals("6")){
    pantalla = "7";
    frameCount = 0;
  }
  if(mouseX >= 656 && mouseX <= 783 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("7") && frameCount > 30){ // quiero sentarme
    pantalla = "8";
    frameCount = 0;
  }
  if(mouseX >= 691 && mouseX <= 797 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("8") && frameCount > 30){ // continuar 4
    linea2++;
  }
  if(linea2 > 16 && pantalla.equals("8")){
    pantalla = "9";
    frameCount = 0;
  }
  if(mouseX >= 731 && mouseX <= 769 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("9") && frameCount >30){ // nada
    pantalla = "10";
    frameCount = 0;
  }
  if(mouseX >= 656 && mouseX <= 783 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("10") && frameCount > 30){ // continuar 5
    linea2++;
  }
  if(linea2 > 18 && pantalla.equals("10")){
    pantalla = "11";
    frameCount = 0;
  }
  if(mouseX >= 691 && mouseX <= 797 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("11") && frameCount > 30){ // continuar 6
    linea2++;
  }
  if(linea2 > 19 && pantalla.equals("11")){
    pantalla = "27";
    frameCount = 0;
  }
  if(mouseX >= 369 && mouseX <= 432 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("12") && frameCount > 30){ // Reinicio
    pantalla = "3";
    linea2 = 0;
    linea3 = 0;
    linea4 = 0;
    linea5 = 0;
    linea6 = 0;
    linea7 = 0;
    frameCount = 0;
  }
  if(mouseX >= 14 && mouseX <= 204 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("7") && frameCount > 30){ // quiero seguir caminando
    pantalla = "13";
    frameCount = 0;
  }
  if(mouseX >= 691 && mouseX <= 797 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("13") && frameCount > 30){ // continuar 7
    linea3+=4;
    frameCount = 0;
  }
  if(linea3 > 7 && pantalla.equals("13")){
    pantalla = "14";
    frameCount = 0;
  }
  if(mouseX >= 691 && mouseX <= 797 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("14") && frameCount > 30){ // continuar 8
    linea3+=2;
    frameCount = 0;
  }
  if(linea3 > 9 && pantalla.equals("14")){
    pantalla = "15";
    frameCount = 0;
  }
  if(mouseX >= 637 && mouseX <= 762 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("15") && frameCount > 30){ // debe ser un dios
    pantalla = "16";
    frameCount = 0;
  }
  if(mouseX >= 691 && mouseX <= 797 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("16") && frameCount > 30){ // continuar 9
    pantalla = "17";
    frameCount = 0;
  }
  if(mouseX >= 691 && mouseX <= 797 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("17") && frameCount > 30){ // continuar 10
    linea6++;
    frameCount = 0;
  }
  if(linea6 > 1 && pantalla.equals("17")){
    pantalla = "18";
    frameCount = 0;
  }
  if(mouseX >= 691 && mouseX <= 797 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("18") && frameCount > 30){ // continuar 11
    pantalla = "19";
    frameCount = 30;
  }
  if(mouseX >= 369 && mouseX <= 432 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("19") && frameCount > 30){ // reinicio
    pantalla = "3";
    linea2 = 0;
    linea3 = 0;
    linea4 = 0;
    linea5 = 0;
    linea6 = 0;
    linea7 = 0;
    frameCount = 0;
  }      
  if(mouseX >= 16 && mouseX <= 123 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("4") && frameCount > 30){ // hacia la salida
    pantalla = "20";
    frameCount = 0;
  }
  if(mouseX >= 691 && mouseX <= 797 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("20") && frameCount > 30){ // continuar 12
    linea4+= 2;
    frameCount = 0;
  }
  if(linea4 > 7 && pantalla.equals("20")){
    pantalla = "21";
    frameCount = 0;
  }
  if(mouseX >= 717 && mouseX <= 782 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("21") && frameCount > 30){ // caminar
    pantalla = "13";
    frameCount = 0;
  }
  if(mouseX >= 31 && mouseX <= 166 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("15") && frameCount > 30){ // debe ser humano
    pantalla = "22";
    frameCount = 0;
  }
  if(mouseX >= 691 && mouseX <= 797 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("22") && frameCount > 30){ // continuar 13
    pantalla = "23";
    frameCount = 0;
  }
  if(mouseX >= 691 && mouseX <= 797 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("23") && frameCount > 30){ // continuar 14
    linea5+= 2;
    pantalla = "24";
    frameCount = 0;
  }
  if(mouseX >= 691 && mouseX <= 797 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("24") && frameCount > 30){ // continuat 15
    pantalla = "25";
    frameCount = 0;
  }
  if(mouseX >= 691 && mouseX <= 797 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("25") && frameCount > 30){ // continuar 16
    pantalla = "26";
    frameCount = 0;
  }
  if(mouseX >= 369 && mouseX <= 432 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("26") && frameCount > 30){ // reinico
    pantalla = "3";
    linea2 = 0;
    linea3 = 0;
    linea4 = 0;
    linea5 = 0;
    linea6 = 0;
    linea7 = 0;
    frameCount = 0;
  }
  if(mouseX >= 27 && mouseX <= 91 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("9") && frameCount > 30){ // caminar
    pantalla = "13";
    frameCount = 0;
  }
  if(mouseX >= 672 && mouseX <= 786 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("27") && frameCount > 30){ // no hacer nada
    pantalla = "28";
    frameCount = 0;
  }
  if(mouseX >= 691 && mouseX <= 797 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("28") && frameCount > 30){ // continuar
    linea2++;
    frameCount = 0;
  }
  if(linea2 > 21  && pantalla.equals("28")){ 
    pantalla = "12";
    frameCount = 0;
  }
  if(mouseX >= 30 && mouseX <= 130 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("27") && frameCount > 30){ // ¿mi redentor?
    pantalla = "16";
    frameCount = 0;
  }
  if(mouseX >= 21 && mouseX <= 75 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("21") && frameCount > 30){ // jugar
    pantalla = "29";
    frameCount = 0;
  }
  if(mouseX >= 691 && mouseX <= 797 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("29") && frameCount > 30){ // continuar
    linea7+=3;
    frameCount = 0;
  }
  if(linea7 > 8 &&  pantalla.equals("29")){
    pantalla = "30";
    frameCount = 0;
  }
  if(mouseX >= 691 && mouseX <= 797 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("30") && frameCount > 30){
    pantalla = "31";
    frameCount = 0;
  }
  if(mouseX >= 28 && mouseX <= 112 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("31") && frameCount > 30){ //¿mi redentor? 2
    pantalla = "22";
    frameCount = 0;
  }
  if(mouseX >= 688 && mouseX <= 770 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("31") && frameCount > 30){ // mi madre
    pantalla = "32";
    linea7+=3;
    frameCount = 0;
  }
  if(mouseX >= 691 && mouseX <= 797 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("32") && frameCount > 30){ // continuar
    pantalla = "33";
    frameCount = 0;
  }
  if(mouseX >= 691 && mouseX <= 797 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("33") && frameCount > 30){ // continuar
    pantalla = "34";
    frameCount = 0;
  }
  if(mouseX >= 692 && mouseX <= 762 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("34") && frameCount > 30){ // no luchar
    pantalla = "35";
    frameCount = 0;
  }
  if(mouseX >= 691 && mouseX <= 797 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("35") && frameCount > 30){
    pantalla = "36";
    frameCount = 0;
  }
  if(mouseX >= 691 && mouseX <= 797 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("36") && frameCount > 30){
    pantalla = "37";
    frameCount = 0;
  }
  if(mouseX >= 369 && mouseX <= 432 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("37") && frameCount > 30){ // reinico
    pantalla = "3";
    linea2 = 0;
    linea3 = 0;
    linea4 = 0;
    linea5 = 0;
    linea6 = 0;
    linea7 = 0;
    frameCount = 0;
  }
  if(mouseX >= 27 && mouseX <= 73 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("34") && frameCount > 30){ // luchar
    pantalla = "38";
    frameCount = 0;
  }
  if(mouseX >= 691 && mouseX <= 797 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("38") && frameCount > 30){ // continuar
    pantalla = "39";
    frameCount = 0;
  }
  if(mouseX >= 691 && mouseX <= 797 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("39") && frameCount > 30){ // continuar
    pantalla = "40";
    frameCount = 0;
  }
  if(mouseX >= 369 && mouseX <= 432 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("40") && frameCount > 30){ // reinico
    pantalla = "3";
    linea2 = 0;
    linea3 = 0;
    linea4 = 0;
    linea5 = 0;
    linea6 = 0;
    linea7 = 0;
    frameCount = 0;
  }
}
