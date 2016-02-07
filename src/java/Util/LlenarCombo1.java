/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Util;
import java.util.Vector;
import Dao.cargar;
/**
 *
 * @author IES
 */
public class LlenarCombo1 
{
    public Vector llenarEspecialista()
    {
        cargar buscador=new cargar();
        Vector Aux=new Vector();
        if (buscador.devuelveCodigoEspecialista()!=null)
        {
         return Aux=buscador.devuelveCodigoEspecialista();
        }
        else
        {
            return null;
        }
    }



       public Vector llenarEspecialidad()
    {
        cargar buscador=new cargar();
        Vector Aux=new Vector();
        if (buscador.devuelveCodigoEspecialidad()!=null)
        {
         return Aux=buscador.devuelveCodigoEspecialidad();
        }
        else
        {
            return null;
        }
    }


          public Vector llenarServicio()
    {
        cargar buscador=new cargar();
        Vector Aux=new Vector();
        if (buscador.devuelveCodigoServicio()!=null)
        {
         return Aux=buscador.devuelveCodigoServicio();
        }
        else
        {
            return null;
        }
    }

          public Vector llenarCargo()
    {
        cargar buscador=new cargar();
        Vector Aux=new Vector();
        if (buscador.devuelvecargo()!=null)
        {
         return Aux=buscador.devuelvecargo();
        }
        else
        {
            return null;
        }
    }
    
       public Vector llenarTurno()
    {
        cargar buscador=new cargar();
        Vector Aux=new Vector();
        if (buscador.devuelveturno()!=null)
        {
         return Aux=buscador.devuelveturno();
        }
        else
        {
            return null;
        }
    }
}
    
