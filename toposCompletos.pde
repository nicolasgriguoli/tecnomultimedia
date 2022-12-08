class toposCompletos {
  Topos  t;
  Confeti c;
  
  //variable Estado
  int Estado=0;
  //Cantidad de papeles de confeti a dibujar 
  int cantidad=300; 

  //Arreglo del confeti (el primer new se declara para el tamaño del arreglo)
  Confeti [] papeles = new Confeti [cantidad]; 

  //Nombre de variable de tipografia
  PFont tipografia;

  //pantalla del juego 
  PImage pantjuego; 

  //pantalla inicio 
  PImage pantinicio; 

  //pantalla perder
  PImage pantperder;

  //pantalla ganar
  PImage pantganar;

  toposCompletos() {

    t = new Topos();
    c = new Confeti();

    pantinicio = loadImage("pantalla inicio.png");
    pantperder = loadImage("perder.png");
    pantjuego = loadImage("game.png");
    pantganar = loadImage("ganar.png");

    //Carga Fuente 
    tipografia = createFont ("DestroyEarthRoughBB.ttf", 30);
    textFont(tipografia);
    
    //Valor inicial del arreglo (el 2do new es para llamar al constructor)
    for (int i=0; i<cantidad; i++) {
      papeles[i]= new Confeti ();
    }
  }
  
  //Funcion para que caigan los papelitos
  void caenPapeles() {    
      for (int i=0; i<papeles.length; i++) {
        papeles[i].caeConfeti();
      }
  }

  // Pantalla "Inicio" 

  void estado0() {

    background (pantinicio);
    fill(0, 255, 0);
    println(mouseX, mouseY);
    push();
    fill(0);
    textSize(80);
    text("Aplasta Topos", 225, 150);
    pop();
    push();
    textSize(30);
    fill(0);
    text("En este juego, deberas completar \n         10 puntos antes de los 15' ", 280, 220);
    pop();

    push();
    textSize(30);
    fill(255, 0, 0);
    text("Aprieta el boton  Rojo para iniciar", 270, 675);
    pop();

    push();
    textSize(30);
    fill(255, 255, 0);
    text("Aprieta el boton  Amarillo para ir a creditos", 150, 825);
    pop();

    //Boton Rojo
    push();
    fill(255, 0, 0);
    stroke(255);
    rect(425, 700, 200, 50);
    pop();

    //Boton Amarillo
    push();
    fill(255, 255, 0);
    stroke(255);
    rect(425, 880, 200, 50);
    pop();
  }  

  //Pantalla "juego"

  void estado1() {
    background (pantjuego);
    t.madriguera();
    t.topardos();
    t.puntaje();
    t.estadPantallas();
    t.contador();
    t.estadPantallas(); 
  }

  //Pantalla "Perder" 

  void estado2() {

    background(pantperder);

    push();
    fill(0);
    textSize(50);
    text("Los topos fueron mas listos \ny te has quedado sin tiempo !!", 150, 400);
    pop();

    fill(255, 0, 0);
    textSize(30);
    text("Aprieta el boton Rojo para volver al Inicio", 210, 550);

    push();
    fill(255, 255, 0);
    text("Aprieta el boton Amarillo para creditos", 220, 700);
    pop();

    //Boton Rojo
    push();
    fill(255, 0, 0);
    stroke(255);
    rect(430, 580, 200, 50);
    pop();

    //Boton Amarillo
    push();
    fill(255, 255, 0);
    stroke(255);
    rect(430, 750, 200, 50);
    pop();
    t.reinicio();
  }

  //Pantalla "Ganar" 

  void estado3() {
    background(pantganar);
    fill(0);
    textSize(30);

    textSize(50);
    text("Has exterminado a todos", 170, 240);
    text("los Topos, buen trabajo !!", 170, 300);  

    push();
    textSize(30);
    fill(255, 0, 0);
    text("Aprieta el boton Rojo para para ir a Inicio", 180, 390);
    pop();

    push();
    textSize(30);
    fill(255, 255, 0);
    text("Aprieta el boton Amarillo para ir a creditos", 150, 520);
    pop();

    //Boton Rojo
    push();
    fill(255, 0, 0);
    stroke(255);
    rect(400, 420, 200, 50);
    pop();

    //Boton Amarillo
    push();
    fill(255, 255, 0);
    stroke(255);
    rect(400, 530, 200, 50);
    pop();
    tC.caenPapeles();
    t.reinicio();
  }

  // Pantalla "Creditos" 

  void estado4() {
    // println(mouseX, mouseY); 
    background(0);
    fill(255, 0, 0);
    textSize(40);
    text("Griguoli Nicolas 88129/3", 200, 300);
    text("Disenio, programacion y direccion", 120, 350);
    text("Tecnologia Multimedial 1", 200, 400);
    text("Profesor: Matias Jauregui Lorda", 120, 450);
    push();
    fill(255, 255, 0);
    text("Aprieta el boton Amarillo para \n                 volver al Inicio", 170, 620);
    pop();
    //Boton Amarillo
    push();
    fill(255, 255, 0);
    stroke(255);
    rect(400, 700, 200, 50);
    pop();
    t.reinicio();
  }

  void colision() {
    t.colision();
  }
  void Estadomouse(){
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
  void juego(){
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
}
