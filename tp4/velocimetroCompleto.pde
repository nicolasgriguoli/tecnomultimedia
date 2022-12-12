class velocimetroCompleto {
  Velocimetro v;
  Aguja a;
  Fondo f;

  velocimetroCompleto () {
    a = new Aguja();
    v=new Velocimetro();
    f = new Fondo();
  }

  void juego() {
    f.autopista();
    v.rectangulo();
    a.lineas();
    a.manecilla();
  }
 
 void teclas(){
   if(keyCode==ENTER || key== 'p') {
     a.acelerar();
     f.movimiento();
   }
   if (key== 'w') {
     a.desacelerar();
     f.movimiento();
   }
 }
 
}
