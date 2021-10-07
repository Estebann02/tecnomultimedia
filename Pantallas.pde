// pantalla 0
void Titulo(){ 
  textFont(titulo);
  background(255);
  image(fondo,width/2,height/2);
  image(marcotitulosup,width/2,25);
  image(marcotituloinf,width/2,587);
  fill(0);
  text("LA CASA DE ASTERION",width/2,height/5);
  textSize(30);
  fill(dor1,dor2,0);
  text("COMENZAR",width/2,height-100); //X = 325, 475 Y = 475, 498
  textSize(20);
  fill(dor3,dor4,0);
  text("CREDITOS",width/2,height-60); //X = 360, 440  Y = 523, 538
}
// pantalla 2
void Creditos(){ 
  background(255);
  image(marcotitulosup,width/2,25);
  image(marcotituloinf,width/2,587);
  textFont(titulo);
  fill(0);
  textSize(50);
  text("Facultad de Artes UNLP", width/2,100);
  textSize(20);
  text("Creado Por",width/2,150);
  text("legajo",width/2,250);
  textSize(30);
  text("Esteban Nicolas Aponte",width/2,200);
  text("88222/9",width/2,300);
  text("Taller Tecnologia Multimedial 1",width/2,500);
  textSize(20);
  fill(dor5,dor6,0);
  text("VOLVER",50,height-40); // X = 17 - 81 Y = 543 - 560
}
// pantalla 3
void Historia1(){
  text(historia[linea2],width/2,60);
  text(historia[linea2+1],width/2,80);
  text(historia[linea2+2],width/2,100);
  image(camino[0],width/2,355);
  textFont(titulo);
  textSize(20);
  fill(g1,g1,g1);
  text("continuar",730,height-20);
  if(mouseX >= 689 && mouseX <= 797 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("3")){ // continuar
  g1 = 255;
  }else{
  g1 = 111;
  }
}
// pantalla 4
void Historia3(){
  image(camino[0],width/2,355);
  text("Hoy me apetecé caminar, pero, ¿hacia donde?",width/2,100);
  textFont(titulo);
  textSize(20);
  fill(g2,g2,g2);
  text("hacia el centro",730,height-20);
  fill(g3,g3,g3);
  text("hacia la salida",70,height-20);
  if(mouseX >= 673 && mouseX <= 787 && mouseY >= 563 && mouseY <= 580 && pantalla.equals("4")){
    g2 = 255;
  }else{
    g2 = 111;
  }
  if(mouseX >= 16 && mouseX <= 123 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("4")){
    g3 = 255;
  }else{
    g3 = 111;
  }
}
// pantalla 5
void Historia4(){
  image(camino[1],width/2,355);
  text("(caminas hacia el centro, y ves lo que parece ser letras \n escritas con sangre en la pared, recuerdas que no sabes escribir ni leer)",width/2,80);
  textFont(titulo);
  textSize(20);
  fill(g1,g1,g1);
  text("continuar",730,height-20);
  if(mouseX >= 691 && mouseX <= 797 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("5")){ // continuar
  g1 = 255;
  }else{
  g1 = 111;
  }
}
// pantalla 6
void Historia5(){
  image(camino[2],width/2,355);
  text(historia[linea2],width/2,80);
  text(historia[linea2+1],width/2,100);
  textFont(titulo);
  textSize(20);
  fill(g1,g1,g1);
  text("continuar",730,height-20);
  if(mouseX >= 691 && mouseX <= 797 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("6")){ // continuar
  g1 = 255;
  }else{
  g1 = 111;
  }
}
// pantalla 7
void Historia6(){
  image(camino[2],width/2,355);
  text("¿que quiero hacer ahora?",width/2,100);
  textFont(titulo);
  textSize(20);
  fill(g2,g2,g2);
  text("quiero sentarme",720,height-20);
  fill(g3,g3,g3);
  text("quiero seguir caminando",110,height-20);
  if(mouseX >= 656 && mouseX <= 783 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("7")){
    g2 = 255;
  }else{
    g2 = 111;
  }
  if(mouseX >= 14 && mouseX <= 204 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("7")){
    g3 = 255;
  }else{
    g3 = 111;
  }
}
// pantalla 8
void Historia7(){
  image(camino[3],width/2,355);
  text(historia[linea2],width/2,100);
  textFont(titulo);
  textSize(20);
  fill(g1,g1,g1);
  text("continuar",730,height-20);
  if(mouseX >= 691 && mouseX <= 797 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("8")){ // continuar
  g1 = 255;
  }else{
  g1 = 111;
  }
}
// pantalla 9
void Historia8(){
  image(camino[3],width/2,355);
  text("¿qué hago ahora?",width/2,100);
  textFont(titulo);
  textSize(20);
  fill(g2,g2,g2);
  text("nada",750,height-20);
  fill(g3,g3,g3);
  text("caminar",60,height-20);
  if(mouseX >= 731 && mouseX <= 769 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("9")){
    g2 = 255;
  }else{
    g2 = 111;
  }
  if(mouseX >= 27 && mouseX <= 91 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("9")){
    g3 = 255;
  }else{
    g3 = 111;
  }
}
//pantalla 10
void Historia9(){
  image(camino[3],width/2,355);
  text(historia[linea2],width/2,100);
  textFont(titulo);
  textSize(20);
  fill(g1,g1,g1);
  text("continuar",730,height-20);
  if(mouseX >= 691 && mouseX <= 797 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("10")){ // continuar
  g1 = 255;
  }else{
  g1 = 111;
  }
}
//pantalla 11
void Historia10(){
  image(camino[3],width/2,355);
  text(historia[linea2],width/2,100);
  textFont(titulo);
  textSize(20);
  fill(g1,g1,g1);
  text("continuar",730,height-20);
  if(mouseX >= 691 && mouseX <= 797 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("11")){ // continuar
  g1 = 255;
  }else{
  g1 = 111;
  }
}
// pantalla 12
void Final1(){
  image(camino[3],width/2,355);
  fill(255,0,0);
  text("(Has muerto de soledad)",width/2,100);
  textFont(titulo);
  textSize(20);
  fill(g1,g1,g1);
  text("reiniciar",width/2,height-20);
  if(mouseX >= 369 && mouseX <= 432 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("12")){ // continuar
  g1 = 255;
  }else{
  g1 = 111;
  }
}
// pantalla 13
void Historia11(){
  image(camino[1],width/2,355);
  text(historia2[linea3],width/2,60);
  text(historia2[linea3+1],width/2,80);
  text(historia2[linea3+2],width/2,100);
  text(historia2[linea3+3],width/2,120);
  textFont(titulo);
  textSize(20);
  fill(g1,g1,g1);
  text("continuar",730,height-20);
  if(mouseX >= 691 && mouseX <= 797 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("13")){ // continuar
  g1 = 255;
  }else{
  g1 = 111;
  }
}
//pantala 14
void Historia12(){
  image(camino[1],width/2,355);
  text(historia2[linea3],width/2,80);
  text(historia2[linea3+1],width/2,100);
  textFont(titulo);
  textSize(20);
  fill(g1,g1,g1);
  text("continuar",730,height-20);
  if(mouseX >= 691 && mouseX <= 797 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("14")){ // continuar
  g1 = 255;
  }else{
  g1 = 111;
  }
}
//pantalla 15
void Historia13(){
  image(camino[2],width/2,355);
  text("¿como será mi redentor?",width/2,100);
  textFont(titulo);
  textSize(20);
  fill(g2,g2,g2);
  text("debe ser un dios",700,height-20);
  fill(g3,g3,g3);
  text("debe ser humano",100,height-20);
  if(mouseX >= 637 && mouseX <= 762 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("15")){
    g2 = 255;
  }else{
    g2 = 111;
  }
  if(mouseX >= 31 && mouseX <= 166 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("15")){
    g3 = 255;
  }else{
    g3 = 111;
  }
}
// pantalla 16
void Historia14(){
  image(camino[4],width/2,355);
  text("Mi redentor ha de ser un Dios, ellos son los únicos con \n la voluntad de poder librarme de aquí, quizás deba rezar",width/2,80);
  textFont(titulo);
  textSize(20);
  fill(g1,g1,g1);
  text("continuar",730,height-20);
  if(mouseX >= 691 && mouseX <= 797 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("16")){ // continuar
  g1 = 255;
  }else{
  g1 = 111;
  }
}
// pantalla 17
void Historia15(){
  image(camino[1],width/2,355);
  text(historia6[linea6],width/2,80);
  textFont(titulo);
  textSize(20);
  fill(g1,g1,g1);
  text("continuar",730,height-20);
  if(mouseX >= 691 && mouseX <= 797 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("17")){ // continuar
  g1 = 255;
  }else{
  g1 = 111;
  }
}
// pantalla 18
void Historia16(){
  image(camino[6],width/2,355);
  text(historia6[linea6],width/2,60);
  text(historia6[linea6+1],width/2,80);
  text(historia6[linea6+2],width/2,100);
  textFont(titulo);
  textSize(20);
  fill(g1,g1,g1);
  text("continuar",730,height-20);
  if(mouseX >= 691 && mouseX <= 797 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("18")){ // continuar
  g1 = 255;
  }else{
  g1 = 111;
  }
}
//pantalla 19
void Final2(){
  image(camino[7],width/2,355);
  fill(255,0,0);
  text("(Te has convertido en el guardián del Olimpo.)",width/2,100);
  textFont(titulo);
  textSize(20);
  fill(g1,g1,g1);
  text("reiniciar",width/2,height-20);
  if(mouseX >= 369 && mouseX <= 432 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("19")){ // continuar
  g1 = 255;
  }else{
  g1 = 111;
  }
}
//pantalla 20
void Historia17(){
  image(camino[1],width/2,355);
  text(historia3[linea4],width/2,80);
  text(historia3[linea4+1],width/2,100);
  textFont(titulo);
  textSize(20);
  fill(g1,g1,g1);
  text("continuar",730,height-20);
  if(mouseX >= 691 && mouseX <= 797 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("20")){ // continuar
  g1 = 255;
  }else{
  g1 = 111;
  }
}
//pantalla 21
void Historia18(){
  image(camino[1],width/2,355);
  text("¿qué hago ahora?",width/2,100);
  textFont(titulo);
  textSize(20);
  fill(g2,g2,g2);
  text("caminar",730,height-20);
  fill(g3,g3,g3);
  text("jugar",60,height-20);
  if(mouseX >= 697 && mouseX <= 760 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("21")){
    g2 = 255;
  }else{
    g2 = 111;
  }
  if(mouseX >= 21 && mouseX <= 75 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("21")){
    g3 = 255;
  }else{
    g3 = 111;
  }
}
//pantalla 22
void Historia19(){
  image(camino[5],width/2,355);
  text("Mi redentor ha de ser un Humano, pues fue un humano quien profetizo que llegaría mi redentor.",width/2,100);
  textFont(titulo);
  textSize(20);
  fill(g1,g1,g1);
  text("continuar",730,height-20);
  if(mouseX >= 691 && mouseX <= 797 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("22")){ // continuar
  g1 = 255;
  }else{
  g1 = 111;
  }
}
// pantalla 23
void Historia20(){
  image(camino[2],width/2,355);
  text(historia4[linea5],width/2,80);
  text(historia4[linea5+1],width/2,100);
  textFont(titulo);
  textSize(20);
  fill(g1,g1,g1);
  text("continuar",730,height-20);
  if(mouseX >= 691 && mouseX <= 797 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("23")){ // continuar
  g1 = 255;
  }else{
  g1 = 111;
  }
}
// pantalla 24
void Historia21(){
  text("(Anochece, al otro día 9 hombres y 9 mujeres entran en el laberinto, entre ellos, Teseo)", width/2,height/2);
  textFont(titulo);
  textSize(20);
  fill(g1,g1,g1);
  text("continuar",730,height-20);
  if(mouseX >= 691 && mouseX <= 797 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("24")){ // continuar
  g1 = 255;
  }else{
  g1 = 111;
  }
}
// pantalla 25
void Historia22(){
  image(camino[8],width/2,355);
  text(historia4[linea5],width/2,80);
  text(historia4[linea5+1],width/2,100);
  textFont(titulo);
  textSize(20);
  fill(g1,g1,g1);
  text("continuar",730,height-20);
  if(mouseX >= 691 && mouseX <= 797 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("25")){ // continuar
  g1 = 255;
  }else{
  g1 = 111;
  }
}
// pantalla 26
void Final3(){
  text("¿Lo creerás, Ariadna? —dijo Teseo— El Minotauro apenas se defendió.",width/2,100);
  fill(255,0,0);
  text("(Teseo te asesino)",width/2,height/2);
  textFont(titulo);
  textSize(20);
  fill(g1,g1,g1);
  text("reiniciar",width/2,height-20);
  if(mouseX >= 369 && mouseX <= 432 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("26")){ // continuar
  g1 = 255;
  }else{
  g1 = 111;
  }
}
// pantalla 27
void Historia23(){
  image(camino[3],width/2,355);
  text("(.....)",width/2,100);
  textFont(titulo);
  textSize(20);
  fill(g1,g1,g1);
  text("no hacer nada",730,height-20);
  if(mouseX >= 672 && mouseX <= 786 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("27")){ // continuar
  g1 = 255;
  }else{
  g1 = 111;
  }
  fill(g2,g2,g2);
  text("¿mi redentor?",80,height-20);
  if(mouseX >= 30 && mouseX <= 130 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("27")){ // continuar
  g2 = 255;
  }else{
  g2 = 111;
  }
}
// pantalla 28
void Historia24(){
  image(camino[3],width/2,355);
  text(historia[linea2],width/2,100);
  textFont(titulo);
  textSize(20);
  fill(g1,g1,g1);
  text("continuar",730,height-20);
  if(mouseX >= 691 && mouseX <= 797 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("28")){ // continuar
  g1 = 255;
  }else{
  g1 = 111;
  }
}
// pantalla 29
void Historia25(){
  image(camino[2],width/2,355);
  text(historia5[linea7],width/2,60);
  text(historia5[linea7+1],width/2,80);
  text(historia5[linea7+2],width/2,100);
  textFont(titulo);
  textSize(20);
  fill(g1,g1,g1);
  text("continuar",730,height-20);
  if(mouseX >= 691 && mouseX <= 797 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("29")){ // continuar
  g1 = 255;
  }else{
  g1 = 111;
  }
} 
// pantalla 30
void Historia26(){
  text("(Juegas a el otro Asterión)",width/2,height/2);
  textFont(titulo);
  textSize(20);
  fill(g1,g1,g1);
  text("continuar",730,height-20);
  if(mouseX >= 691 && mouseX <= 797 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("30")){ // continuar
  g1 = 255;
  }else{
  g1 = 111;
  }
}
// pantalla 31
void Historia27(){
  image(camino[2],width/2,355);
  text(historia5[linea7],width/2,60);
  text(historia5[linea7+1],width/2,80);
  text(historia5[linea7+2],width/2,100);
  textFont(titulo);
  textSize(20);
  fill(g1,g1,g1);
  text("¿mi madre?",730,height-20);
  if(mouseX >= 688 && mouseX <= 770 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("31")){ // continuar
  g1 = 255;
  }else{
  g1 = 111;
  }
  fill(g2,g2,g2);
  text("¿mi redentor?",70,height-20);
  if(mouseX >= 21 && mouseX <= 117 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("31")){ // continuar
  g2 = 255;
  }else{
  g2 = 111;
  }
}
// pantalla 32
void Historia28(){
  image(camino[9],width/2,355);
  text(historia5[linea7],width/2,60);
  text(historia5[linea7+1],width/2,80);
  text(historia5[linea7+2],width/2,100);
  textFont(titulo);
  textSize(20);
  fill(g1,g1,g1);
  text("continuar",730,height-20);
  if(mouseX >= 691 && mouseX <= 797 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("32")){ // continuar
  g1 = 255;
  }else{
  g1 = 111;
  }
}
// pantalla 33
void Historia29(){
  text("(Anochece, al otro día 9 hombres y 9 mujeres entran en el laberinto, entre ellos, Teseo)", width/2,height/2);
  textFont(titulo);
  textSize(20);
  fill(g1,g1,g1);
  text("continuar",730,height-20);
  if(mouseX >= 691 && mouseX <= 797 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("33")){ // continuar
  g1 = 255;
  }else{
  g1 = 111;
  }
}
// pantalla 34
void Historia30(){
  text("(Quieres irte del laberinto, pero Teseo parece hostil, \n sin embargo, no quieres matarlo)",width/2,60);
  image(camino[10],width/2,355);
  textFont(titulo);
  textSize(20);
  fill(g1,g1,g1);
  text("no luchar",730,height-20);
  if(mouseX >= 692 && mouseX <= 762 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("34")){ 
  g1 = 255;
  }else{
  g1 = 111;
  }
  fill(g2,g2,g2);
  text("luchar",50,height-20);
  if(mouseX >= 27 && mouseX <= 73 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("34")){ 
  g2 = 255;
  }else{
  g2 = 111;
  }
}
// pantalla 35
void Historia31(){
  text("(no quieres luchar, pareces indeciso...)",width/2,100);
  image(camino[10],width/2,355);
  textFont(titulo);
  textSize(20);
  fill(g1,g1,g1);
  text("continuar",730,height-20);
  if(mouseX >= 691 && mouseX <= 797 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("35")){ // continuar
  g1 = 255;
  }else{
  g1 = 111;
  }
}
// pantalla 36
void Historia32(){
  text("(desprevenido, Teseo te ataca mortalmente)",width/2,100);
  image(camino[13],width/2,355);
  textFont(titulo);
  textSize(20);
  fill(g1,g1,g1);
  text("continuar",730,height-20);
  if(mouseX >= 691 && mouseX <= 797 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("36")){ // continuar
  g1 = 255;
  }else{
  g1 = 111;
  }
}
// pantalla 37
void Final4(){
  text("(con una ultima lagrima en los ojos, caes en el piso...)",width/2,100);
  fill(255,0,0);
  text("(Teseo te asesino)",width/2,height/2);
  textFont(titulo);
  textSize(20);
  fill(g1,g1,g1);
  text("reiniciar",width/2,height-20);
  if(mouseX >= 369 && mouseX <= 432 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("37")){ // continuar
  g1 = 255;
  }else{
  g1 = 111;
  }
}
// pantalla 38
void Historia33(){
  text("(luchas contra Teseo)", width/2, 100);
  image(camino[11],width/2,355);
  textFont(titulo);
  textSize(20);
  fill(g1,g1,g1);
  text("continuar",730,height-20);
  if(mouseX >= 691 && mouseX <= 797 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("38")){ // continuar
  g1 = 255;
  }else{
  g1 = 111;
  }
}
// pantalla 39
void Historia34(){
  text("(matas a Teseo, cansado, abandonas el laberinto para siempre)", width/2, 100);
  image(camino[12],width/2,355);
  textFont(titulo);
  textSize(20);
  fill(g1,g1,g1);
  text("continuar",730,height-20);
  if(mouseX >= 691 && mouseX <= 797 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("39")){ // continuar
  g1 = 255;
  }else{
  g1 = 111;
  }
}
// pantallla 40
void Final5(){
  fill(255,0,0); 
  text("(Te fuiste del laberinto)",width/2,100);
  image(camino[12],width/2,355);
  textFont(titulo);
  textSize(20);
  fill(g1,g1,g1);
  text("reiniciar",width/2,height-20);
  if(mouseX >= 369 && mouseX <= 432 && mouseY >= 560 && mouseY <= 580 && pantalla.equals("40")){ // continuar
  g1 = 255;
  }else{
  g1 = 111;
  }
}
