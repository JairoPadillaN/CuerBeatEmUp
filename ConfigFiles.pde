//Modulo ConfigFiles
//Elaborado por - Jairo Padilla Nava IDGS - 102
//Fecha de creación - 25-09-23
//Fecha de Ultima modificación - 25-09-23
//Creación de Videojuegos - Ruben Dario Hernández Mendo
//Descripción: define la claseConfigFiles,la cuál permite configurar ciertas caracteristicas del juego para que sean cargadasdurante el arranque

class ConfigFiles{
    
    String file[];
    String save;

    //parametros a salvar (La lista ira creciendo)
    int lang; // idioma activo en valor numerico directo
    int ns; //numero de mensaje de idioma
    
    ConfigFiles(){
        file= loadStrings("config.dat");
        loadConfig();
    }

    void loadConfig(){
        int i;
        for( i = 0; i < file.length; i++ ){
            if( isData("languaje",i) ) lang =  loadData(i);
            if( isData("langstr",i) ) ns =  loadData(i);
        }
    }

    boolean isData( String s, int d ){
        return split( file[d], '=' ) [0].equals( "#"+ s );        
    }

    int loadData( int d ){
        return int(split(file[d],'=')[1]);
    }

    boolean loadBoolData( int d ){
        return split(file[d],'=')[1].equals("ON");
    }

    String loadStringData( int d ){
        return split(file[d],'=')[1];
    }

    float loadFloatData( int d ){
        return float(split(file[d],'=')[1]);
    }

    void saveConfig(Idiomas i){
        lang = i.getidioma();
        save = "";
        addSave( "languaje", lang );
        addSave( "langstr", ns );
        file = split( save, ";" );
        saveStrings( "data/config.dat", file );
    }

    void addSave(String s, int d){
        save = save + "#" + s + "=" + d + ";";
    }

    void addSave(String s, boolean d){
        save = save + "#" + s + "=" + ((d)?"ON":"OFF") + ";";
    }

    void addSave(String s, String d){
        save = save + "#" + s + "=" + d + ";";
    }

    void addSave(String s, float d){
        save = save + "#" + s + "=" + d + ";";
    }

}
