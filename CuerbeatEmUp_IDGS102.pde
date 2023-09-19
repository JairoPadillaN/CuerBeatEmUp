//Proyecto CuerbeatEmUp
//Elaborado por - Jairo Padilla Nava IDGS - 102
//Fecha de creación - 13-09-23
//Fecha de Ultima modificacion - 18-09-23
//Creación de Videojuegos - Ruben Dario Hernández Mendo
//Descripción: Es un juego donde un personaje se agarra a golpes y patadas contra una banda de maleantes

//Componentes
  //Identificacion de Pantallas
  final int PANTPRIN = 0;
  final int PANTGAME = 1;
  final int PANTLOAD = 2;
  
  //PImage icon;
  
  GameControl gc;

void setup(){

  //icon = loadImage("icon.png");
  size(1080,700); // se establece el tamaño de la pantalla del jeugo
  windowMove(50,30); //Se establece la localizacion de la ventana
  windowTitle("CuerbeatEmpUp - The Game"); //  Se establece el titulo del juego

  gc = new GameControl();
}


void draw(){
 
 gc.display();
  
}

void mouseReleased(){

  gc.mouseControl(mouseX, mouseY, mouseButton);

}

void keyReleased(){

  gc.keyControl(key);

}
