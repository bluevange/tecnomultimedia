class Miel{
PImage miel;
float xpos;
float ypos;
float xspeed;

Miel(float tempXpos, float tempYpos, float tempXspeed){
  miel=loadImage("miel.png");
  xpos= tempXpos;
  ypos= tempYpos;
  xspeed= tempXspeed;}

void dibujar(){
image(miel,xpos,ypos,25,25);}

void drive(){
  xpos += xspeed;
  if(xpos>width){
  xpos=0;
}
}
}
