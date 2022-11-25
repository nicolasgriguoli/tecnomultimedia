//Griguoli Nicolas 88129/3
//Tecnologia Multimedial 1 
//YouTube -----> https://youtu.be/tyZD73yD1U8 


import ddf.minim.*;

//Clase minim
Minim minim;
AudioPlayer uno;
AudioPlayer dos;

toposCompletos tC;

int Estado=0;

void setup() {

  size(1000, 1000);  
  tC = new toposCompletos();

  //Carga de audios 
  minim = new Minim (this);
  uno=minim.loadFile("1.mp3");
  dos=minim.loadFile("3.mp3");
}

void draw() {
  println(Estado);

  tC.estado0();
  if (Estado==0) {
    //Inicio mi audio 1 en el estado 0 = Inicio
    uno.play();
    tC.estado0();
  }
  if (Estado==1) {
    //Inicio mi audio 3 en el estado 1 = Juego
    dos.play();
    tC.estado1();
  }
  if (Estado==2) {
    tC.estado2();
  }
  if (Estado==3) {
    dos.play();
    tC.estado3();
  }
  if (Estado==4) {
    tC.estado4();
  }
}

//Funciones de botones 

void mousePressed() {
  
  //Boton Rojo de pantalla "Inicio" a pantalla "Juego" 
  if (Estado == 0 && mouseX>=425 && mouseX<=625 && mouseY>=700 && mouseY<=750) {
    Estado=1;
    uno.mute();
  }
  
  //Boton Amarillo de pantalla "Inicio" a pantalla "Creditos" 
  else  if (Estado == 0 && mouseX>=425 && mouseX<=625 && mouseY>=880 && mouseY<=930) {   
    Estado=4;
  }
  
  //Boton Amarillo de pantalla "Creditos" a pantalla "Inicio"
  else if (Estado==4 && mouseX>=400 && mouseX<=600 && mouseY>=700 && mouseY<=750) {
    Estado=0;
    uno.play();
  }
  
  //Colision de "Pantalla de Juego"
  else if (Estado == 1) { 
    tC.colision();
  }
  
  //Boton Rojo de pantalla "Ganar" a pantalla "Inicio"
  else if (Estado == 3 && mouseX>=400 && mouseX<=600 && mouseY>=420 && mouseY<=470) {
    Estado=0;
  }
  
  //Boton Amarillo de pantalla "Ganar" a pantalla "Creditos"
  else if (Estado == 3 && mouseX>=400 && mouseX<=600 && mouseY>=530 && mouseY<=580) {
    Estado=4;
  }
  
  //Boton Rojo de pantalla "Perder" a pantalla "Inicio"
  else if (Estado == 2 && mouseX>=430 && mouseX<=630 && mouseY>=580 && mouseY<=630) {
    Estado=0;
  }
  
  //Boton Amarsillo de pantalla "Perder" a pantalla "Creditos"
  else if (Estado == 2 && mouseX>=430 && mouseX<=630 && mouseY>=750 && mouseY<=800) {
    Estado=4;
  }
}
