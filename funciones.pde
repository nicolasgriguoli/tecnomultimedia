void personaje (int v) {
  
//imagen de homero con variable x1 para el movimiento
  image (homero, x1, y1);
  //condicion de movimiento para derecha
  if (x1>=v) {
    x1=v;
  }
  //condicion de movimiento para izquierda
  if (x1<=0) {
    x1=1;
  }
}


void comida (int n, int d) {
  

  image (donas[0], posX, posY); 
  image (donas[1], posX1, posY1); 
  image (donas[2], posX2, posY2); 
 image (donas[3], posX3, posY3); 
  image (donas[4], posX4, posY4);
  image (donas[5], posX5, posY5); 
  image (donas[6], posX6, posY6); 
  image (donas[7], posX7, posY7); 
  
  posY++;
  posY1++;
  posY2++;
  posY3++;
  posY4++;
  posY5++;
  posY6++;
  posY7++;
  
if (posY>=n){
 // player.rewind();
  posY=d;
}
if (posY1>=n){
  //player.rewind();
  posY1=d;
}
if (posY2>=n){
  //player.rewind();
  posY2=d;
}
 if (posY3>=n){
   //player.rewind();
  posY3=d; 
  
 }
 
 if (posY4>=n){
   //player.rewind();
  posY4=d;
 }
  if (posY5>=n){
    
  posY5=d;
 }
  if (posY6>=n){
   
  posY6=d;
 }
  if (posY7>=n){
    
  posY7=d;
 }
 
}

   
void Estad1() {
  image (fondo, 0,0);
  personaje(450);
  comida (600, -10);
  colision(70, 90, 40, 30, -10);
 //texto de puntos en esquina derecha
fill (0);
text ("Puntos:"+p, 2.8*width/4, 20);
}

void inicio(){
  
   background (0);
  fill (255, 255, 0);
  textSize(50);
  text ("Bienvenido a", 160, 100);
  text ("La gula de Homero", 90, 150 );
  pushMatrix();
  textSize(20);
  text ("Tu objetivo es saciar el hambre de homero", 120, 250);
  text ("pero cuidado con los baldes toxicos", 135, 300);
  text ("PRESIONA ENTER PARA EMPEZAR", 150, 365);
  text("PRESIONA I PARA VER INSTRUCCIONES", 120, 465);
  popMatrix();
  stroke (76, 76, 76);
  noFill();
  strokeWeight(4);
  rect (70, 40, 500, 140);
  rect(100, 325, 440, 60);
  rect(100, 425, 440, 60);
}
  
  

void colision (int t, int m, int h, int q, int e){
 
  //dist para colision y p=p+1 para que sume los puntos cuando colisiona
  if (dist (x1+t, y1+m, posX+h, posY+h) < q) {
    posX=200 ;
    posY=e ;
    p=p+1;
  }
  
  if (dist (x1+t, y1+m, posX1+h, posY1+h) < q) {
    posX1= 420;
    posY1=e ;
    p=p+1;
  }
  if (dist (x1+t, y1+m, posX2+h, posY2+h) < q) {
    posX2=47;
    posY2=e ;
    p=p+1;
  }
  if (dist (x1+t, y1+m, posX3+h, posY3+h) < q) {
    posX3=300;
    posY3=e;
    p=p+1;
  }
  if (dist (x1+t, y1+m, posX4+h, posY4+h) < q) {
    posX4=480;
    posY4=e ;
    p=p+1;
  }
  
  //a tal cantidad de puntos gana
  if (p==10){
    Estado=2;
  }
    
  //cuando colisiona con un barril pierde
  if (dist (x1+t, y1+m, posX5+h, posY5+h) < q) {
    Estado=3;
  }
    if (dist (x1+t, y1+m, posX6+h, posY6+h) < q) {
    Estado=3;
    }
    if (dist (x1+t, y1+m, posX7+h, posY7+h) < q) {
    Estado=3;
    }
  }

//pantalla ganadora
void Estado2() {
  background (ganar);
  textSize(50);
  text ("!GANASTE!", 170, 100);
  textSize(30);
  text ("HOMERO ESTA SATISFECHO", 100, 150);
  stroke(4);
  rect (70,210, 500, 60);
  text ("Presiona 'c' para ver los creditos", 90, 250);
  rect (70,310, 500, 60);
  text ("Presiona 'm' para volver al menu", 90, 350);
}
//pantalla perdedora
void Estado3(){
  background (perder);
   textSize(50);
  text ("!PERDISTE!", 170, 100);
  textSize(30);
  text ("INTOXICASTE A HOMERO", 100, 150);
  stroke(4);
  rect (70,210, 500, 60);
  text ("Presiona 'c' para ver los creditos", 90, 250);
  rect (70,310, 500, 60);
  text ("Presiona 'm' para volver al menu", 90, 350);
  
  
}
//pantalla creditos
void Estado4(){
  background (113,207,245);
  textSize (30);
  text("Produccion disenio y desarrollo por:", 30,70);
  text(" Lajoinie Delfina \n Griguoli Nicolas", 150, 150);
  text("Tecnologia Multimedial 1", 110,280);
  text("Profesor: Matias Jauregui Lorda", 55,360);
  stroke (4);
  rect (60, 410, 500, 60);
  text ("Presiona 'm' para volver al menu", 80, 450);
  
 
}

void Estado5 (){
  background(0);
    text ("Recibes un punto por cada dona que comas", 100, 100);
    text ("al llegar a las 10 ganas", 175, 150);
  text ("pero si comes un balde toxico, pierdes" ,100, 200);
  image (flechas, 230, 200, 160, 150);
  text ("debes utilizar las flechas mostradas para controlar", 50, 350);
  text ("a homero", 270, 400);
  text ("suerte y que empiece el juego" ,150, 500);
    text ("PRESIONA ENTER PARA EMPEZAR" ,130, 550);
}
 //reinicio volviendo variables a valor original
 
void reinicio(){
  
  Estado=0;
    cantDonasb = 8;
    x1= 250; 
    y1=450;
    p=0;
   posX=200; //posicion X dona rosa
  posX1=420; //posicion X dona azul
  posX2=47; //posicion X dona violeta
  posX3=300; //posicion X dona verde
  posX4= 480; //posicion X dona marron
  posX5 = 123; //posicion X barril 1
  posX6= 300; //posicion X barril 2
  posX7= 450 ; //posicion X barril 3
  posY=-392; //posicion Y dona rosa
  posY1=-191; //posicion Y dona azul
  posY2=-80; //posicion Y dona violeta
  posY3=100; //posicion Y dona verde
  posY4= -29; // posicion Y dona marron
  posY5= -70; // posicion Y barril 1
  posY6=-180; //posicion X barril 2
  posY7= - 250; // //posicion X
}
