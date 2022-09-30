class Fondo {
PImage flores;
Abeja abeja1;
Hormiga hormiga1,hormiga2,hormiga3;

Fondo(){
flores=loadImage("girasoles.jpg");
abeja1=new Abeja();
hormiga1= new Hormiga();
hormiga2= new Hormiga();
hormiga3= new Hormiga();
}

void dibujar(){
image(flores,0,0, width,height);
abeja1.dibujar();
hormiga1.dibujar();
hormiga2.dibujar();
hormiga3.dibujar();
hormiga1.actualizar(random(5.0));
abeja1.mover();


 
}
}
