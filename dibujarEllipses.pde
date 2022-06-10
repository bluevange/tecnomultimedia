void dibujarEllipses(){
 for(int tam= 600; tam>200; tam-=55){// va de mayor a menor, el tam- es porque disminuye el tamaño 
 float distan = dist(mouseX, mouseY, width/2, height/2);
  if (distan<tam/6) {//if si pasa esto
  fill(247, 115, 141, opa);
  }else{ //y si no pasa esto
    fill(250, 164, 240, opa);
  }    
  ellipse(V,600,tam,tam);
  ellipse(600,V,tam,tam);
  ellipse(0,V,tam,tam);
   ellipse(V,0,tam,tam); 
 }
 }
