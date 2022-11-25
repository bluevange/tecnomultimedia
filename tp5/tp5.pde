//https://youtu.be/5qOx-GLqvnY
import ddf.minim.*;
Minim minim;
AudioPlayer player;
Juego juego;

String estado, condicionDe;

    void setup(){
    size(600,400);
    juego = new Juego();
    textAlign(CENTER,CENTER);
    minim = new Minim(this);
    player = minim.loadFile("song.mp3");}
    
    void draw(){
    juego.dibujar();}
    
    void mouseClicked(){
    juego.interaccion();
    player.play();}
      
    void keyPressed(){
    juego.interaccion2();}

 
