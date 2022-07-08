void jugar(){ 

PImage canasta; 
canasta= loadImage("canasta.png"); 

    fill(#73B248);
     
       rect(0,560,600,50);
       
  println("X:" + mouseX+ "Y:" + mouseY);

   image(canasta,mouseX,565,100,100);
  

  for( int y = 0 ; y < posy.length ; y++ ){
    posy[y] += vel[y];
    fill(#068FB7);
    ellipse( y*width/posy.length ,posy[y] , 40, 40 );
  }
  
}
