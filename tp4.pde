String pantalla;
PImage fondo, credito;
PImage marcotitulosup, marcotituloinf;
PImage intro1, intro2, intro3, intro4, intro5;
PFont titulo, caminos;
int dor1, dor2, dor3, dor4, dor5, dor6;
String[] intro, historia, historia2, historia3, historia4, historia5, historia6;
int linea, linea2, linea3, linea4, linea5, linea6, linea7;
int g1, g2, g3;
PImage [] camino = new PImage[14];

void setup() {
  size(800, 600);
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
  caminos = createFont("Romanica.ttf", 30);
  titulo = createFont("DIOGENES.ttf", 50);
  for (int c=0; c<camino.length; c++) {
    camino[c] = loadImage("camino"+c+".png");
  }
}

void draw() {
  background(0);
  println(mouseX, mouseY);
  //println(frameCount);
  println(pantalla);
  println(linea6);
  //println(linea3);
  fill(255);
  textFont(caminos);
  background(0);
  textSize(15);

  if (pantalla.equals("0")) {
    Titulo();
  } else if (pantalla.equals("1")) {
    Introduccion1();
  } else if (pantalla.equals("2")) {
    Creditos();
  } else if (pantalla.equals("3")) {
    Historia1();
  } else if (pantalla.equals("4")) {
    Historia3();
  } else if (pantalla.equals("5")) {
    Historia4();
  } else if (pantalla.equals("6")) {
    Historia5();
  } else if (pantalla.equals("7")) {
    Historia6();
  } else if (pantalla.equals("8")) {
    Historia7();
  } else if (pantalla.equals("9")) {
    Historia8();
  } else if (pantalla.equals("10")) {
    Historia9();
  } else if (pantalla.equals("11")) {
    Historia10();
  } else if (pantalla.equals("12")) {
    Final1();
  } else if (pantalla.equals("13")) {
    Historia11();
  } else if (pantalla.equals("14")) {
    Historia12();
  } else if (pantalla.equals("15")) {
    Historia13();
  } else if (pantalla.equals("16")) {
    Historia14();
  } else if (pantalla.equals("17")) {
    Historia15();
  } else if (pantalla.equals("18")) {
    Historia16();
  } else if (pantalla.equals("19")) {
    Final2();
  } else if (pantalla.equals("20")) {
    Historia17();
  } else if (pantalla.equals("21")) {
    Historia18();
  } else if (pantalla.equals("22")) {
    Historia19();
  } else if (pantalla.equals("23")) {
    Historia20();
  } else if (pantalla.equals("24")) {
    Historia21();
  } else if (pantalla.equals("25")) {
    Historia22();
  } else if (pantalla.equals("26")) {
    Final3();
  } else if (pantalla.equals("27")) {
    Historia23();
  } else if (pantalla.equals("28")) {
    Historia24();
  } else if (pantalla.equals("29")) {
    Historia25();
  } else if (pantalla.equals("30")) {
    Historia26();
  } else if (pantalla.equals("31")) {
    Historia27();
  } else if (pantalla.equals("32")) {
    Historia28();
  } else if (pantalla.equals("33")) {
    Historia29();
  } else if (pantalla.equals("34")) {
    Historia30();
  } else if (pantalla.equals("35")) {
    Historia31();
  } else if (pantalla.equals("36")) {
    Historia32();
  } else if (pantalla.equals("37")) {
    Final4();
  } else if (pantalla.equals("38")) {
    Historia33();
  } else if (pantalla.equals("39")) {
    Historia34();
  } else if (pantalla.equals("40")) {
    Final5();
  }
}

void mousePressed() {
  if (botonsito(mouseX, mouseY, 325, 475, 150, 23) && pantalla.equals("0") && frameCount > 10) {
    pantalla = "3";
    frameCount = 0;
  }
  if (botonsito(mouseX, mouseY, 360, 523, 100, 15) && pantalla.equals("0") && frameCount > 10) {
    pantalla = "2";
    frameCount = 0;
  }
  if (botonsito(mouseX, mouseY, 17, 543, 64, 17) && pantalla.equals("2") && frameCount > 10) {
    pantalla = "0";
    frameCount = 0;
  }
  if (botonsito(mouseX, mouseY, 691, 563, 77, 17 ) && pantalla.equals("3") && frameCount > 10) {
    linea2+=3;
    frameCount = 0;
  }
  if (linea2 > 7 && pantalla.equals("3")) {
    pantalla = "4";
    frameCount = 0;
  }
  if (botonsito(mouseX, mouseY, 673, 563, 114, 17 ) && pantalla.equals("4") && frameCount > 10) {
    pantalla = "5";
    frameCount = 0;
  }
  if (botonsito(mouseX, mouseY, 16, 563, 108, 17 ) && pantalla.equals("4") && frameCount > 10) {
    pantalla = "20";
    frameCount = 0;
  }
  if (botonsito(mouseX, mouseY, 691, 563, 77, 17 ) && pantalla.equals("5") && frameCount > 10) {
    pantalla = "6";
    frameCount = 0;
  }
  if (botonsito(mouseX, mouseY, 691, 563, 77, 17 ) && pantalla.equals("6") && frameCount > 10) {
    linea2+=2;
    frameCount = 0;
  }
  if (linea2 > 14 && pantalla.equals("6")) {
    pantalla = "7";
    frameCount = 0;
  }
  if (botonsito(mouseX, mouseY, 657, 563, 127, 17 ) && pantalla.equals("7") && frameCount > 10) {
    pantalla = "8";
    frameCount = 0;
  }
  if (botonsito(mouseX, mouseY, 15, 563, 189, 17 ) && pantalla.equals("7") && frameCount > 10) {
    pantalla = "13";
    frameCount = 0;
  }
  if (botonsito(mouseX, mouseY, 691, 563, 77, 17 ) && pantalla.equals("8") && frameCount > 10) {
    linea2+=2;
    frameCount = 0;
  }
  if (linea2 > 16 && pantalla.equals("8")) {
    pantalla = "9";
    frameCount = 0;
  }
  if (botonsito(mouseX, mouseY, 731, 563, 38, 17) && pantalla.equals("9") && frameCount > 10) {
    pantalla = "10";
    frameCount = 0;
  }
  if (botonsito(mouseX, mouseY, 27, 563, 64, 17) && pantalla.equals("9") && frameCount > 10) {
    pantalla = "13";
    frameCount = 0;
  }
  if (botonsito(mouseX, mouseY, 691, 563, 77, 17 ) && pantalla.equals("10") && frameCount > 10) {
    linea2++;
    frameCount = 0;
  }
  if (linea2 > 18 && pantalla.equals("10")) {
    pantalla = "11";
    frameCount = 0;
  }
  if (botonsito(mouseX, mouseY, 691, 563, 77, 17 ) && pantalla.equals("11") && frameCount > 10) {
    linea2++;
    frameCount = 0;
  }
  if (linea2 > 19 && pantalla.equals("11")) {
    pantalla = "27";
    frameCount = 0;
  }
  if (botonsito(mouseX, mouseY, 369, 563, 63, 17 ) && pantalla.equals("12") && frameCount > 10) {
    pantalla = "3";
    linea2 = 0;
    linea3 = 0;
    linea4 = 0;
    linea5 = 0;
    linea6 = 0;
    linea7 = 0;
    frameCount = 0;
  }
  if (botonsito(mouseX, mouseY, 691, 563, 77, 17 ) && pantalla.equals("13") && frameCount > 10) {
    linea3+=4;
    frameCount = 0;
  }
  if (linea3 > 7 && pantalla.equals("13")) {
    pantalla = "14";
    frameCount = 0;
  }
  if (botonsito(mouseX, mouseY, 691, 563, 77, 17 ) && pantalla.equals("14") && frameCount > 10) {
    linea3+=2;
    frameCount = 0;
  }
  if (linea3 > 9 && pantalla.equals("14")) {
    pantalla = "15";
    frameCount = 0;
  }
  if (botonsito(mouseX, mouseY, 637, 563, 125, 17 ) && pantalla.equals("15") && frameCount > 10) {
    pantalla = "16";
    frameCount = 0;
  }
  if (botonsito(mouseX, mouseY, 31, 563, 135, 17 ) && pantalla.equals("15") && frameCount > 10) {
    pantalla = "22";
    frameCount = 0;
  }
  if (botonsito(mouseX, mouseY, 691, 563, 77, 17 ) && pantalla.equals("16") && frameCount > 10) {
    pantalla = "17";
    frameCount = 0;
  }
  if (botonsito(mouseX, mouseY, 691, 563, 77, 17 ) && pantalla.equals("17") && frameCount > 10) {
    linea6++;
    frameCount = 0;
  }
  if (linea6 > 1 && pantalla.equals("17")) {
    pantalla = "18";
    frameCount = 0;
  }
  if (botonsito(mouseX, mouseY, 691, 563, 77, 17 ) && pantalla.equals("18") && frameCount > 10) {
    pantalla = "19";
    frameCount = 30;
  }
  if (botonsito(mouseX, mouseY, 369, 563, 63, 17) && pantalla.equals("19") && frameCount > 10) {
    pantalla = "3";
    linea2 = 0;
    linea3 = 0;
    linea4 = 0;
    linea5 = 0;
    linea6 = 0;
    linea7 = 0;
    frameCount = 0;
  }
  if (botonsito(mouseX, mouseY, 691, 563, 77, 17 ) && pantalla.equals("20") && frameCount > 10) {
    linea4+= 2;
    frameCount = 0;
  }
  if (linea4 > 7 && pantalla.equals("20")) {
    pantalla = "21";
    frameCount = 0;
  }
  if (botonsito(mouseX, mouseY, 697, 563, 63, 17 ) && pantalla.equals("21") && frameCount > 10) {
    pantalla = "13";
    frameCount = 0;
  }
  if (botonsito(mouseX, mouseY, 21, 563, 54, 17 ) && pantalla.equals("21") && frameCount > 10) {
    pantalla = "29";
    frameCount = 0;
  }
  if (botonsito(mouseX, mouseY, 691, 563, 77, 17 ) && pantalla.equals("22") && frameCount > 10) {
    pantalla = "23";
    frameCount = 0;
  }
  if (botonsito(mouseX, mouseY, 691, 563, 77, 17 ) && pantalla.equals("23") && frameCount > 10) {
    linea5+= 2;
    pantalla = "24";
    frameCount = 0;
  }
  if (botonsito(mouseX, mouseY, 691, 563, 77, 17 ) && pantalla.equals("24") && frameCount > 10) {
    pantalla = "25";
    frameCount = 0;
  }
  if (botonsito(mouseX, mouseY, 691, 563, 77, 17 ) && pantalla.equals("25") && frameCount > 10) {
    pantalla = "26";
    frameCount = 0;
  }
  if (botonsito(mouseX, mouseY, 369, 563, 63, 17 ) && pantalla.equals("26") && frameCount > 10) {
    pantalla = "3";
    linea2 = 0;
    linea3 = 0;
    linea4 = 0;
    linea5 = 0;
    linea6 = 0;
    linea7 = 0;
    frameCount = 0;
  }
  if (botonsito(mouseX, mouseY, 672, 563, 114, 17 ) && pantalla.equals("27") && frameCount > 10) {
    pantalla = "28";
    frameCount = 0;
  }
  if (botonsito(mouseX, mouseY, 30, 563, 100, 17) && pantalla.equals("27") && frameCount > 10) {
    pantalla = "16";
    frameCount = 0;
  }
  if (botonsito(mouseX, mouseY, 691, 563, 77, 17 ) && pantalla.equals("28") && frameCount > 10) {
    linea2++;
    frameCount = 0;
  }
  if (linea2 > 21  && pantalla.equals("28")) { 
    pantalla = "12";
    frameCount = 0;
  }
  if (botonsito(mouseX, mouseY, 691, 563, 77, 17 ) && pantalla.equals("29") && frameCount > 10) {
    linea7+=3;
    frameCount = 0;
  }
  if (linea7 > 8 &&  pantalla.equals("29")) {
    pantalla = "30";
    frameCount = 0;
  }
  if (botonsito(mouseX, mouseY, 691, 563, 77, 17 ) && pantalla.equals("30") && frameCount > 10) {
    pantalla = "31";
    frameCount = 0;
  }
  if (botonsito(mouseX, mouseY, 688, 563, 82, 17 ) && pantalla.equals("31") && frameCount > 10) {
    pantalla = "32";
    frameCount = 0;
  }
  if (botonsito(mouseX, mouseY, 21, 563, 96, 17 ) && pantalla.equals("31") && frameCount > 10) {
    pantalla = "22";
    linea7+=3;
    frameCount = 0;
  }
  if (botonsito(mouseX, mouseY, 691, 563, 77, 17 ) && pantalla.equals("32") && frameCount > 10) {
    pantalla = "33";
    frameCount = 0;
  }
  if (botonsito(mouseX, mouseY, 691, 563, 77, 17 ) && pantalla.equals("33") && frameCount > 10) {
    pantalla = "34";
    frameCount = 0;
  }
  if (botonsito(mouseX, mouseY, 692, 563, 70, 17 ) && pantalla.equals("34") && frameCount > 10) {
    pantalla = "35";
    frameCount = 0;
  }
  if (botonsito(mouseX, mouseY, 27, 563, 46, 17 ) && pantalla.equals("34") && frameCount > 10) {
    pantalla = "38";
    frameCount = 0;
  }
  if (botonsito(mouseX, mouseY, 691, 563, 77, 17 ) && pantalla.equals("35") && frameCount > 10) {
    pantalla = "36";
    frameCount = 0;
  }
  if (botonsito(mouseX, mouseY, 691, 563, 77, 17 ) && pantalla.equals("36") && frameCount > 10) {
    pantalla = "37";
    frameCount = 0;
  }
  if (botonsito(mouseX, mouseY, 369, 563, 63, 17 ) && pantalla.equals("37") && frameCount > 10) {
    pantalla = "3";
    linea2 = 0;
    linea3 = 0;
    linea4 = 0;
    linea5 = 0;
    linea6 = 0;
    linea7 = 0;
    frameCount = 0;
  }
  if (botonsito(mouseX, mouseY, 691, 563, 77, 17 ) && pantalla.equals("38") && frameCount > 10) {
    pantalla = "39";
    frameCount = 0;
  }
  if (botonsito(mouseX, mouseY, 691, 563, 77, 17 ) && pantalla.equals("39") && frameCount > 10) {
    pantalla = "40";
    frameCount = 0;
  }
  if (botonsito(mouseX, mouseY, 369, 563, 63, 17 ) && pantalla.equals("40") && frameCount > 10) {
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
