class Juego {
PImage fondo;
PImage ft;
String estado, condicionDe;
PFont fuente1;
int xpos, ypos;
boolean perder;
Abeja abeja1;
Bichos[]bichos = new Bichos [6];
Miel[]miel = new Miel [3];


Juego(){
  xpos= 60;
  ypos=60;
    estado= "inicio";
    
    condicionDe= "ganar";
    condicionDe= "perder";
    fondo=loadImage("girasoles.jpg");
    ft=loadImage("ftt.png");
    fuente1=loadFont("susi.vlw");
    textFont(fuente1);
    abeja1=new Abeja();
    for(int i =0;i <bichos.length;i++){
    bichos[i] = new Bichos(0,i*height/bichos.length, random (3,8));}
    for(int i =0;i <miel.length;i++){
    miel[i] = new Miel(5,i*height/miel.length, random (1,5));}}


    void dibujar(){
    image(fondo,0,0, width,height);
    abeja1.dibujar();
    abeja1.mover();
    
    for(int i =0;i <bichos.length;i++){
    bichos[i].drive();
    bichos[i].dibujar();}
    
    for(int i =0;i <miel.length;i++){
    miel[i].drive();
    miel[i].dibujar();}

    if(estado.equals("inicio")){
      textFont(fuente1);
      textSize(25);
      
      
//boton jugar

    background(#ED8C0C); 
    image(ft, 0,-8,600,400);

    if(mouseX>225 && mouseX < 225+150 && mouseY>150 && mouseY<150+50){
    fill(#ED8C0C); 
    }else{
    fill(#A76F05);}
    rect(225,150,150,50);
    fill(255);
    text("Jugar",300,170);
 
//boton introduccion
    if(mouseX>225 && mouseX < 225+150 && mouseY>200 && mouseY<200+50){
    fill(#ED8C0C);}
    else{
    fill(#A76F05);}
    rect(225,220,150,50);
    fill(255);
    text("Intrucciones",300,240);
    
 //boton creditos
   if(mouseX>225 && mouseX < 225+150 && mouseY>290 && mouseY<290+50){
    fill(#ED8C0C);}
    else{
    fill(#A76F05);}
    rect(225,290,150,50);
    fill(255);
    stroke(#FFE627);
     strokeWeight(8);
    text("Creditos",300,310);
    }
    
    
    
//estado instrucciones 
     if(estado.equals("Instrucciones")){
     background(#ED8C0C);
     pushStyle();
     fill(255);
     textSize(30);
     text("INSTRUCCIONES", 300,90);
     fill(#B4560D);
     stroke(#FFE627);
     strokeWeight(10);
     rect(70,150,500-40,200);
     textSize(25);
     fill(255);
     text("Deberas esquivar todos los insectos ",300,200);
     text("y recolectar tres panales de miel",300,250);
     text("¡antes de que un insecto te atrape!", 300, 300);
     popStyle();}
     
//estado creditos
     if(estado.equals("Creditos")){
     background(#ED8C0C);
     pushStyle();
     fill(255);
     textSize(30);
     text("CREDITOS", 300,90);
     fill(#B4560D);
     stroke(#FF1C1C);
     strokeWeight(15);
     rect(70,150,500-40,200);
     textSize(25);
     fill(255);
     text("CREADORA/Fazio Giuliana",300,200);
     text("Tecnologia Multimedial",300,250);
     text("Comision 2, Legajo 91356/9", 300, 300);
     popStyle();}}
   
   
   
    
      
     
    void interaccion(){ //para acceder al estado de intrucción y jugar
    if(estado.equals("inicio")&& mouseX>225 && mouseX < 225+150 && mouseY>200 && mouseY<200+50 ){
    estado= "Instrucciones";}
    if(estado.equals("inicio")&& mouseX>225 && mouseX < 225+150 && mouseY>150 && mouseY<150+50 ){
    estado="Jugar";}
  if(estado.equals("inicio")&& mouseX>225 && mouseX < 225+150 && mouseY>290 && mouseY<290+50 ){
    estado="Creditos";}}


    void interaccion2(){ //para acceder al reinicio en caso de que pierda o gane
    if(key == ENTER){
    if(condicionDe.equals("perder") || condicionDe.equals("ganar")){
    reinicio();}}}
     
    void reinicio(){
    estado= "inicio";}
     
     void colisiones(){
    
    if(estado== "Perdiste"){
      fill (255);
      text ("Perdiste", 300,310);
}
for (int i =0;i <bichos.length;i++){
    if(dist(bichos[i].xpos,bichos[i].ypos,abeja1.xpos, abeja1.ypos)<50){
      condicionDe = "perder";
    }}

 }
}
