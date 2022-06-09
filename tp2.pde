int tam;
int opa;
int cant;
int V = 0;

void setup(){
 size (600,600); 
  background (0);
  opa= 80;
  cant=100;
  frameRate (10);
}

void draw(){
 println (mouseX, mouseY);
 dibujarEllipses();
 stroke(255);
 V=V+5;
}

 void mousePressed(){
  for (int e=0;e<cant; e++){
    opa=400;
}
}

void keyPressed(){
if (key==' '){
 opa= 80;
 cant=100;
 V = 0;
}
}
