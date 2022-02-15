class Hud {
  int hax, hay, htx, hty;
  int va, vt;
  PFont Hud;
  PImage hud;


  Hud() {
    hax = 600;
    hay = 50;
    htx = 50;
    hty = 50;
    va = 10;
    vt = 3;
    Hud = createFont("DIOGENES.ttf", 20);
    hud = loadImage("hud.png");
  }

  void dibujarHud() {
    fill(0);
    rect(0, 0, width, 60);
    textFont(Hud, 30);
    fill(255, 0, 0);
    text("Teseo:", htx, hty);
    text("Asterion:", hax, hay);
  }
  void dibujarVida() {
    fill(0, 255, 0);
    text(va, hax+130, hay);
    text(vt, htx+100, hty);
    hud.resize(25, 25);
    image(hud, hax+170, 37);
    image(hud, htx+140, 37);
  }
}// class
