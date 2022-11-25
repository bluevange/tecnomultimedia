class Bichos{
PImage bicho;
float xpos;
float ypos;
float xspeed;

Bichos(float tempXpos, float tempYpos, float tempXspeed){
  bicho=loadImage("bichos.png");
  xpos= tempXpos;
  ypos= tempYpos;
  xspeed= tempXspeed;}

void dibujar(){
image(bicho,xpos,ypos,100,80);}

void drive(){
  xpos += xspeed;
  if(xpos>width){
  xpos=0;
}
}
}
