class Velocimetro {

  int [] v1={0, 20, 40, 60, 80, 100};

  //Constructor (funciona como setup de codigo fuente) 
  Velocimetro() {
  }

  void rectangulo() {
    push();
    strokeWeight(10); 
    fill(120);
    rect(25, 230, 600, 150);
    valorVelocimetro();
    pop();
  }

  void valorVelocimetro() {
    push();
    fill(0, 255, 0);
    textSize(25);
    text(v1[0], 75, 300);
    text(v1[1], 150, 300);
    pop();

    push();
    fill(255, 255, 0);
    textSize(25);
    text(v1[2], 250, 300);
    text(v1[3], 350, 300);
    pop();

    push();
    fill(255, 0, 0);
    textSize(25);
    text(v1[4], 450, 300);
    text(v1[5], 550, 300);
    pop();
  }
}
