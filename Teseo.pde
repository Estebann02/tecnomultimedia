//37 x 59 pixeles - sprite
class Teseo {
  //Piedra p;
  float tx, ty, x, tvel;
  int ttam;
  PImage teseo;
  String dire;

  Teseo() {
    tx = width/2;
    ty = 100;
    tvel = 20;
    dire = "der";
    ttam = 30;
    teseo = loadImage("teseo.png");
  }

  void dibujarTeseo() {
    println(tx);
    teseo.resize(ttam, ttam+10);
    image(teseo, tx, ty);
    //p.dibujarPiedra(p.px,p.py);
  }
  void moverTeseo() {
    if (dire.equals("der") && tx < width-ttam) {
      tx+=tvel;
    }
    if (dire.equals("der") && tx == width-ttam+10) {
      dire = "izq";
    }
    if (dire.equals("izq") && tx > ttam) {
      tx-=tvel;
    }
    if (dire.equals("izq") && tx == ttam-10) {
      dire = "der";
    }
  }
}// class
