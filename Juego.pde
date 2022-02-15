class Juego {
  Asterion a;
  Teseo t;
  Piedra p;
  Hud h;
  MuroMarley muro;
  MuroMarley[] muros;
  String pantalla;
  String dificultad;
  PImage inicio, perder, ganar;
  PFont Hud, texto;
  int perx, pery;

  Juego() {
    textAlign(CENTER);
    imageMode(CENTER);
    a = new Asterion();
    t = new Teseo();
    p = new Piedra(); 
    h = new Hud();
    muro = new MuroMarley();
    muros = new MuroMarley[2];
    pantalla = "inicio";
    dificultad = "1";
    //c = new Comienzo();
    for (int m = 0; m<2; m++) {
      muros[m] = new MuroMarley();
    }
    inicio = loadImage("inicio.png");
    Hud = createFont("DIOGENES.ttf", 40);
    texto = createFont("Romanica.ttf", 20);
    perder = loadImage("perder.png");
    ganar = loadImage("ganar.png");
  }

  void dibujarJuego() {
    golpearTeseo();
    golpearAsterion();
    golpedeMuro();
    cambiodeEstado();
    reinicio();
    background(250);
    if (pantalla.equals("inicio")) {
      background(0);
      inicio.resize(400, 300);
      image(inicio, 250, 300);
      textFont(Hud);
      fill(255, 0, 0);
      text("ASTERION VS TESEO", width/2, 100);
      textFont(texto);
      text("llega hasta arriba y golpea 3 \n  veces a Teseo para ganar, \n cuidado con sus piedras \n   y con los muros \n del laberinto!", 620, 250);
      text("Presiona CLICK para jugar", width/2, 580);
    }

    if (pantalla.equals("juego")) {
      a.dibujarAsterion();
      t.dibujarTeseo();
      t.moverTeseo();
      p.moverPiedra();
      p.dibujarPiedra();
      h.dibujarHud();
      h.dibujarVida();
      muro.dibujarMuro();
      muro.moverMuro();
      muroMueve();
      if (keyPressed) {
        a.moverAsterion(keyCode);
      }
      for (int m=0; m<2; m++) {
        muros[m].dibujarMuro();
      }
    }
    if (pantalla.equals("ganar")) {
      background(0);
      textAlign(CENTER);
      textFont(Hud, 50);
      fill(255, 0, 0);
      text("GANASTE", width/2, 100);
      image(ganar, width/2, 355);
      textSize(20);
      text("Presiona CLICK para seguir", width/2, 580);
    }

    if (pantalla.equals("perder")) {
      background(0);
      textAlign(CENTER);
      textFont(Hud, 50);
      fill(255, 0, 0);
      text("PERDISTE", width/2, 100);
      image(perder, width/2, 355);
      textSize(20);
      text("Presiona CLICK para volver a jugar", width/2, 580);
    }
  }

  void muroMueve() {
    for (int m=0; m<2; m++) {
      muros[m].moverMuro();
    }
  }

  void golpearTeseo() {
    float golpe = dist(a.ax, a.ay, t.tx, t.ty);
    if (golpe<t.ttam/2+a.atam/2) {
      h.vt-=1;
    }
    if (golpe<t.ttam/2+a.atam/2) {
      a.ax = width/2;
      a.ay = height-50;
    }
  }
  void golpearAsterion() {
    float golpe2 = dist(a.ax, a.ay, p.px, p.py);
    if (golpe2 <a.atam/2+p.ptam) {
      h.va-=1;
    }
    if (p.py > height ||golpe2 < a.atam/2+p.ptam) {
      p.py = t.ty;
      p.px = t.tx;
    }
  }

  void golpedeMuro() {
    float muraso = dist(a.ax, a.ay, muro.mx, muro.my);
    if (muraso < a.atam/2+muro.mtam/2) {
      h.va-=1;
    }
    for (int i=0; i<muros.length; i++) {
      float muraso2 = dist(a.ax, a.ay, muros[i].mx, muros[i].my);
      if (muraso2 < a.atam/2+muros[i].mtam/2) {
        h.va-=1;
      }
      if (muro.mx > width || muraso < a.atam/2+muro.mtam/2) {
        muro.my = random(150, 600);
        muro.mx = 0;
      }
      if (muros[i].mx > width || muraso2 < a.atam/2+muros[i].mtam/2) {
        muros[i].my = random(150, 600);
        muros[i].mx = 0;
      }
    }
  }

  void cambiodeEstado() {
    if (mousePressed) {
      if (pantalla.equals("inicio") && frameCount > 10) {
        pantalla = "juego";
      }
    }
    if (h.va == 0 && pantalla.equals("juego")) {
      pantalla = "perder";
    }
    if (h.vt == 0 && pantalla.equals("juego")) {
      pantalla = "ganar";
    }
  }

  void reinicio() {
    if (mousePressed) {
      if (pantalla.equals("ganar") || pantalla.equals("perder")) {
        pantalla = "juego";
        a.ax = width/2;
        a.ay = height-50;
        h.hax = 600;
        h.hay = 50;
        h.htx = 50;
        h.hty = 50;
        h.va = 10;
        h.vt = 3;
        muro.my = random(150, 600);
        muro.mx = 0;
      }
    }
  }
}// class
