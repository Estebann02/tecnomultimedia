class Perder {
  int perx, pery;
  PFont Hud;
  PImage perder;

  Perder() {
    perx = width/2;
    pery = 100;
    Hud = createFont("DIOGENES.ttf", 20);
    perder = loadImage("perder.png");
  }
  void dibujarPerder() {
    background(0);
    textAlign(CENTER);
    textFont(Hud, 50);
    fill(255, 0, 0);
    text("PERDISTE", perx, pery);
    image(perder, perx, pery+255);
    textSize(20);
    text("Presiona CLICK para volver a jugar", width/2, 580);
  }
}
