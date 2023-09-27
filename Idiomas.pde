//Proyecto CuerbeatEmUp
//Elaborado por - Jairo Padilla Nava IDGS - 102
//Fecha de creación - 20-09-23
//Fecha de Ultima creación - 20-09-23
//Creación de Videojuegos - Ruben Dario Hernández Mendo
//Descripción: Modulo de idiomas controslara la seleccion de idioma inglés y español y los mensajes correspondientes

class Idiomas{
    
    String idiomas[][]; //contiene los mensajes en dos idiomas
    String file[];      //Contiene el archivo de idioma a copiar
    int idiact;         //idioma activo    
    int nm;             //numero de mensajes en total

    Idiomas(int i, int n){
        idiact = i;
        nm = n;
        idiomas = new String[nm][5];
        cargaIdioma(IDESP);
        cargaIdioma(IDENG);
        cargaIdioma(IDPOR);
        cargaIdioma(IDFRE);
        cargaIdioma(IDCHI);
    }

    void cargaIdioma(int i){
        int n;
        file = loadStrings( ( i == IDESP ) ? "esp.lang" : "eng.lang");
        for( n = 0; n < nm; n++ )
            idiomas [n][i] = split(file[n], "=")[1];
    }

    void setidioma(int i){
        idiact = i;
    }

    int getidioma(){
        return idiact;
    }

    String getMensaje(int i){
        return idiomas[i][idiact];
    }
}