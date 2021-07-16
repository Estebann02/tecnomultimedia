//TP3 Ilusion Optica

int cant, linea, brillo, saturacion;

void setup(){
  cant = 20;
  size(600,600);
  surface.setResizable(true);
}

void draw(){
  colorMode(HSB);
  background(0);
  rectMode(CENTER);
  linea = 0;
  for(int C=0; C<cant; C++){
    float tamX = map(C, 0, cant, width, 25);
    float tamY = map(C, 0, cant, height, 25);
    float X = map (C, 0, cant, width/2, mouseX);
    float Y = map (C, 0, cant, height/2, mouseY);
    float colores = map (frameCount, 0, 300, 1 , 255);
    float linea = map (frameCount, 0, 300, 255 , 1);
    float tono = map(C, 0, cant, 50, 255 );
    float grosor = map(C, 0, cant, 25, 5);
    stroke(linea, 100, 150, tono);
    strokeWeight(grosor);
    fill(colores, 150, 255);
    rect(X,Y,tamX, tamY);
  }
  if(frameCount == 300){
    frameCount = 0;
  }
}
  
void keyPressed(){
  if(keyCode == RIGHT){
    cant++;
  }
  if(keyCode == LEFT && cant > 1){
    cant--;
  }
}

void mousePressed(){
  mouseX = 300;
  mouseY = 300;
  cant = 20;
}
