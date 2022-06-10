/*
Tp2: ilusion optica 
 Griguoli Nicolas 
 Legajo: 88129/3 
Link Youtube: https://youtu.be/LjKSIYhvt7g
*/

float radio=0;

void setup() {
  size(600, 600);
  background(0);
}

void draw() {
  
  if (keyPressed) {
    if (key=='d') {
      background(0);
    } else if (key=='a') {
      espiral();
    } else if  (key=='w') { 
      background(0);
      cuadrados();
      circulos();
    }
  }
}

void keyPressed() {

  if (key=='s') {
    radio=0;
  }
}

//void mousePressed() {
//  println(mouseX, mouseY);
//}
