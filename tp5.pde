//Griguoli Nicolas 88129/3
//Tecnologia Multimedial 1 
//YouTube -----> https://www.youtube.com/watch?v=GIpJszc4q9Y  

import ddf.minim.*;

//Clase minim
Minim minim;
AudioPlayer uno;
AudioPlayer dos;

toposCompletos tC;

int tiempo;

void setup() {

  size(1000, 1000);  
  tC = new toposCompletos();
  tiempo=0; 

  //Carga de audios 
  minim = new Minim (this);
  uno=minim.loadFile("1.mp3");
  dos=minim.loadFile("3.mp3");
}

void draw() {
  println(tC.Estado);


  tC.juego();
  // tC.estado0();
}

//Funciones de botones 

void mousePressed() {

  tC.Estadomouse();
}
