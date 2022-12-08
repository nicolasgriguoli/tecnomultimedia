class Confeti {

  float posX, posY;
  float tamanio, velocidad;
 
  Confeti() {

    posX=random(0, 1000);
    posY=random(0, 1000);
    tamanio =random(10, 50);   
    velocidad=random(0, 3);
  }

  void caeConfeti() {

    fill(random(0,255),random(0,200), random(0,255));
    noStroke();
    rect(posX, posY, tamanio, 5);
    posY+=velocidad;

    if (posY>1000) {
      reinicioConfeti();
    }
  }

  void reinicioConfeti() {

      posX = random(0, 1000);
      posY = random(0, 1000);
      tamanio = random(10, 50);
      velocidad = random(2, 5);
    }
  }
