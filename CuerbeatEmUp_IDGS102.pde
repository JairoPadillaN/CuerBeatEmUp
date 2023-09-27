//Proyecto CuerbeatEmUp
//Elaborado por - Jairo Padilla Nava IDGS - 102
//Fecha de creación - 13-09-23
//Fecha de Ultima modificación - 25-09-23
//Creación de Videojuegos - Ruben Dario Hernández Mendo
//Descripción: Es un juego donde un personaje se agarra a golpes y patadas contra una banda de maleantes

//Componentes
  
  //Pantallas
  final int PANTPRIN = 0;
  final int PANTGAME = 1;
  final int PANTLOAD = 2;
  //Idiomas
  final int IDESP = 0;
  final int IDENG = 1;
  final int IDPOR = 2;
  final int IDFRE = 3;
  final int IDCHI = 4;
  
  //PImage icon;
  
  PFont typtitle;
  GameControl gc;
  Idiomas idi;
  ConfigFiles cf;

void setup(){

  //icon = loadImage("icon.png");
  size(1080,700); // se establece el tamaño de la pantalla del jeugo
  windowMove(50,30); //Se establece la localizacion de la ventana
  windowTitle("CuerbeatEmpUp - The Game"); //  Se establece el titulo del juego
  typtitle = createFont("Arial",32);
  textFont(typtitle);
  cf = new ConfigFiles();
  idi = new Idiomas(cf.lang,cf.ns);
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
