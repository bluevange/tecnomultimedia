class Objetos {

  PImage Miel, Bichos;

  float posX, posY, tamx;
  
  int tamy;

  boolean mov;

  Objetos() {
    imageMode(CENTER);
    Miel = loadImage("Miel.png");
    Bichos = loadImage("Bichos.png");
    posY = random(-height*5, -30);
    posX = random(20, width-20);
    mov = true;}
    
  
  void dibujarMiel() {
    image(Miel, posX, posY, 30,30);
    if (mov == true) posY+=4;}
  

  void dibujarBichos() {
    image(Bichos, posX, posY, 180, 160); 
    if (mov == true) posY+=4;}
  

  void reiniciar() {
    posY = random(-height*5, -30);
    posX = random(20, width-20);
    mov = true;}}
