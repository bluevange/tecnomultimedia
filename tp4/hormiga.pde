class Hormiga{
PImage hormiga1;
PImage hormiga2;
PImage hormiga3;
float reinciarX;
float posX;
float velX;
Hormiga(){
hormiga1=loadImage("hormiga.png");
hormiga2=loadImage("hormiga2.png");
hormiga3=loadImage("hormiga3.png");
}
void reinicio(){
  posX=random(width,320);
}
void actualizar(float velX){
posX-=velX;
if(posX<=0){
  reinicio();
}
}
void dibujar(){
image(hormiga1,200,320,70,70);
image(hormiga2,430,320,70,70);
image(hormiga3,10,320,70,70);
}


}
