
package Util;
import java.util.Vector;
import Dao.busquedas;

public class llenarcombo {
    busquedas busca=new busquedas();

    public Vector llenarespecialidad(){
        Vector aux=busca.llenarVectorEsp();
        return aux;
    }

     public Vector llenarespecialista(){
        Vector aux=busca.llenarVectorEspecialista();
        return aux;
    }

        public Vector llenarservicio(){
        Vector aux=busca.llenarVectorEsp();
        return aux;
    }

    public Vector llenarturno(){
        Vector aux=busca.llenarVectorTurno();
        return aux;
    }

        public Vector llenarcargo(){
        Vector aux=busca.llenarVectorTurno();
        return aux;
    }
}
