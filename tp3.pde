//https://youtu.be/_oxUkUTXm9Q
//TP3: JUEGO INTERACTIVO LIBRE


////audio
//import ddf.minim.*;

//Minim minim;
//AudioPlayer player;


//imagenes
PImage homero;
PImage ganar;
PImage perder;
PImage fondo;
PImage flechas;

//fuente
PFont fuente;

//variables donas +barril
int cantDonasb = 8;
//variable de estado 
int Estado=0;
//variables de movimiento
int posX; 
int posX1;
int posX2;
int posX3;
int posX4;
int posX5;
int posX6;
int posX7;
int posY;
int posY1;
int posY2;
int posY3;
int posY4;
int posY5;
int posY6;
int posY7;

//arrays 
PImage [] donas = new PImage [cantDonasb];
String [] nombre = {"1.png", "2.png", "3.png", "4.png", "5.png", "6.png", "7.png", "8.png"};

//variables homero
int x1= 250; 
int y1=450;
//variable puntos
int p=0;


void setup() {
  size (600, 600);
  
  //subo el audio.
  
  //minim= new Minim(this);
  //player= minim.loadFile ("doh.mp3");
  
  //ciclo for para donas (declara todos los arrays de las donas al mismo tiempo)
  for (int a=0; a<nombre.length; a++) {
    donas [a] = loadImage (nombre[a]);

    //carga de fuente
    fuente = createFont ("Simpsonfont DEMO.otf", 30);
    textFont(fuente);
  }

  //carga imagenes
  homero= loadImage ("homero.png");
  flechas =loadImage ("flechas.png");
  fondo= loadImage ("fondo.jpg");
  ganar= loadImage ("ganar.png");
  perder= loadImage ("perder.jpg");
  
  //declaramos valor de las posX y posY
  posX=200; //posicion X dona rosa
  posX1=420; //posicion X dona azul
  posX2=47; //posicion X dona violeta
  posX3=290; //posicion X dona verde
  posX4= 480; //posicion X dona marron
  posX5 = 123; //posicion X barril 1
  posX6= 300; //posicion X barril 2 
  posX7= 50 ; //posicion X barril 3 
  posY=-392; //posicion Y dona rosa
  posY1=-191; //posicion Y dona azul
  posY2=-80; //posicion Y dona violeta
  posY3=100; //posicion Y dona verde
  posY4= -29; // posicion Y dona marron
  posY5= -70; // posicion Y barril 1
  posY6=-100; //posicion Y barril 2 
  posY7= -250; // //posicion Y barril 3
}

void draw() {

  inicio();
  //player.play();
  if (Estado==1) {
    Estad1();
  } else if (Estado==3) {
    Estado3();
  } else if (Estado==2) {
    Estado2();
  } else if (Estado==4) {
    Estado4();
  }
  else if (Estado==5) {
    Estado5();
}
}


void keyPressed() {
  
 

  if (Estado==0 && keyCode== ENTER) {
    Estado = 1;
  } if (Estado==0 && key=='i') {
    Estado = 5;
  
  } else if (Estado==1 &&  keyCode == LEFT) {
    x1-=5;
  } else if (Estado==1 && keyCode == RIGHT) {
    x1+=5;
  } else if ( Estado==2 && key == 'm') {
   reinicio();
  } else if ( Estado==3 && key == 'm') {
  reinicio();
  } else if ( Estado==2 && key =='c') {
    Estado=4;
  } else if ( Estado==3 && key == 'c') {
    Estado=4;
  } else if (Estado==4 && keyCode == ENTER) {
    reinicio();
    
  } else if (Estado==4 && key == 'm' ) {
    reinicio();
    
  }
  else if (Estado==5 && keyCode==ENTER) {
    Estado=1;
  }
}
