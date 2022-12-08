class Abeja{
PImage abeja1;
float xpos,ypos;

  Abeja(){
  abeja1=loadImage("abeja.png"); }
  void mover(){
  teclas();

}
  
  void dibujar(){
  image(abeja1,520,ypos,60,60);}

  void teclas(){
  if(keyPressed==true){
  }else{
  if(keyCode==UP){
  ypos-=4;
  }else{
  if(keyCode==DOWN){
  ypos+=4;
}
}
}
}
}
 
