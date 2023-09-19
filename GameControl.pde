//Proyecto CuerbeatEmUp
//Elaborado por - Jairo Padilla Nava IDGS - 102
//Fecha de creación - 18-09-23
//Fecha de Ultima modificación - 18-09-23
//Creación de Videojuegos - Ruben Dario Hernández Mendo
//Descripción: Controlador del juego

class GameControl{

  int pantact;
  
  PantPrin pantprin;
  PantGame pantgame;
  PantLoad pantload;
  
  
  GameControl(){
  pantprin = new PantPrin();
  pantgame = new PantGame();
  pantload = new PantLoad();
  pantact = PANTPRIN;  
}
  
  
void display(){
  switch( pantact ){
    case PANTPRIN: pantprin.display();
      break;
    case PANTGAME: pantgame.display();
      break;
    case PANTLOAD: pantload.display();
      break;
  }  
}

void setPantAct(int p){
  pantact = p;
}
 
int getrPantAct(){
  return pantact;
}

void nextPantAct(){
  pantact ++;
  if(pantact > PANTLOAD )
    pantact = PANTPRIN;
}

void prevPantAct(){
  pantact --;
  if(pantact < PANTPRIN )
    pantact = PANTLOAD;
}

void mouseControl(int x, int y, int b){

  if (b == LEFT)
    nextPantAct();
      else
    prevPantAct();
  
}

void keyControl(char k){
  switch(k){
    case '+': nextPantAct();
      break;
    case '-': nextPantAct();
      break;
  }
}  
  
}
