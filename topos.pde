class Topos { 

  //Variables utilizadas
  int seg;

  //Arrays para cargar espacios e imagenes de topo y madriguera
  int imgTop = 2;
  PImage[] tops = new PImage[imgTop];
  int puntos;

  //Apararicion y destuccion de topos, el primero sera true 
  boolean topo1=true;
  boolean topo2=false;
  boolean topo3=false;
  boolean topo4=false;
  boolean topo5=false;
  boolean topo6=false;
  boolean topo7=false;
  boolean topo8=false;
  boolean topo9=false;

  //Arreglo de posiciones de Topos y Madrigueras

  int [] topmadX = new int [3];
  int [] topmadY = new int [3];

  //Pantalla del juego 

  Topos() {
    println(tiempo);

    tops[0] = loadImage("Top.png");
    tops[1] = loadImage("suelo.png");
    puntos = 0;
    

    //Posiciones Topos y Madrigueras X

    topmadX [0] = 80;
    topmadX [1] = 380;
    topmadX [2] = 700;

    //Posiciones Topos y Madrigueras Y

    topmadY [0] = 150;
    topmadY [1] = 400;
    topmadY [2] = 700;
  }

  //Funcion para posicion de madrigueras
  void madriguera() {
    image(tops[1], topmadX[0], topmadY[0], 200, 180); 
    image(tops[1], topmadX[1], topmadY[0], 200, 180);
    image(tops[1], topmadX[2], topmadY[0], 200, 180);
    image(tops[1], topmadX[0], topmadY[1], 200, 180); 
    image(tops[1], topmadX[1], topmadY[1], 200, 180); 
    image(tops[1], topmadX[2], topmadY[1], 200, 180); 
    image(tops[1], topmadX[0], topmadY[2], 200, 180); 
    image(tops[1], topmadX[1], topmadY[2], 200, 180); 
    image(tops[1], topmadX[2], topmadY[2], 200, 180);
  }

  //Funcion para posicion topos
  void topardos() {

    if (topo1 == true) {
      image(tops[0], topmadX[0], topmadY[0], 200, 180);
      //fill(255);
      //circle(175, 240, 80);
    }

    if (topo2 == true) {
      image(tops[0], topmadX[1], topmadY[0], 200, 180);
      //fill(255);
      //circle(475, 240, 80);
    }

    if (topo3 == true) {
      image(tops[0], topmadX[2], topmadY[0], 200, 180);
      //fill(255);
      //circle(790, 240, 80);
    }

    if (topo4 == true) {
      image(tops[0], topmadX[0], topmadY[1], 200, 180);
      //fill(255);
      //circle(180, 490, 80);
    }

    if (topo5 == true) {
      image(tops[0], topmadX[1], topmadY[1], 200, 180);
      //fill(255);
      //circle(480, 490, 80);
    }

    if (topo6 == true) { 
      image(tops[0], topmadX[2], topmadY[1], 200, 180);
      //fill(255);
      //circle(790, 490, 80);
    }

    if (topo7 == true) { 
      image(tops[0], topmadX[0], topmadY[2], 200, 180);
      //fill(255);
      //circle(170, 790, 80);
    }

    if (topo8 == true) {  
      image(tops[0], topmadX[1], topmadY[2], 200, 180);
      //fill(255);
      //circle(480, 790, 80);
    }

    if (topo9 == true) {
      image(tops[0], topmadX[2], topmadY[2], 200, 180);
      //fill(255);
      //circle(795, 790, 80);
    }
  }

  //Funcion para colisionar los topos

  void colision() {

    if (dist(mouseX, mouseY, 175, 240)<25 && topo1==true) {

      topo1=false;
      puntos();
      topo9=true;
    }
    if (dist(mouseX, mouseY, 795, 790)<25 && topo9==true) {     
      topo9=false;
      puntos();
      topo5=true;
    }
    if (dist(mouseX, mouseY, 480, 490)<25 && topo5==true) {
      topo5=false;
      puntos();
      topo2=true;
    }
    if (dist(mouseX, mouseY, 475, 240)<25 && topo2==true) { 
      topo2=false;
      puntos();
      topo3=true;
    }
    if (dist(mouseX, mouseY, 790, 240)<25 && topo3==true) {
      topo3=false;
      puntos();
      topo7=true;
    }
    if (dist(mouseX, mouseY, 170, 790)<25 && topo7==true) {
      topo7=false;
      puntos();
      topo4=true;
    }
    if (dist(mouseX, mouseY, 180, 490)<25 && topo4==true) {
      topo4=false;
      puntos();
      topo6=true;
    }
    if (dist(mouseX, mouseY, 790, 490)<25 && topo6==true) {
      topo6=false;
      puntos();
      topo8=true;
    }
    if (dist(mouseX, mouseY, 480, 790)<25 && topo8==true) {
      topo8=false;
      puntos();
      topo1=true;
    }
    if (dist(mouseX, mouseY, 175, 240)<25 && topo1==true) {
      topo1=false;
      puntos();
      topo5=true;
    }
  }

  //Funcion para Colocar marcador de puntos
  void puntaje() {
    fill (0);
    text("Topos Golpeados = " + puntos, 50, 50);
    text("Segundos = " + tiempo, 600, 50 );
  }

  //Funcion para sumar puntos 
  void puntos() {
    puntos++;
  }

  //Funcion para imprimir tiempo y sumar aumentarlo
  void contador() {
    println(tiempo);
    tiempo++;
  }

  //Funcion para cuando se llega a 10 puntos pase al estado de "ganar"
  void estadPantallas() {
    //Si llego a 10 puntos  
    if (puntos >= 10) {
      tC.Estado=3;
    } else if (puntos < 10 &&  tiempo>= 500 && tC.Estado==1) {
      tC.Estado=2;
    }
  }

  //Reinicio de estado 1 
  void reinicio() {

    //Posiciones Topos y Madrigueras X

    topmadX [0] = 80;
    topmadX [1] = 380;
    topmadX [2] = 700;

    //Posiciones Topos y Madrigueras Y

    topmadY [0] = 150;
    topmadY [1] = 400;
    topmadY [2] = 700;

    puntos = 0;
    tiempo = 0;

    //Apararicion y destuccion de topos, el primero sera true 
    topo1=true;
    topo2=false;
    topo3=false;
    topo4=false;
    topo5=false;
    topo6=false;
    topo7=false;
    topo8=false;
    topo9=false;

    //Reinicio de musica uno  
    uno.rewind();
    uno.unmute();

    //Reinicio de musica dos
    dos.rewind();
    dos.pause();
    dos.unmute();
  }
}
