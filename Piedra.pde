class Piedra {
  Teseo t;
  float px, py, ptam, pvel;

  Piedra() {
    t = new Teseo();
    px = t.tx;
    py = t.ty;
    ptam = 10;
    pvel = 12;
  }
  void dibujarPiedra() {
    fill(100);
    ellipse(px, py, ptam, ptam);
  }

  void moverPiedra() {
    py+=pvel;
    t.moverTeseo();
  }
}
