class Aguja {
  float posX;
  float velocidad; 
  
  //Variables de imagen 
  int x = 70;
  int y = 332;
  PImage p;

  Aguja() {
    posX=60;
    velocidad =0.5;
    p = loadImage("lineas velocimetro.png");
  }

  void lineas() {
    push();
    image(p, x, y, 530, 50);
    pop();
  }

  void manecilla() {
    push();
    fill(240, 0, 0);
    rect(posX, 322, 6, 55);
    pop();
  }
  void acelerar(){
   posX = posX + velocidad;
   if (posX >= 60) {
     velocidad = +3;
    }
    if(posX > 600){
    posX = 600;
    }
  }
  void desacelerar(){
   posX = posX - velocidad;
   if (posX <= 620) {
     velocidad = 3;
    }
    if(posX < 60){
    posX = 60;
    }
  }
  
}
