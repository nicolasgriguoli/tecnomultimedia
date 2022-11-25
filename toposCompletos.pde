class toposCompletos {
  Topos  t;
  Colisiones c;

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
    c = new Colisiones();

    pantinicio = loadImage("pantalla inicio.png");
    pantperder = loadImage("perder.png");
    pantjuego = loadImage("game.png");
    pantganar = loadImage("ganar.png");

    //Carga Fuente 
    tipografia = createFont ("DestroyEarthRoughBB.ttf", 30);
    textFont(tipografia);
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
    c.mazo();
    t.puntaje();
    t.estadPantallas();
    t.contador();
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
}
