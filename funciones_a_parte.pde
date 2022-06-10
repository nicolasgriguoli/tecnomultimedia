//Circulos

void circulos() {

  for (int a=100; a< 500; a+=10) {
    for (int b=100; b< 500; b+=10) {
      if (a%2==0) 
        fill(50, random(0, 255), 255);
      if (b%3==1)  
        fill(150, random(0, 255), 255);
      ellipse(a, b, 10, 10);
    }
  }
}

//Cuadrados

void cuadrados() {

  for (int a=0; a< width; a+=5) {
    for (int b=0; b< height; b+=5) {
      if (a%2==0)
        fill(150, random(0, 255), random(0, 255));
      if (b%3==1)  
        fill(0, random(0, 255), 255);
      rect(a, b, 20, 30);
    }
  }
}

void espiral() {

  //Probar ambos ;) 

  stroke(10);
  //noStroke();

  //Para dbujar un espiral, debemoos multiplicar seno y coseno para que crezca o decrezca
  for (float n=0; n<360; n+=15) {
    //Grados pasados a radianes 
    float angle=radians(n);

    //Condicion para hacer espirales, seno y coseno roten 
    float X = width/2 + (cos(angle)*radio);
    float Y = height/2 + (sin(angle)*radio);

    //Color Y
    if (X>width/2 && Y>height/2) {
      fill(random(100, 255),random(0, 255), 100);
    }
    
  ellipse(X, Y, 10, 10);

    //velocidad y amplitud a partir del radio

    radio=radio+0.05;
  }
}
