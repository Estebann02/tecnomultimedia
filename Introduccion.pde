// = pantalla 1
void Introduccion1(){ 
  background(0);
  textFont(caminos);
  textSize(15);
  fill(255,127,39);
  if(frameCount > 30 && frameCount <= 1530){
  text(intro[linea],width/2,100);
  text(intro[linea+1],width/2,120);
  }
  if(frameCount > 30 && frameCount <= 330){
  image(intro1,width/2,355);
  }
  if(frameCount > 330 && frameCount <= 630){
  linea=+2;
  image(intro2,width/2,355);
  }
  if(frameCount > 630 && frameCount <= 930){
  linea=+4;
  image(intro3,width/2,355);
  }
  if(frameCount > 930 && frameCount <= 1230){
  linea=+6;
  image(intro4,width/2,355);
  }
  if(frameCount > 1230 && frameCount <= 1530){
  linea=+8;
  image(intro5,width/2,355);
  }
  
  textFont(titulo);
  textSize(50);
  
  if(frameCount >= 1560 && frameCount <= 1620){
    float rojo = map(frameCount,1560,1620,0,255); //255,127,39
    float verde = map(frameCount,1560,1620,0,127);
    float azul = map(frameCount,1560,1620,0,39);
    fill(rojo,verde,azul);
    text("LA CASA DE ASTERION",width/2,height/2);
  }
  if(frameCount >=1620 && frameCount <= 1680){
    fill(255,127,39);
    text("LA CASA DE ASTERION",width/2,height/2);
  }
  if(frameCount >= 1680 && frameCount <= 1740){
    float rojo = map(frameCount,1680,1740,255,0); 
    float verde = map(frameCount,1680,1740,127,0);
    float azul = map(frameCount,1680,1740,39,0);
    fill(rojo,verde,azul);
    text("LA CASA DE ASTERION",width/2,height/2);
  }
  if (frameCount > 1800){
    pantalla = "3";
}
}
