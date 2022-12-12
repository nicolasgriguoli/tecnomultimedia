class Fondo {

  int maxImagenes = 9;
  int indice ;  
  PImage[] imagenes = new PImage [maxImagenes];

  Fondo() {
    indice=1;
    for (int i=1; i < imagenes.length; i++) {
      imagenes [i] = loadImage("video__"+ i + ".png");
    }
  }
  
void autopista() {
    image(imagenes[indice], 0,0, 650, 600);
    //indice= (indice+0)% imagenes.length;
  }
  
  void movimiento(){
    if (indice >= 1) {
      push();
      frameRate(30);
      indice ++; 
      if (indice >= imagenes.length) {
        indice = 1;
      }
      pop();
    }
  }    
}
