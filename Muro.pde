class MuroMarley {
  float mx, my, mvel;
  int  mtam;
  PImage muro;

  MuroMarley() {
    mx = 0;
    my = random(150, 600);
    mvel = random(10, 12);
    muro = loadImage("muro.png");
    mtam = 80;
  }
  void dibujarMuro() {
    muro.resize(mtam, mtam);
    image(muro, mx, my);
  }
  void moverMuro() {
    mx += mvel;
  }
}
