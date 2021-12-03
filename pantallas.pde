void Titulo() { 
  textFont(titulo);
  background(255);
  image(fondo, width/2, height/2);
  image(marcotitulosup, width/2, 25);
  image(marcotituloinf, width/2, 587);
  fill(0);
  text("LA CASA DE ASTERION", width/2, height/5);
  textSize(30);
  boton(325, 475, 150, 23);
  text("COMENZAR", width/2, height-100);
  textSize(20);
  boton(360, 523, 100, 15);
  text("CREDITOS", width/2, height-60);
}
void Creditos() { 
  background(255);
  image(marcotitulosup, width/2, 25);
  image(marcotituloinf, width/2, 587);
  textFont(titulo);
  fill(0);
  textSize(50);
  text("Facultad de Artes UNLP", width/2, 100);
  textSize(20);
  text("Creado Por", width/2, 150);
  text("legajo", width/2, 250);
  textSize(30);
  text("Esteban Nicolas Aponte", width/2, 200);
  text("88222/9", width/2, 300);
  text("Taller Tecnologia Multimedial 1", width/2, 500);
  textSize(20);
  boton(17, 543, 64, 17);
  text("VOLVER", 50, height-40);
}
void Historia1() {
  text(historia[linea2], width/2, 60);
  text(historia[linea2+1], width/2, 80);
  text(historia[linea2+2], width/2, 100);
  image(camino[0], width/2, 355);
  textFont(titulo);
  textSize(20);
  boton2(691, 563, 77, 17);
  text("continuar", 730, height-20);
}
void Historia3() {
  image(camino[0], width/2, 355);
  text("Hoy me apetecé caminar, pero, ¿hacia donde?", width/2, 100);
  textFont(titulo);
  textSize(20);
  boton2(673, 564, 114, 16);
  text("hacia el centro", 730, height-20);
  boton2(16, 564, 108, 16);
  text("hacia la salida", 70, height-20);
}
void Historia4() {
  image(camino[1], width/2, 355);
  text("(caminas hacia el centro, y ves lo que parece ser letras \n escritas con sangre en la pared, recuerdas que no sabes escribir ni leer)", width/2, 80);
  textFont(titulo);
  textSize(20);
  boton2(691, 563, 77, 17);
  text("continuar", 730, height-20);
}
void Historia5() {
  image(camino[2], width/2, 355);
  text(historia[linea2], width/2, 80);
  text(historia[linea2+1], width/2, 100);
  textFont(titulo);
  textSize(20);
  boton2(691, 563, 77, 17);
  text("continuar", 730, height-20);
}
void Historia6() {
  image(camino[2], width/2, 355);
  text("¿que quiero hacer ahora?", width/2, 100);
  textFont(titulo);
  textSize(20);
  boton2(657, 563, 127, 17);
  text("quiero sentarme", 720, height-20);
  boton2(15, 563, 189, 17);
  text("quiero seguir caminando", 110, height-20);
}
void Historia7() {
  image(camino[3], width/2, 355);
  text(historia[linea2], width/2, 100);
  textFont(titulo);
  textSize(20);
  boton2(691, 563, 77, 17);
  text("continuar", 730, height-20);
}
void Historia8() {
  image(camino[3], width/2, 355);
  text("¿qué hago ahora?", width/2, 100);
  textFont(titulo);
  textSize(20);
  boton2(731, 563, 38, 17);
  text("nada", 750, height-20);
  boton2(27, 563, 64, 17);
  text("caminar", 60, height-20);
}
void Historia9() {
  image(camino[3], width/2, 355);
  text(historia[linea2], width/2, 100);
  textFont(titulo);
  textSize(20);
  boton2(691, 563, 77, 17);
  text("continuar", 730, height-20);
}
void Historia10() {
  image(camino[3], width/2, 355);
  text(historia[linea2], width/2, 100);
  textFont(titulo);
  textSize(20);
  boton2(691, 563, 77, 17);
  text("continuar", 730, height-20);
}
void Final1() {
  image(camino[3], width/2, 355);
  fill(255, 0, 0);
  text("(Has muerto de soledad)", width/2, 100);
  textFont(titulo);
  textSize(20);
  boton2(369, 563, 63, 17);
  text("reiniciar", width/2, height-20);
}
void Historia11() {
  image(camino[1], width/2, 355);
  text(historia2[linea3], width/2, 60);
  text(historia2[linea3+1], width/2, 80);
  text(historia2[linea3+2], width/2, 100);
  text(historia2[linea3+3], width/2, 120);
  textFont(titulo);
  textSize(20);
  fill(g1, g1, g1);
  boton2(691, 563, 77, 17);
  text("continuar", 730, height-20);
}
void Historia12() {
  image(camino[1], width/2, 355);
  text(historia2[linea3], width/2, 80);
  text(historia2[linea3+1], width/2, 100);
  textFont(titulo);
  textSize(20);
  boton2(691, 563, 77, 17);
  text("continuar", 730, height-20);
}
void Historia13() {
  image(camino[2], width/2, 355);
  text("¿como será mi redentor?", width/2, 100);
  textFont(titulo);
  textSize(20);
  boton2(637, 563, 125, 17);
  text("debe ser un dios", 700, height-20);
  boton2(31, 563, 135, 17);
  text("debe ser humano", 100, height-20);
}
void Historia14() {
  image(camino[4], width/2, 355);
  text("Mi redentor ha de ser un Dios, ellos son los únicos con \n la voluntad de poder librarme de aquí, quizás deba rezar", width/2, 80);
  textFont(titulo);
  textSize(20);
  boton2(691, 563, 77, 17);
  text("continuar", 730, height-20);
}
void Historia15() {
  float x = random(380, 420);
  float y = random(345, 365);
  image(camino[1], x, y);
  text(historia6[linea6], width/2, 80);
  textFont(titulo);
  textSize(20);
  boton2(691, 563, 77, 17);
  text("continuar", 730, height-20);
}
void Historia16() {
  image(camino[6], width/2, 355);
  text(historia6[linea6], width/2, 60);
  text(historia6[linea6+1], width/2, 80);
  text(historia6[linea6+2], width/2, 100);
  textFont(titulo);
  textSize(20);
  boton2(691, 563, 77, 17);
  text("continuar", 730, height-20);
}
void Final2() {
  image(camino[7], width/2, 355);
  fill(255, 0, 0);
  text("(Te has convertido en el guardián del Olimpo.)", width/2, 100);
  textFont(titulo);
  textSize(20);
  boton2(369, 563, 63, 17);
  text("reiniciar", width/2, height-20);
}
void Historia17() {
  image(camino[1], width/2, 355);
  text(historia3[linea4], width/2, 80);
  text(historia3[linea4+1], width/2, 100);
  textFont(titulo);
  textSize(20);
  boton2(691, 563, 77, 17);
  text("continuar", 730, height-20);
}
void Historia18() {
  image(camino[1], width/2, 355);
  text("¿qué hago ahora?", width/2, 100);
  textFont(titulo);
  textSize(20);
  boton2(697, 563, 63, 17);
  text("caminar", 730, height-20);
  boton2(21, 563, 54, 17);
  text("jugar", 60, height-20);
}
void Historia19() {
  image(camino[5], width/2, 355);
  text("Mi redentor ha de ser un Humano, pues fue un humano quien profetizo que llegaría mi redentor.", width/2, 100);
  textFont(titulo);
  textSize(20);
  boton2(691, 563, 77, 17);
  text("continuar", 730, height-20);
}
void Historia20() {
  image(camino[2], width/2, 355);
  text(historia4[linea5], width/2, 80);
  text(historia4[linea5+1], width/2, 100);
  textFont(titulo);
  textSize(20);
  boton2(691, 563, 77, 17);
  text("continuar", 730, height-20);
}
void Historia21() {
  text("(Anochece, al otro día 9 hombres y 9 mujeres entran en el laberinto, entre ellos, Teseo)", width/2, height/2);
  textFont(titulo);
  textSize(20);
  boton2(691, 563, 77, 17);
  text("continuar", 730, height-20);
}
void Historia22() {
  image(camino[8], width/2, 355);
  text(historia4[linea5], width/2, 80);
  text(historia4[linea5+1], width/2, 100);
  textFont(titulo);
  textSize(20);
  boton2(691, 563, 77, 17);
  text("continuar", 730, height-20);
}
void Final3() {
  text("¿Lo creerás, Ariadna? —dijo Teseo— El Minotauro apenas se defendió.", width/2, 100);
  fill(255, 0, 0);
  text("(Teseo te asesino)", width/2, height/2);
  textFont(titulo);
  textSize(20);
  boton2(369, 563, 63, 17);
  text("reiniciar", width/2, height-20);
}
void Historia23() {
  image(camino[3], width/2, 355);
  text("(.....)", width/2, 100);
  textFont(titulo);
  textSize(20);
  boton2(672, 563, 114, 17);
  text("no hacer nada", 730, height-20);
  boton2(30, 563, 100, 17);
  text("¿mi redentor?", 80, height-20);
}
void Historia24() {
  image(camino[3], width/2, 355);
  text(historia[linea2], width/2, 100);
  textFont(titulo);
  textSize(20);
  boton2(691, 563, 77, 17);
  text("continuar", 730, height-20);
}
void Historia25() {
  image(camino[2], width/2, 355);
  text(historia5[linea7], width/2, 60);
  text(historia5[linea7+1], width/2, 80);
  text(historia5[linea7+2], width/2, 100);
  textFont(titulo);
  textSize(20);
  boton2(691, 563, 77, 17);
  text("continuar", 730, height-20);
} 
void Historia26() {
  text("(Juegas a el otro Asterión)", width/2, height/2);
  textFont(titulo);
  textSize(20);
  boton2(691, 563, 77, 17);
  text("continuar", 730, height-20);
}
void Historia27() {
  image(camino[2], width/2, 355);
  text(historia5[linea7], width/2, 60);
  text(historia5[linea7+1], width/2, 80);
  text(historia5[linea7+2], width/2, 100);
  textFont(titulo);
  textSize(20);
  boton2(688, 563, 82, 17);
  text("¿mi madre?", 730, height-20);
  boton2(21, 563, 96, 17);
  text("¿mi redentor?", 70, height-20);
}
void Historia28() {
  image(camino[9], width/2, 355);
  text(historia5[linea7], width/2, 60);
  text(historia5[linea7+1], width/2, 80);
  text(historia5[linea7+2], width/2, 100);
  textFont(titulo);
  textSize(20);
  boton2(691, 563, 77, 17);
  text("continuar", 730, height-20);
}
void Historia29() {
  text("(Anochece, al otro día 9 hombres y 9 mujeres entran en el laberinto, entre ellos, Teseo)", width/2, height/2);
  textFont(titulo);
  textSize(20);
  boton2(691, 563, 77, 17);
  text("continuar", 730, height-20);
}
void Historia30() {
  text("(Quieres irte del laberinto, pero Teseo parece hostil, \n sin embargo, no quieres matarlo)", width/2, 60);
  image(camino[10], width/2, 355);
  textFont(titulo);
  textSize(20);
  boton2(692, 563, 70, 17);
  text("no luchar", 730, height-20);
  boton2(27, 563, 46, 17);
  text("luchar", 50, height-20);
}
void Historia31() {
  text("(no quieres luchar, pareces indeciso...)", width/2, 100);
  image(camino[10], width/2, 355);
  textFont(titulo);
  textSize(20);
  boton2(691, 563, 77, 17);
  text("continuar", 730, height-20);
}
void Historia32() {
  text("(desprevenido, Teseo te ataca mortalmente)", width/2, 100);
  image(camino[13], width/2, 355);
  textFont(titulo);
  textSize(20);
  boton2(691, 563, 77, 17);
  text("continuar", 730, height-20);
}
void Final4() {
  text("(con una ultima lagrima en los ojos, caes en el piso...)", width/2, 100);
  fill(255, 0, 0);
  text("(Teseo te asesino)", width/2, height/2);
  textFont(titulo);
  textSize(20);
  boton2(369, 563, 63, 17);
  text("reiniciar", width/2, height-20);
}
void Historia33() {
  text("(luchas contra Teseo)", width/2, 100);
  image(camino[11], width/2, 355);
  textFont(titulo);
  textSize(20);
  boton2(691, 563, 77, 17);
  text("continuar", 730, height-20);
}
void Historia34() {
  text("(matas a Teseo, cansado, abandonas el laberinto para siempre)", width/2, 100);
  image(camino[12], width/2, 355);
  textFont(titulo);
  textSize(20);
  boton2(691, 563, 77, 17);
  text("continuar", 730, height-20);
}
void Final5() {
  fill(255, 0, 0); 
  text("(Te fuiste del laberinto)", width/2, 100);
  image(camino[12], width/2, 355);
  textFont(titulo);
  textSize(20);
  boton2(369, 563, 63, 17);
  text("reiniciar", width/2, height-20);
}
