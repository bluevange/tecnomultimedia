    class Juego {
    
      PImage gana, pierde, fondo;
    
      PFont fuente;
    
      Abeja Abeja;
      Objetos[] Miel;
      Objetos[] Bichos;
      Botones jugar, creditos, instrucciones, jugarDeNuevo, inicio, volver;
    
      boolean musicasi;
    
      int puntos, fallos, objetofuera;
    
      String pantalla; 
    
    
    
      Juego() {
        gana = loadImage("ganar.jpg");
        pierde = loadImage("perder.jpg");
        fondo = loadImage("fondo.jpg");
        fuente = createFont("susi.vlw", 55);
        
        pantalla = "inicio";
        textFont (fuente);
    

        Abeja = new Abeja();
        jugar = new Botones("JUGAR", fuente);
        creditos = new Botones("CREDITOS", fuente);
        instrucciones = new Botones("INSTRUCCIONES", fuente);
        jugarDeNuevo = new Botones("JUGAR DE NUEVO", fuente);
        inicio = new Botones("INICIO", fuente);
        volver = new Botones("ATRAS", fuente);
    

        objetofuera = 0;
        musicasi = true;
    
    
    
   
        Miel = new Objetos[20];
        Bichos = new Objetos[15];
        for (int i = 0; i < Miel.length; i++) {
          Miel[i] = new Objetos();
        }
        for (int i = 0; i < Bichos.length; i++) {
          Bichos[i] = new Objetos();} }
    
    
  
      void dibujar() {
        if (musicasi == true) {
          cancion.play();
        } else { 
          cancion.pause();}
    
   
        imageMode (CENTER);
        image (fondo, width/2, height/2);
    
  
        if (pantalla.equals("inicio")) {
       
          cancion.pause();
          pushStyle();
          fill(0);
          textSize (60);
          textFont (fuente);
          textAlign (CENTER);
          text ("ABEJA\n DEVORADORA", width/2, height/3-50);
          fill(247, 207, 42);
          text ("ABEJA\n DEVORADORA", width/2+3, height/3-53);
          popStyle();
    
    //botones pantalla inicio
          jugar.dibujarBoton ();
          creditos.dibujarBoton ();
          instrucciones.dibujarBoton ();
    
    //musica pausa
          if (cancion.isPlaying ()) {
            cancion.pause();
          }
        }
    
    //pantalla creditos
        if (pantalla.equals("creditos")) {
          volver.dibujarBoton ();
         
         pushStyle();
         fill(0);
         textSize(30);
         text("CREDITOS", 300,90);
         fill(#B4560D);
         stroke(#4F0279);
         strokeWeight(15);
         rect(300,250,700-300,200);
         textSize(25);
         fill(255);
         text("CREADORA/Fazio Giuliana",300,200);
         text("Tecnologia Multimedial",300,250);
         text("Comision 2, Legajo 91356/9", 300, 300);
         popStyle();  }
    
   
        if (pantalla.equals("instrucciones")) {
          volver.dibujarBoton ();
          pushStyle();
         fill(0);
         textSize(30);
         text("CREDITOS", 300,90);
         fill(#B4560D);
         stroke(#4F0279);
         strokeWeight(15);
         rect(300,250,700-300,200);
         textSize(25);
         fill(255);
         text("¡Recolecta las 10 mieles",300,200);
         text("sin que los bichos te toquen!",300,250);
         text("Sé rápido", 300, 300);
         popStyle(); }
    
    
        if (pantalla.equals("gana")) {
          dibujarGana();} 
    
    
        if (pantalla.equals("pierde")) {
          dibujarPierde();} 
    
        if (pantalla.equals("juego")) {
          Abeja.dibujarAbeja();

    
    
          for (int i = 0; i < Miel.length; i++) {
            Miel[i].dibujarMiel();
            if (Miel[i].posY > height+50 && Miel[i].mov == true) { 
              objetofuera++; 
              Miel[i].mov = false;}
    
          
            if (dist(Abeja.posX+25, Abeja.posY+15, Miel[i].posX, Miel[i].posY) < 80 && Miel[i].mov == true) {
              puntos +=1; 
              Miel[i].mov = false;
              objetofuera++;
              Miel[i].posY = height*2; }}
              
          for (int i = 0; i < Bichos.length; i++) {
            Bichos[i].dibujarBichos();
            if (Bichos[i].posY > height+50 && Bichos[i].mov == true) { 
              objetofuera++; 
              Bichos[i].mov = false;}
    
            if (dist(Abeja.posX+25, Abeja.posY+15, Bichos[i].posX, Bichos[i].posY) < 80 && Bichos[i].mov == true) {
              fallos +=1; 
              Bichos[i].mov = false;
              objetofuera++;
              Bichos[i].posY = height*2;}
    
    
            ganar.pause();
            perder.pause();
            ganar.rewind ();
            perder.rewind();}}
    
    
       
        if (puntos >= 10) {
          pantalla = "gana";}
    
        if (fallos >= 5 || objetofuera >= Miel.length + Bichos.length) {
          pantalla = "pierde";}}
    
    
      void dibujarGana() {
        ganar.play ();
        image (gana, width/2, height/2, 600, 400);
       
        jugarDeNuevo.dibujarBoton ();
        inicio.dibujarBoton ();
        fallos = 0;
        puntos = 0;
        for (int i = 0; i < Miel.length; i++) {
          Miel[i].reiniciar ();}
        for (int i = 0; i < Bichos.length; i++) {
          Bichos[i].reiniciar ();}
        musicasi = false;
        cancion.rewind ();
        objetofuera = 0; }  
    
    
      void dibujarPierde() {
        perder.play ();
        image (pierde, width/2, height/2, 600, 400);
        
        jugarDeNuevo.dibujarBoton ();
        inicio.dibujarBoton ();
        fallos = 0;
        puntos = 0;
        for (int i = 0; i < Miel.length; i++) {
        Miel[i].reiniciar ();}
        for (int i = 0; i < Bichos.length; i++) {
        Bichos[i].reiniciar ();}
        musicasi = false;
        cancion.rewind ();
        }
    
    
    
      void click () {
        jugar.click ();
        inicio.click ();
        instrucciones.click ();
        creditos.click ();
        volver.click ();
        jugarDeNuevo.click ();}}
