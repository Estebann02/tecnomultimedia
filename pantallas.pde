class Pantallas {
  Botones b;
  PFont titulo, caminos;
  String [] Historia;
  int linea;
  PImage [] camino = new PImage[22];

  Pantallas() {
    b = new Botones();
    Historia = loadStrings("historia.txt");
    caminos = createFont("Romanica.ttf", 30);
    titulo = createFont("DIOGENES.ttf", 50);
    for (int c=0; c<camino.length; c++) {
      camino[c] = loadImage("camino"+c+".png");
    }
  }

  void Introduccion() { 
    background(0);
    textFont(caminos);
    textSize(15);
    fill(255, 127, 39);
    if (frameCount > 30 && frameCount <= 1530) {
      text(Historia[linea], width/2, 100);
      text(Historia[linea+1], width/2, 120);
    }
    if (frameCount > 30 && frameCount <= 330) {
      image(camino[14], width/2, 355);
    }
    if (frameCount > 330 && frameCount <= 630) {
      linea=+2;
      image(camino[15], width/2, 355);
    }
    if (frameCount > 630 && frameCount <= 930) {
      linea=+4;
      image(camino[16], width/2, 355);
    }
    if (frameCount > 930 && frameCount <= 1230) {
      linea=+6;
      image(camino[17], width/2, 355);
    }
    if (frameCount > 1230 && frameCount <= 1530) {
      linea=+8;
      image(camino[18], width/2, 355);
    }
    if (frameCount >= 1560 && frameCount <= 1620) {
      float rojo = map(frameCount, 1560, 1620, 0, 255); //255,127,39
      float verde = map(frameCount, 1560, 1620, 0, 127);
      float azul = map(frameCount, 1560, 1620, 0, 39);
      fill(rojo, verde, azul);
      textFont(titulo);
      text("LA CASA DE ASTERION", width/2, height/2);
    }
    if (frameCount >=1620 && frameCount <= 1680) {
      fill(255, 127, 39);
      textFont(titulo);
      text("LA CASA DE ASTERION", width/2, height/2);
    }
    if (frameCount >= 1680 && frameCount <= 1740) {
      float rojo = map(frameCount, 1680, 1740, 255, 0); 
      float verde = map(frameCount, 1680, 1740, 127, 0);
      float azul = map(frameCount, 1680, 1740, 39, 0);
      fill(rojo, verde, azul);
      textFont(titulo);
      text("LA CASA DE ASTERION", width/2, height/2);
    }
  }

  void Titulo() { 
    textFont(titulo);
    background(255);
    image(camino[21], width/2, height/2);
    image(camino[19], width/2, 25);
    image(camino[20], width/2, 587);
    fill(0);
    text("LA CASA DE ASTERION", width/2, height/5);
    textSize(30);
    b.dibujarBoton(325, 475, 150, 23);
    text("COMENZAR", width/2, height-100);
    textSize(20);
    b.dibujarBoton(360, 523, 100, 15);
    text("CREDITOS", width/2, height-60);
  }

  void Creditos() { 
    background(255);
    image(camino[19], width/2, 25);
    image(camino[20], width/2, 587);
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
    b.dibujarBoton(17, 543, 64, 17);
    text("VOLVER", 50, height-40);
  }

  void Historia1(String texto, PImage camino) { // pantalla con continuar
    textFont(caminos);
    textSize(15);
    fill(255);
    text(texto, width/2, 70);
    image(camino, width/2, 355);
    textFont(titulo);
    textSize(20);
    b.BotonContinuar(691, 563, 77, 17);
  }

  void Historia2(String texto, int Tpy, PImage camino, int bx, int by, int bancho, int balto, String texto2, int Tx, int Ty, int bx2, int by2, int bancho2, int balto2, String texto3, int Tx2) { // pantalla con 2 decisiones
    textFont(caminos);
    textSize(15);
    fill(255);
    text(texto, width/2, Tpy);
    image(camino, width/2, 355);
    textFont(titulo);
    textSize(20);
    b.DobleBoton(bx, by, bancho, balto);
    text(texto2, Tx, Ty);
    b.DobleBoton(bx2, by2, bancho2, balto2);
    text(texto3, Tx2, Ty);
  }

  void Historia3(String texto, PImage camino) { // pantalla final
    textFont(caminos);
    textSize(15);
    fill(255, 0, 0);
    text(texto, width/2, 70);
    image(camino, width/2, 355);
    textFont(titulo);
    textSize(20);
    b.BotonReinicio(369, 563, 63, 17);
  }

  void Historia4(String texto, PImage camino, int px, int py, int ancho, int alto) { // pantalla temblor
    float x = random(380, 420);
    float y = random(345, 365);
    textFont(caminos);
    textSize(15);
    fill(255);
    text(texto, width/2, 70);
    image(camino, x, y);
    textFont(titulo);
    textSize(20);
    b.BotonContinuar(px, py, ancho, alto);
  }

  void Historia5(String texto, int tx) { // pantalla sin imagen
    textFont(caminos);
    textSize(15);
    fill(255);
    text(texto, width/2, tx);
    textFont(titulo);
    textSize(20);
    b.BotonContinuar(691, 563, 77, 17);
  }

  void Historia6(String texto) { // reinicio sin imagen
    textFont(caminos);
    textSize(15);
    fill(255);
    text(texto, width/2, 100);
    fill(255, 0, 0);
    text("(Teseo te asesino)", width/2, height/2);
    textFont(titulo);
    textSize(20);
    b.BotonReinicio(369, 563, 63, 17);
  }
}
