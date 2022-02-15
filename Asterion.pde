//62 x 64 pixeles - sprite
class Asterion {
  int ax, ay, atam;
  PImage asterion;
  PFont Hud, texto;

  Asterion() {
    ax = width/2;
    ay = height-50;
    atam = 46;
    asterion = loadImage("asterion.png");
  }

  void dibujarAsterion() {
    asterion.resize(atam, atam);
    image(asterion, ax, ay );
  }
  void moverAsterion(int letra) {
    if ( letra == RIGHT && ax < width-46) {
      ax+=3;
    }
    if ( letra ==LEFT && ax > 46) {
      ax-=3;
    }
    if ( letra ==UP && ay > 60+atam) {
      ay-=3;
    }
    if ( letra ==DOWN && ay < height-24) {
      ay+=3;
    }
  }
} // class
