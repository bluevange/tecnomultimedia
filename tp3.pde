//https://youtu.be/iyirT4HG01o
float[]vel= new float [12];
float []posy= new float [12];
float posX, posY;
//
String estado, condicionDe;


void setup(){
  size(600,600);
 background(#16AAD6);
  posX = 30;
  posY= 150;
//  canasta= loadImage("canasta2.png"); 
  imageMode(CENTER);
 //para el juego
  for(int i=0;i<vel.length;i++){
    vel[i]= random(3,7);
    posy[i]= 40;
  }
 //para logica de estados
 estado= "inicio";
 condicionDe= "ganar";
 condicionDe= "perder";
 textSize(20);
 textAlign(CENTER,CENTER);
}

    
void draw(){
  //Para el juego
   background(#16AAD6);
   
//para las pantallas
 if(estado.equals("inicio")){
    background(#09BFEA); 
    if(mouseX>225 && mouseX < 225+150 && mouseY>325 && mouseY<325+50){
     fill(#8B5C04); }
     else{
      fill(#A76F05); 
     }
     rect(225,325,150,50);
     fill(255);
     text("Jugar",300,350);
     // 
     if(mouseX>225 && mouseX < 225+150 && mouseY>390 && mouseY<390+50){
     fill(#8B5C04); }
     else{
      fill(#A76F05); 
     }
     rect(225,390,150,50);
     fill(255);
     text("Intrucciones",300,415); 
     }
     //estado instrucciones 
     if(estado.equals("Instrucciones")){
      background(#09BFEA);
      pushStyle();
     fill(255);
     textSize(50);
     text("INSTRUCCIONES", 300,100);
     fill(#B4560D);
     stroke(#A76F05);
     strokeWeight(10);
     rect(70,200,500-40,250);
     textSize(25);
     textAlign(CENTER);
     fill(255);
     text("El/La jugador/a debe recolectar 50\npelotitas en menos de 30 segundos,\nen caso de que no lo haga, PIERDE",300,300);
     popStyle();
     }
     //estado jugar
     if(estado.equals("Jugar")){
      jugar();
      } 
}
void mousePressed(){ //para acceder al estado de intrucción y jugar
  if(estado.equals("inicio")&& mouseX>225 && mouseX < 225+150 && mouseY>390 && mouseY<390+50 ){
    estado= "Instrucciones";
  }
  if(estado.equals("inicio")&& mouseX>225 && mouseX < 225+150 && mouseY>325 && mouseY<325+50 ){
    estado="Jugar";
  }
  
}

void keyPressed(){ //para acceder al reinicio en caso de que pierda o gane
  if(key == ENTER){
    if(condicionDe.equals("perder") || condicionDe.equals("ganar")){
     reinicio();
  }
 }   
}
void reinicio(){
 estado= "inicio"; 
}
