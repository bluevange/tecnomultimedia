class Abeja{
PImage abeja1;
float pox,poy;


  Abeja(){
  abeja1=loadImage("abeja.png"); }
  void mover(){
  teclas();}
  
  void dibujar(){
  image(abeja1,520,poy,60,60);}

  void teclas(){
  if(keyPressed==true){
  }else{
  if(keyCode==UP){
  poy-=4;
  }else{
  if(keyCode==DOWN){
  poy+=4;
}
}
}
}
}
 
