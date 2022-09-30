class Abeja{
PImage abeja1;
int posX,posY;

Abeja(){
  
abeja1=loadImage("abeja.png");
}
void mover(){
  teclas();
}
void dibujar(){
image(abeja1,posX,posY,70,70);
}
void teclas(){
  if(keyPressed==true){
    if(keyCode==RIGHT){
      posX++;
    }else{
      if(keyCode==LEFT){
        posX--;
    }else{
      if(keyCode==UP){
        posY--;
    }else{
      if(keyCode==DOWN){
        posY++;
      }
    }
    }
    }
  }
}
}
