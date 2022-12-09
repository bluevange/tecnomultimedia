class Abeja {

  PImage Abeja;

  float posX, posY;

  Abeja() {
    Abeja = loadImage("Abeja.png");
  }


  void dibujarAbeja() {
    posX = mouseX;
    posY = height-90;
    imageMode(CENTER);
    image(Abeja, posX, posY, 80,80);}}
