
velocimetroCompleto vC;

void setup() {
  size (650, 600);
  vC = new velocimetroCompleto();
}

void draw() {

  vC.juego();
}

void keyPressed() {
  vC.teclas();
}
