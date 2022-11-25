class Colisiones { 
  
  PImage mazo;
 
  Colisiones() {
    mazo= loadImage("mazo.png");
  }

  void mazo () {
    image(mazo, mouseX-50, mouseY-30);
    //push();
    //fill(0,255,0);
    //circle(mouseX,mouseY, 50);
    //pop();
  }
  

}
