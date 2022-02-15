class Botones {

  Botones() {
  }

  void dibujarBoton(int px, int py, int ancho, int alto) {
    if (boton(mouseX, mouseY, px, py, ancho, alto)) {
      fill(255, 191, 0);
    } else {
      fill(0);
    }
  }

  void BotonContinuar(int px, int py, int ancho, int alto) {
    if (boton(mouseX, mouseY, px, py, ancho, alto)) {
      fill(255);
    } else {
      fill(111);
    }
    text("continuar", 730, height-20) ;
  }
  void DobleBoton(int px, int py, int ancho, int alto) {
    if (boton(mouseX, mouseY, px, py, ancho, alto)) {
      fill(255);
    } else {
      fill(111);
    }
  }
  void BotonReinicio(int px, int py, int ancho, int alto) {
    if (boton(mouseX, mouseY, px, py, ancho, alto)) {
      fill(255);
    } else {
      fill(111);
    }
    text("Reiniciar", width/2, height-20) ;
  }

  boolean botonsito(int mx, int my, int px, int py, int ancho, int alto) { // botonPressed
    boolean presionado = mx>px && mx<px+ancho && my>py&&my<py+alto == true;
    return presionado;
  }
  boolean boton(int mx, int my, int px, int py, int ancho, int alto) {
    if (mx>px && mx<px+ancho && my>py&&my<py+alto) {
      return true;
    } else {
      return false;
    }
  }
} 
