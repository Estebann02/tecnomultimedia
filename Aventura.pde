class Aventura {
  String camino;
  Pantallas p;
  Botones b;
  Asterion a;
  Hud h;
  Juego wanchope;


  Aventura() {
    p = new Pantallas();
    b = new Botones();
    a = new Asterion();
    h = new Hud();
    wanchope = new Juego();
    textAlign(CENTER);
    imageMode(CENTER);
    camino = "0";
  }
  void dibujarAventura() {
    cambioLinea();
    println("camino"+camino);
    //println(mouseX, mouseY);
    println("linea"+p.linea);
    println("juego"+wanchope.pantalla);
    fill(255);
    textFont(p.caminos);
    textSize(15);
    if (camino.equals("0")) {
      p.Titulo();
    } else if (camino.equals("1")) {
      p.Introduccion();
    } else if (camino.equals("2")) {
      p.Creditos();
    } else if (camino.equals("3")) {
      p.Historia1(p.Historia[p.linea+10]+"\n"+p.Historia[p.linea+11]+"\n"+p.Historia[p.linea+12], p.camino[0]);
    } else if (camino.equals("4")) {
      p.Historia2("Hoy me apetecé caminar, pero, ¿hacia donde?", 100, p.camino[0], 673, 564, 114, 16, "hacia el centro", 730, height-20, 16, 564, 108, 16, "hacia la salida", 70);
    } else if (camino.equals("5")) {
      p.Historia1("(caminas hacia el centro, y ves lo que parece ser letras \n escritas con sangre en la pared, recuerdas que no sabes escribir ni leer)", p.camino[1]);
    } else if (camino.equals("6")) {
      p.Historia1(p.Historia[p.linea+19]+"\n"+p.Historia[p.linea+20], p.camino[2]);
    } else if (camino.equals("7")) {
      p.Historia2("¿que quiero hacer ahora?", 100, p.camino[2], 657, 563, 127, 17, "quiero sentarme", 720, height-20, 15, 563, 189, 17, "quiero seguir caminando", 110);
    } else if (camino.equals("8")) {
      p.Historia1(p.Historia[p.linea+25], p.camino[3]);
    } else if (camino.equals("9")) {
      p.Historia2("¿qué hago ahora?", 100, p.camino[3], 731, 563, 38, 17, "nada", 750, height-20, 27, 563, 64, 17, "caminar", 60 );
    } else if (camino. equals("10")) {
      p.Historia3("(Has muerto de soledad)", p.camino[3]);
    } else if (camino.equals("11")) {
      p.Historia1(p.Historia[p.linea+32]+"\n"+p.Historia[p.linea+33]+"\n"+p.Historia[p.linea+34]+"\n"+p.Historia[p.linea+35], p.camino[1]);
    } else if (camino.equals("12")) {
      p.Historia1(p.Historia[p.linea+40]+"\n"+p.Historia[p.linea+41], p.camino[1]);
    } else if (camino.equals("13")) {
      p.Historia2("¿como será mi redentor?", 100, p.camino[2], 637, 563, 125, 17, "debe ser un dios", 700, height-20, 31, 563, 135, 17, "debe ser humano", 100);
    } else if (camino.equals("14")) {
      p.Historia1("Mi redentor ha de ser un Dios, ellos son los únicos con \n la voluntad de poder librarme de aquí, quizás deba rezar", p.camino[4]);
    } else if (camino.equals("15")) {
      p.Historia4(p.Historia[p.linea+69], p.camino[1], 691, 563, 77, 17);
    } else if (camino.equals("16")) {
      p.Historia1(p.Historia[p.linea+71]+"\n"+p.Historia[p.linea+72]+"\n"+p.Historia[p.linea+73], p.camino[6]);
    } else if (camino.equals("17")) {
      p.Historia3("(Te has convertido en el guardián del Olimpo.)", p.camino[7]);
    } else if (camino.equals("18")) {
      p.Historia1(p.Historia[p.linea+42]+"\n"+p.Historia[p.linea+43], p.camino[1]);
    } else if (camino.equals("19")) {
      p.Historia2("¿qué hago ahora?", 100, p.camino[1], 697, 563, 63, 17, "caminar", 730, height-20, 21, 563, 54, 17, "jugar", 60);
    } else if (camino.equals("20")) {
      p.Historia1("Mi redentor ha de ser un Humano, pues fue un humano quien profetizo que llegaría mi redentor.", p.camino[5]);
    } else if (camino.equals("21")) {
      p.Historia1(p.Historia[p.linea+50]+"\n"+p.Historia[p.linea+51], p.camino[2]);
    } else if (camino.equals("22")) {
      p.Historia5("(Anochece, al otro día 9 hombres y 9 mujeres entran en el laberinto, entre ellos, Teseo)", height/2);
    } else if (camino.equals("23")) {
      p.Historia1(p.Historia[p.linea+52]+"\n"+p.Historia[p.linea+53], p.camino[8]);
    } else if (camino.equals("24")) {
      p.Historia6("¿Lo creerás, Ariadna? —dijo Teseo— El Minotauro apenas se defendió.");
    } else if (camino.equals("25")) {
      p.Historia2("(.....)", 100, p.camino[3], 672, 563, 114, 17, "no hacer nada", 730, height-20, 30, 563, 100, 17, "¿mi redentor?", 80);
    } else if (camino.equals("26")) {
      p.Historia1(p.Historia[p.linea+30], p.camino[3]);
    } else if (camino.equals("27")) {
      p.Historia1(p.Historia[p.linea+54]+"\n"+p.Historia[p.linea+55]+"\n"+p.Historia[p.linea+56], p.camino[2]);
    } else if (camino.equals("28")) {
      p.Historia5("(Juegas a el otro Asterión)", height/2);
    } else if (camino.equals("29")) {
      p.Historia2(p.Historia[p.linea+63]+"\n"+p.Historia[p.linea+64]+"\n"+p.Historia[p.linea+65], 60, p.camino[2], 688, 563, 82, 17, "¿mi madre?", 730, height-20, 21, 563, 96, 17, "¿mi redentor?", 70);
    } else if (camino.equals("30")) {
      p.Historia1(p.Historia[p.linea+66]+"\n"+p.Historia[p.linea+67]+"\n"+p.Historia[p.linea+68], p.camino[9]);
    } else if (camino.equals("31")) {
      p.Historia5("(Anochece, al otro día 9 hombres y 9 mujeres entran en el laberinto, entre ellos, Teseo)", height/2);
    } else if (camino.equals("32")) {
      p.Historia2("(Quieres irte del laberinto, pero Teseo parece hostil, \n sin embargo, no quieres matarlo)", 60, p.camino[10], 692, 563, 70, 17, "no luchar", 730, height-20, 27, 563, 46, 17, "luchar", 50);
    } else if (camino.equals("33")) {
      p.Historia1("(no quieres luchar, pareces indeciso...)", p.camino[10]);
    } else if (camino.equals("34")) {
      p.Historia1("(desprevenido, Teseo te ataca mortalmente)", p.camino[13]);
    } else if (camino.equals("35")) {
      p.Historia6("(con una ultima lagrima en los ojos, caes en el piso...)");
    } else if (camino.equals("36")) {
      wanchope.dibujarJuego();
    } else if (camino.equals("37")) {
      p.Historia1("(mataste a Teseo, cansado, abandonas el laberinto para siempre)", p.camino[12]);
    } else if (camino.equals("38")) {
      p.Historia3("(Te fuiste del laberinto)", p.camino[12]);
    } else if (camino.equals("39")) {
      p.Historia1(p.Historia[p.linea+27], p.camino[3]);
    }
    if (frameCount > 1800 && camino.equals("1")) {
      camino = "3";
      p.linea = 0;
    }
  }

  void avanzar() {
    if (b.botonsito(mouseX, mouseY, 325, 475, 150, 23) && camino.equals("0")) {
      camino = "1";
      frameCount = 0;
    } else if (b.botonsito(mouseX, mouseY, 360, 523, 100, 15) && camino.equals("0")) {
      camino = "2";
    } else if (b.botonsito(mouseX, mouseY, 17, 543, 64, 17) && camino.equals("2")) {
      camino = "0";
    } else if (b.botonsito(mouseX, mouseY, 691, 563, 77, 17) && camino.equals("3")) { // continuar
      p.linea+=3;
    } else if (b.botonsito(mouseX, mouseY, 673, 564, 114, 16) && camino.equals("4")) {
      camino = "5";
    } else if (b.botonsito(mouseX, mouseY, 16, 564, 108, 16) && camino.equals("4")) {
      camino = "18";
    } else if (b.botonsito(mouseX, mouseY, 691, 563, 77, 17 )&& camino.equals("5")) {
      camino = "6";
    } else if (b.botonsito(mouseX, mouseY, 691, 563, 77, 17 )&& camino.equals("6")) {
      p.linea+=2;
    } else if (b.botonsito(mouseX, mouseY, 657, 563, 127, 17 )&& camino.equals("7")) {
      camino = "8";
    } else if (b.botonsito(mouseX, mouseY, 15, 563, 189, 17 )&& camino.equals("7")) {
      camino = "11";
    } else if (b.botonsito(mouseX, mouseY, 691, 563, 77, 17) && camino.equals("8")) {
      p.linea++;
    } else if (b.botonsito(mouseX, mouseY, 731, 563, 38, 17) && camino.equals("9")) {
      camino = "39";
    } else if (b.botonsito(mouseX, mouseY, 27, 563, 64, 17) && camino.equals("9")) {
      camino = "11";
    } else if (b.botonsito(mouseX, mouseY, 691, 563, 77, 17) && camino.equals("11")) {
      p.linea+=4;
    } else if (b.botonsito(mouseX, mouseY, 691, 563, 77, 17) && camino.equals("12")) {
      camino = "13";
    } else if (b.botonsito(mouseX, mouseY, 637, 563, 125, 17) && camino.equals("13")) {
      camino = "14";
    } else if (b.botonsito(mouseX, mouseY, 31, 563, 135, 17) && camino.equals("13")) {
      camino = "20";
    } else if (b.botonsito(mouseX, mouseY, 691, 563, 77, 17) && camino.equals("14")) { // 
      camino = "15";
    } else if (b.botonsito(mouseX, mouseY, 691, 563, 77, 17) && camino.equals("15")) { //
      p.linea++;
    } else if (b.botonsito(mouseX, mouseY, 691, 563, 77, 17) && camino.equals("16")) { // 
      camino = "17";
    } else if (b.botonsito(mouseX, mouseY, 697, 563, 63, 17) && camino.equals("18")) { // 
      p.linea+=2;
    } else if (b.botonsito(mouseX, mouseY, 21, 563, 54, 17) && camino.equals("19")) { //   
      camino = "27";
    } else if (b.botonsito(mouseX, mouseY, 697, 563, 63, 17) && camino.equals("19")) { //  
      camino = "11";
    } else if (b.botonsito(mouseX, mouseY, 691, 563, 77, 17) && camino.equals("20")) { //
      camino = "21";
    } else if (b.botonsito(mouseX, mouseY, 691, 563, 77, 17) && camino.equals("21")) { // 
      camino = "22";
    } else if (b.botonsito(mouseX, mouseY, 691, 563, 77, 17) && camino.equals("22")) { // 
      camino = "23";
    } else if (b.botonsito(mouseX, mouseY, 691, 563, 77, 17) && camino.equals("23")) { // 
      camino = "24";
    } else if (b.botonsito(mouseX, mouseY, 672, 563, 114, 17) && camino.equals("25")) { // 
      camino = "26";
    } else if (b.botonsito(mouseX, mouseY, 30, 563, 100, 17) && camino.equals("25")) { // 
      camino = "14";
    } else if (b.botonsito(mouseX, mouseY, 691, 563, 77, 17) && camino.equals("26")) { // 
      p.linea++;
    } else if (b.botonsito(mouseX, mouseY, 691, 563, 77, 17) && camino.equals("27")) { // 
      p.linea+=3;
    } else if (b.botonsito(mouseX, mouseY, 691, 563, 77, 17) && camino.equals("28")) { // 
      camino = "29";
    } else if (b.botonsito(mouseX, mouseY, 688, 563, 82, 17) && camino.equals("29")) { // 
      camino = "30";
    } else if (b.botonsito(mouseX, mouseY, 21, 563, 96, 17) && camino.equals("29")) { // 
      camino = "20";
    } else if (b.botonsito(mouseX, mouseY, 691, 563, 77, 17) && camino.equals("30")) { //
      camino = "31";
    } else if (b.botonsito(mouseX, mouseY, 691, 563, 77, 17) && camino.equals("31")) { // 
      camino = "32";
    } else if (b.botonsito(mouseX, mouseY, 692, 563, 70, 17) && camino.equals("32")) { // 
      camino = "33";
    } else if (b.botonsito(mouseX, mouseY, 27, 563, 46, 17) && camino.equals("32")) { // 
      frameCount = 0;
      camino = "36";
    } else if (b.botonsito(mouseX, mouseY, 691, 563, 77, 17) && camino.equals("33")) { // 
      camino = "34";
    } else if (b.botonsito(mouseX, mouseY, 691, 563, 77, 17) && camino.equals("34")) { // 
      camino = "35";
    } else if (camino.equals("36") && wanchope.pantalla.equals("ganar")) { // 
      camino = "37";
    } else if (b.botonsito(mouseX, mouseY, 691, 563, 77, 17) && camino.equals("37")) { // 
      camino = "38";
    } else if (b.botonsito(mouseX, mouseY, 691, 563, 77, 17) && camino.equals("39")) { // 
      camino = "25";
    } else if (b.botonsito(mouseX, mouseY, 369, 563, 63, 17) && (camino.equals("10") || camino.equals("17") || camino.equals("24") || camino.equals("35") || camino.equals("38"))) {
      camino = "3";
      p.linea = 0;
      h.va = 10;
      h.vt = 3;
      frameCount = 0;
      wanchope.pantalla = "inicio";
    }
  }

  void cambioLinea() {
    if (p.linea > 8 && camino.equals("3")) {
      camino = "4";
      p.linea = 0;
    }
    if (p.linea > 4 && camino.equals("6")) {
      camino = "7";
      p.linea = 0;
    }
    if (p.linea > 0 && camino.equals("8")) {
      camino = "9";
      p.linea = 0;
    }
    if (p.linea > 4 && camino.equals("11")) {
      camino = "12";
      p.linea = 0;
    }
    if (p.linea > 1 && camino.equals("15")) {
      camino = "16";
      p.linea = 0;
    }
    if (p.linea > 6 && camino.equals("18")) {
      camino = "19";
      p.linea = 0;
    }
    if (p.linea > 1 && camino.equals("26")) {
      camino = "10";
      p.linea = 0;
    }
    if (p.linea > 6 && camino.equals("27")) {
      camino = "28";
      p.linea = 0;
    }
  }
}
