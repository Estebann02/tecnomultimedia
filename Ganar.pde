class Ganar {
  int gx, gy;
  PFont Hud;
  PImage ganar;

  Ganar() {
    gx = width/2;
    gy = 100;
    Hud = createFont("DIOGENES.ttf", 20);
    ganar = loadImage("ganar.png");
  }

  void dibujarGanar() {
    background(0);
    textAlign(CENTER);
    textFont(Hud, 50);
    fill(255, 0, 0);
    text("GANASTE", gx, gy);
    image(ganar, gx, gy+255);
    textSize(20);
    text("Presiona CLICK para volver a jugar", width/2, 580);
  }
}
