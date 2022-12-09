//https://youtu.be/PRmMfJ7q_so
Juego juego;
import ddf.minim.*;
Minim musica;
AudioPlayer cancion, ganar, perder;
void setup() {
  size(600, 400);
  juego = new Juego();
  Minim musica = new Minim(this); 
  cancion = musica.loadFile("musica.mp3");
  ganar = musica.loadFile("ganar.mp3");
  perder = musica.loadFile("perder.mp3");
}
void draw() {
  juego.dibujar();
}
void mouseClicked () {  
  juego.click();
}
void keyPressed() {
  if (key=='v') {
    juego.musicasi = true;
  }
  if (key=='b') {
    juego.musicasi = false;
  }
}
