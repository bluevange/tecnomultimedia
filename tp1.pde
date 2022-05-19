PImage mar;
PImage titulo;
PImage fotonemo;
PImage fotodori;
PImage fototortuga;
PImage pez;
PImage estrella;
PImage amigos;
PImage amigos2;
PImage fin;
PFont nemo;
PFont nemo2;
int miVariable = frameCount;
String texto = "nemo es feliz";




void setup(){
 
size (600,394);
mar = loadImage ("mar.png");
pez = loadImage ("pez.png");
pez.resize(100,100);
fotonemo = loadImage("fotonemo.png");
fotonemo.resize(200,200);
fotodori = loadImage("fotodori.png");
fotodori.resize(200,200);
fototortuga = loadImage("fototortuga.png");
fototortuga.resize(150,150);
estrella = loadImage("estrella.png");
estrella.resize(200,200);
amigos = loadImage ("amigos.png");
amigos.resize (400,300);
amigos2 =loadImage("amigos2.png");
amigos2.resize(300,300);
titulo = loadImage ("titulo.png");
titulo.resize(390,390);
fin = loadImage("fin.png");
fin.resize(200,200);
nemo = loadFont("susi.vlw");
nemo2 = createFont("LostFish-5DOz.ttf", 30);
textFont(nemo2);
textFont(nemo);
textSize(20);
}

void draw(){
  println(mouseX, mouseY);
  image(mar,0,0);
  fill (200, mouseX, mouseY);
  image(titulo, CENTER, CENTER);
  println(miVariable);
  miVariable = frameCount;
  image(pez,miVariable,0);
  
  //TOCAR ESPACIO PARA COMENZAR
  if(key== ' '){
  image(mar,0,0);
  image(fotonemo,200, 180);
  textFont(nemo);
  textAlign(CENTER);
  text("Directed by",186, 90);
  textFont(nemo2);
   textAlign(CENTER);
  text("Andrew Stanton", 300, 140);
  }
  if(millis()>5000 && millis()<10000) {
  image(mar,0,0);
  image(fotodori, 200, 180);
 textFont(nemo);
  textAlign(CENTER);
  text("Produced by",186, 90);
  textFont(nemo2);
  textAlign(CENTER);
  text("Graham Walters", 300, 140);
  }
  if(millis()>10000 && millis()<15000) {
  image(mar,0,0);
  image(fototortuga, 200, 230);
 textFont(nemo);
  textAlign(CENTER);
  text("Screeanplay by",186, 90);
  textFont(nemo2);
  textAlign(CENTER);
  text("Andrew Stanton \n Bob Peterson \n David Reynolds", 300, 140);
}
 if(millis()>15000 && millis()<20000) {
  image(mar,0,0);
  image(estrella, 200, 180);
 textFont(nemo);
  textAlign(CENTER);
  text("Music by",186, 90);
  textFont(nemo2);
  textAlign(CENTER);
  text("Thomas Newman", 300, 140);
}

 if(millis()>20000 && millis()<25000) {
  image(mar,0,0);
  image(amigos, 200, 100);
 textFont(nemo);
  textAlign(CENTER);
  text("Production designer",200, 100);
  textFont(nemo2);
  textAlign(CENTER);
  text("Ralph Egglestd", 300, 140);
 }
 
 if(millis()>25000 && millis()<30000) {
  image(mar,0,0);
image(amigos2, 200,100);
 textFont(nemo);
  textAlign(CENTER);
  text("Pervising animation",200, 100);
  textFont(nemo2);
  textAlign(CENTER);
  text("Dylan Brown", 300, 140);
  }
 if(millis()>25000 && millis()<30000) {
  image(mar,0,0);
  image(fin, 200,100);
  println(miVariable);
  miVariable = frameCount;
  image(pez,miVariable,0);
  textFont(nemo2);
  textAlign(CENTER);
  text("The end ", 300, 140);
 }
}
