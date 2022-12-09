class Botones {

  String btexto, bpantalla;

  float posX, posY, tamX, tamY;

  int bcolor;

//valor datos botones
  Botones(String b, PFont s) {
    bcolor = (255);
    textAlign (CENTER);
    textSize (20);
    rectMode (CENTER);
    noStroke ();

//valores botones independientes
    if (b.equals("JUGAR")) {  // si boton es jugar, propiedades boton jugar, etc...
      bcolor = (#FFD812);
      btexto = b;
      posX= width/2;
      posY= height/2+40;
      tamX= 100;
      tamY= 50;
      bpantalla = "juego";
    }
    if (b.equals("CREDITOS")) {
      btexto = b;
      bcolor = (#59047C);
      posX= width/2;
      posY= height/2+160;
      tamX= 130;
      tamY= 40;
      bpantalla = "creditos";
    }
    if (b.equals("INSTRUCCIONES")) {
      btexto = b;
      bcolor = (#FF9DEF);
      posX= width/2;
      posY= height/2+100;
      tamX= 220;
      tamY= 50;
      bpantalla = "instrucciones";
    }
    if (b.equals("JUGAR DE NUEVO")) {
      btexto = b;
      bcolor = (#FF9DEF);
      posX= width/2;
      posY= height/2+250;
      tamX= 300;
      tamY= 50;
      bpantalla = "jugar";
    }
    if (b.equals("INICIO")) {
      btexto = b;
      bcolor = (#59047C);
      posX= width/2;
      posY= height/2+170;
      tamX= 150;
      tamY= 50;
      bpantalla = "jugar";
    }
    if (b.equals("ATRAS")) {
      bcolor = (#59047C);
      btexto = b;
      posX= 100;
      posY= 100;
      tamX= 120;
      tamY= 60;
      bpantalla = "inicio";
    }
  }


//dibujar boton
  void dibujarBoton() {
    fill (bcolor);
    rect (posX, posY, tamX, tamY, 10);
    textAlign (CENTER);
    fill (255);
    text (btexto, posX, posY);
  }
  
  
//click botones
  void click() {
    if (mouseX > posX-tamX/2 && mouseX < posX+tamX/2 && mouseY > posY-tamY/2 && mouseY < posY+tamY/2) { 
      println (bpantalla);
      juego.pantalla = bpantalla;
      
      juego.musicasi = true;
    }
  }
}
