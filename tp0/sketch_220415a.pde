void setup () { 
  background(255); 
  size(400, 400);
  textSize(30);
}

void draw() {

  //Fondo
  fill (#6ED2E3); 
  rect(0,0, width, height );
 
 
  fill (#E36EB2); 
  rect(0, 200, width, height );



  //TEXTO 
  fill(0);
  text("South Park", 120, 360);

  //Pieces
  fill(0);
  ellipse(200, 320, 120, 20);

  //Piernas
  fill(57, 99, 94);
  rect(145, 290, 110, 30, 5);

  //Cuerpo
  fill(253, 95, 19);
  rect(135, 200, 130, 100, 5);

  //Cuello / bufanda 
  fill(33, 152, 53);
  ellipse(200, 180, 130, 95);

  //Cara 

  //Cabeza 
  fill(250, 214, 165);
  ellipse(200, 150, 155, 140);

  //Boca
  bezier(170, 190, 180, 170, 220, 190, 230, 180);

  //Ojos 

  //Ojo 1
  fill(255);
  ellipse(175, 140, 35, 50);

  //Pupila 1 
  fill(0);
  circle(175, 150, 5);

  //Ojo 2
  fill(255);
  ellipse(225, 140, 35, 50);

  //Pupila 2 
  fill(0);
  circle(225, 150, 5);

  //Brazo Derecho 
  fill (253, 95, 19);  
  triangle(136, 190, 109, 273, 148, 209);

  //Mano Derecha 
  fill(85, 198, 35);
  circle(110, 270, 35);
  circle(122, 266, 10);

  //Brazo Izquierdo 
  fill (253, 95, 19);
  triangle(264, 190, 290, 271, 254, 207);

  //Mano izquierda
  fill(85, 198, 35);
  circle(288, 270, 35);
  circle(275, 266, 10);

  //Gorro (verde mas claro)
  fill(85, 198, 35);
  rect(120, 40, 160, 70, 15);

  //Tira del gorro (parte izquierda) 
  fill(85, 198, 35);
  ellipse(130, 130, 20, 100);

  //Tira del gorro (parte derecha) 
  fill(85, 198, 35);
  ellipse(270, 130, 20, 100);

  //Gorro (verde mas oscuro)
  fill(33, 152, 53);
  rect(130, 65, 140, 50, 10);
}
void mousePressed() {
  println(mouseX, mouseY);
}
