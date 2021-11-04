class Juego {
  Asterion a;
  Teseo t;
  Piedra p;
  Hud h;
  MuroMarley muro;
  MuroMarley[] muros;
  Comienzo c;
  Ganar g;
  Perder per;
  String pantalla;
  String dificultad;

  Juego() {
    imageMode(CENTER);
    a = new Asterion();
    t = new Teseo();
    p = new Piedra(); 
    h = new Hud();
    g = new Ganar();
    per = new Perder();
    c = new Comienzo();
    muro = new MuroMarley();
    muros = new MuroMarley[2];
    pantalla = "inicio";
    dificultad = "1";
    //c = new Comienzo();
    for (int m = 0; m<2; m++) {
      muros[m] = new MuroMarley();
    }
  }

  void dibujarJuego() {
    background(250);
    println(pantalla);
    if (pantalla.equals("inicio")) {
      c.dibujarComienzo();
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
      for (int m=0; m<2; m++) {
        muros[m].dibujarMuro();
      }
    }
    if (pantalla.equals("ganar")) {
      g.dibujarGanar();
    }
    if (pantalla.equals("perder")) {
      per.dibujarPerder();
    }
  }

  void moverPersonaje(int letra) {
    a.moverAsterion(letra);
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
      if (pantalla.equals("inicio")) {
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

  /*void dificultad() {
    if (h.vt == 2) {
      dificultad = "2";
    }
    if (dificultad.equals("2")) {
      t.tvel= 20;
      p.pvel = 14;
      muro.mvel = random(7, 10);
      muros[0].mvel = random(7, 10);
      muros[1].mvel = random(7, 10);
    }
    if (h.vt == 1) {
      dificultad = "3";
    }
    if (dificultad.equals("3")) {
      t.tvel=30;
      p.pvel = 21;
      muro.mvel = random(10, 15);
      muros[0].mvel = random(10, 13);
      muros[1].mvel = random(10, 13);
    }
  }*/

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
        h.vt = 5;
      }
    }
  }
}// class
