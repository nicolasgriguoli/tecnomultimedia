
//Declaracion de Imagenes 

PImage ilustracion0;
PImage ilustracion1;
PImage ilustracion2;
PImage ilustracion3;
PImage ilustracion4;
PImage ilustracion5;
PImage ilustracion6;
PImage ilustracion7;
PImage ilustracion8;
PImage ilustracion9;
PImage ilustracion10;
PImage ilustracion11;
PImage ilustracion12;

//Declaracion de Tipografia 
PFont xiaolin; 

//Declaracion de Strings 
String credit1;
String credit2;
String credit3;
String credit4;
String credit5;
String credit6;
String credit6_1;
String credit7;
String credit8;
String credit9;
String credit10;
String credit11;
String credit12;
String credit13;
String credit14;
String credit15;
String credit16;
String credit17;
String credit18;
String credit19;
String credit20;
String credit21;
String credit22;
String credit23;
String credit24;
String credit25;
String credit26;
String credit27;
String credit28;
String credit29;
String credit30;
String credit31;
String credit32;
String credit33;
String credit34;
String credit35;
String credit36;
String credit37;
String credit38;
String credit39;
String credit40;
String credit41;
String credit42;
String credit43;
String credit44;
String credit45;
String credit46;
String credit47;
String credit48;
String credit49;
String credit50;

//Declaracion de Varibale Tiempo 
int tiempo; 

//Declaracion de Variable X e Y en texto 
int posX, posX2, posX3;
int posY, posY2, posY3, posY4, posY5;


void setup() {
  size(1000, 600);

  //Asignacion de Color Line y Grosor 
  stroke(255, 200, 40);
  strokeWeight(3);

  // Asignacion de Imagenes (0-14)
  ilustracion0=loadImage("doc0.png");
  ilustracion1=loadImage("doc1.png");
  ilustracion2=loadImage("doc2.png");
  ilustracion3=loadImage("doc3.png");
  ilustracion4=loadImage("doc4.png");
  ilustracion5=loadImage("doc5.png");
  ilustracion6=loadImage("doc6.png");
  ilustracion7=loadImage("doc7.png");
  ilustracion8=loadImage("doc8.png");
  ilustracion9=loadImage("doc9.png");
  ilustracion10=loadImage("doc10.png");
  ilustracion11=loadImage("doc11.png");
  ilustracion12=loadImage("doc12.png");


  //Asignacion de Tipografia 
  xiaolin=createFont("Chinatown Champs.ttf", 10);
  textFont(xiaolin);

  //Asignacion de Credit(0-50)

  //Director 
  credit1=("Director");
  credit2=("Steve Lyons");

  //Escritores, productores y realizadores 
  credit3=("XIAOLIN SHOWDOWN THEME");
  credit4=("Written, Produced and Performed By");
  credit5=("Chris Vrenna and Clint Walsh");

  //Musica 
  credit6=("Music By"); 
  credit6_1=("Kevin Manthei");

  //Voces de Personjaes 
  credit7=("Starring the Voices of");
  credit8=("Rene Auberjonois   as   Master Fung & Narrator");
  credit9=("Jeff Bennett   as   Clay");
  credit10=("Danny Cooksey   as   Jack Spicer");
  credit11=("Grey Delisle   as   Kimiko");
  credit12=("Tom Kenny   as   Raimundo");
  credit13=("Wayne Knight   as   Dojo");
  credit14=("Susan Silo   as   Wuya");
  credit15=("Tara Strong   as   Omi");

  //Gionistas Graficos 
  credit16=("Storyboard");
  credit17=("Steve Lyons \n Mike Sosnowski \n Debra Pugh");
  credit18=("Bob Foster \n Jeff Allen \n Matt Danner");
  credit19=("Dan Riba \n Keo Thongkham");

  //Diseñadores de personajes 
  credit20=("Character Design");
  credit21=("Shellie Kvilvang \n Lois M.Lee");

  //Director de Filmacion 
  credit22=("Film Editor");
  credit23=("Rob DeSales");

  //Sonidistas 
  credit24=("Sound Reading");
  credit25=("Carol Iverson \n Fred Salinas");

  //Editores de sonido 
  credit26=("Sound Editors");
  credit27=("Roy Braverman \n Jeff Hutchins \n Brian Mars \n Daisuke Sawa ");

  //Productor Ejecutivo 
  credit28=("Executive Producer");
  credit29=("Sander Schwartz");

  //Asignacion Variable Tiempo 
  tiempo= 0 ;

  //Asignacion Variable en X e Y
  posX=370;
  posX2=100;
  posX3=500;

  posY=100;
  posY2=105;
  posY3=200;
  posY4=200;
  posY5=400;

  //Asignacion Variables (arriba, abajo, derecha, izquierda)
  //arriba=
}

void draw() {

  textSize(30);
  tiempo=tiempo+1;

  println(tiempo);
  background(0);
  fill(0);
  //Imagen 0
  image(ilustracion0, 0, 0, 1000, 600); 

  //Imagen 1 
  if (tiempo >= 70) 
    image(ilustracion1, 0, 0, 1000, 600);

  if (tiempo>=100) {
    text(credit1, 430, 265); 
    line(430, 275, 560, 275);
    text(credit2, 410, 310);
  }

  //Imagen 2 
  if (tiempo>=130) {
    image(ilustracion2, 0, 0, 1000, 600);
    text(credit3, 330, 215);
    text(credit4, 215, 245);
    line(220, 255, 760, 255);
    text(credit5, 290, 290);
  }
  //Imagen 3 
  if (tiempo>=160)
    image(ilustracion3, 0, 0, 1000, 600);

  if (tiempo>=170) {
    text(credit6, 430, 265); 
    line(430, 270, 550, 270);
    text(credit6_1, 390, 300);
  }

  //Imagen 4 
  if (tiempo>=180)
    image(ilustracion4, 0, 0, 1000, 600);

  if (tiempo>=190) {
    fill(0);
    text(credit7, 350, 100);
    line(350, 110, 675, 105);
    text(credit8, 170, 145);
    text(credit9, 235, 185);
    text(credit10, 207, 225);
    text(credit11, 248, 265);
    text(credit12, 270, 305);
    text(credit13, 230, 345);
    text(credit14, 275, 385);
    text(credit15, 240, 425);
  }

  //Imagen 5 
  if (tiempo>=260)
    image(ilustracion5, 0, 0, 1000, 600);

  if ( tiempo>=265) {
    text(credit16, 420, posY);

    line(420, posY2, 590, posY2);
    text(credit17, 115, posY3);
    text(credit18, 675, posY4);
    text(credit19, 420, posY5);

    posY=posY-1;
    posY2=posY2-1;
    posY3=posY3-1;
    posY4=posY4-1;
    posY5=posY5-1;
  } 

  //Imagen 6 
  if (tiempo>=350)
    image(ilustracion6, 0, 0, 1000, 600);

  if (tiempo>=400) {
    text(credit20, 370, 200);    
    line(365, 210, 635, 210);
  }
  if (tiempo>=470) {

    text(credit21, posX2, 260);
    posX2=posX2+2;
  }

  //Imagen 7 
  if (tiempo>=580) {
    image(ilustracion7, 0, 0, 1000, 600);
    text(credit22, 430, 160);
    line(430, 170, 600, 170);
    text(credit23, posX3, 260);
    posX3=posX3-2;
  }

  //Imagen 8
  if (tiempo>=680) {
    image(ilustracion8, 0, 0, 1000, 600);
    text(credit24, 400, 100);
    line(400, 110, 610, 110);
    text(credit25, 400, 150);
  }

  //Imagen 9
  if (tiempo>=780) 
    image(ilustracion9, 0, 0, 1000, 600);

  //Imagen 10
  if (tiempo>=820) {
    image(ilustracion10, 0, 0, 1000, 600);
    text(credit26, 410, 150);
    line(410, 160, 610, 160);
    text(credit27, 410, 220);
  }

  //Imagen 11
  if (tiempo>=920) {
    image(ilustracion11, 0, 0, 1000, 600);
    text(credit28, 370, 100);
    line(370, 110, 660, 110);
    text(credit29, 370, 150);
  }
  
  //Imagen 12 
  if (tiempo>=1070) {
    image(ilustracion12, 0, 0, 1000, 600);
    text("apretar boton para reinciar", 300, 50);
  
   fill(220,20,60);
    stroke(255);
    rect(400, 300, 200, 50);
  }
}

//Reinicio 

void mousePressed() {
  if (mouseX>=400 && mouseX<=600 && mouseY>=300 && mouseY<=350) {
    tiempo= 0 ;
    posX=370;
    posX2=100;
    posX3=500;

    posY=100;
    posY2=105;
    posY3=200;
    posY4=200;
    posY5=400;
  }
}
