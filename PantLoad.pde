//Modualo Pantalla de carga
//Elaborado por - Jairo Padilla Nava IDGS - 102
//Fecha de creación - 18-09-23
//Fecha de Ultima modificacion - 20-09-23
//Creación de Videojuegos - Ruben Dario Hernández Mendo
//Descripción: Pantalla de carga

class PantLoad{
  PantLoad(){}
  
  void display(){
    background(128);
    fill(255);
    stroke(255);
    textAlign(CENTER,CENTER);
    text(idi.getMensaje(1),540,350);
  }
}
