Juego wanchope;
void setup() {
  size(800, 600);
  wanchope = new Juego();
}
void draw() {
  background(250);
  wanchope.dibujarJuego();
  wanchope.golpearTeseo();
  wanchope.golpearAsterion();
  wanchope.muroMueve();
  wanchope.golpedeMuro();
  wanchope.cambiodeEstado();
  wanchope.reinicio();
  //wanchope.dificultad();
  if (keyPressed) {
    wanchope.moverPersonaje(keyCode);
  }
}
