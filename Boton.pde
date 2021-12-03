void boton(int px, int py, int ancho, int alto) {
  if (boton(mouseX, mouseY, px, py, ancho, alto)) {
    fill(255, 191, 0);
  } else {
    fill(0);
  }
}
void boton2(int px, int py, int ancho, int alto) {
  if (boton(mouseX, mouseY, px, py, ancho, alto)) {
    fill(255);
  } else {
    fill(111);
  }
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
