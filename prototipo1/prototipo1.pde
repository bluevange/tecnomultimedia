GestorDeInteracion g;
int ancho=20;
int ancho2=20;
void setup () {
  size (600, 600);
  background(255);
  g = new GestorDeInteracion();
  background(255);
  noStroke();
}

void draw () {
  g.actualizar();

  if (g.movGrande) {
    crearGrandes();
  } else if (g.movPeque) {
    crearPeques();
  }
}
void crearGrandes(){
  float anchito=random(50,80); 
  //float anchito2=random(15,45);
  //if (vel){
   ellipse(mouseX,mouseY,ancho,20);
   ancho= int(anchito);
   //else if
    //circle(mouseX,mouseY,ancho2);
    //ancho2= int(anchito2);
  //}
}

void crearPeques(){
  
mouseMoved();
  fill(int(random(0,255)),int(random(0,255)),int(random(0,255)));

}
