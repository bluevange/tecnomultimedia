class GestorDeInteracion {
  Dir_y_Vel mouse;
  boolean movGrande;
  boolean movPeque;
  float tiempoGrande;
  float tiempoPeque;
  GestorDeInteracion() {
    mouse = new Dir_y_Vel();
  }

  void actualizar() {
    mouse.calcularTodo(mouseX, mouseY);
    movGrande = false;
    movPeque = false;
    tiempoGrande--;
    tiempoPeque--;
    tiempoGrande = constrain(tiempoGrande, 0, 90);
    tiempoPeque = constrain(tiempoPeque, 0, 90);
    println(tiempoPeque);
    if (mouse.velocidad()>10) {
      float umbral = 40;
      if (mouse.velocidad()>umbral) {
        tiempoGrande+=10;
        tiempoPeque-=10;
      } else {
        if (tiempoGrande<10) {
          tiempoPeque+=10;
        }
      }
    }

    if (tiempoGrande>10) {
      movGrande = true;
    } 
    if (tiempoPeque>10) {
      movPeque = true;
    }
  }
}
