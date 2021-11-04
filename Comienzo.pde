class Comienzo {
  PImage inicio;
  int ix, iy;
  PFont Hud, texto;

  Comienzo() {
    imageMode(CENTER);
    textAlign(CENTER);
    inicio = loadImage("inicio.png");
    ix = 250;
    iy = 300;
    Hud = createFont("DIOGENES.ttf", 40);
    texto = createFont("Romanica.ttf", 20);
  }

  void dibujarComienzo() {
    background(0);
    inicio.resize(400, 300);
    image(inicio, ix, iy);
    textFont(Hud);
    fill(255, 0, 0);
    text("ASTERION VS TESEO", width/2, 100);
    textFont(texto);
    text("llega hasta arriba y golpea 3 \n  veces a Teseo para ganar, \n cuidado con sus piedras \n   y con los muros \n del laberinto!", 620, 250);
    text("Presiona CLICK para jugar", width/2, 580);
  }
}
