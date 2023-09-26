//Modualo Pantalla de juego
//Elaborado por - Jairo Padilla Nava IDGS - 102
//Fecha de creación - 18-09-23
//Fecha de Ultima modificacion - 20-09-23
//Creación de Videojuegos - Ruben Dario Hernández Mendo
//Descripción: Pantalla del juego

class PantGame{
  PantGame(){}
  
  void display(){
    background(0);
    fill(255);
    stroke(255);
    textAlign(CENTER,CENTER);
    text(idi.getMensaje(0),540,350);
  }
}
