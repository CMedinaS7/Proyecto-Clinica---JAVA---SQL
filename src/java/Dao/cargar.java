/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Dao;
import java.sql.*;
import java.util.Vector;
/**
 *
 * @author IES
 */
public class cargar {
    Connection cn=null;
    ResultSet rs=null;     
public Vector devuelveCodigoEspecialista()
{
    Vector aux=new Vector();                 
    try
    {
    conexion con = new conexion();
    CallableStatement Cstmt;
    cn = con.conectar();
    Cstmt = cn.prepareCall("{call mostraespecialista}");
    rs = Cstmt.executeQuery();
    while (rs.next())
    {
      String[] datos=new String[2];
      datos[0]=rs.getString(1);  
      datos[1]=rs.getString(2);
      aux.add(datos);          
    }
    }
    catch(SQLException ex)
    { 
            System.out.println("Error en procedimiento");
            System.out.println("Error en consulta");
    }
    return aux;
}    




public Vector devuelveCodigoServicio()
{
    Vector aux=new Vector();
    try
    {
    conexion con = new conexion();
    CallableStatement Cstmt;
    cn = con.conectar();
    Cstmt = cn.prepareCall("{call MostrarServicio}");
    rs = Cstmt.executeQuery();
    while (rs.next())
    {
      String[] datos=new String[2];
      datos[0]=rs.getString(1);
      datos[1]=rs.getString(2);

      aux.add(datos);
    }
    }
    catch(SQLException ex)
    {
            System.out.println("Error en procedimiento");
            System.out.println("Error en consulta");
    }
    return aux;
}





public Vector devuelveCodigoEspecialidad()
{
    Vector aux=new Vector();                 
    try
    {
    conexion con = new conexion();
    CallableStatement Cstmt;
    cn = con.conectar();
    Cstmt = cn.prepareCall("{call MostrarEspecialidad}");
    rs = Cstmt.executeQuery();
    while (rs.next())
    {
      String[] datos=new String[2];
      datos[0]=rs.getString(1);
      datos[1]=rs.getString(2);
          
      aux.add(datos);          
    }
    }
    catch(SQLException ex)
    { 
            System.out.println("Error en procedimiento");
            System.out.println("Error en consulta");
    }
    return aux;
} 



public Vector devuelveturno()
{
    Vector aux=new Vector();                 
    try
    {
    conexion con = new conexion();
    CallableStatement Cstmt;
    cn = con.conectar();
    Cstmt = cn.prepareCall("{call MostrarTurno}");
    rs = Cstmt.executeQuery();
    while (rs.next())
    {
      String[] datos=new String[2];
      datos[0]=rs.getString(1);
      datos[1]=rs.getString(2);
      
      aux.add(datos);          
    }
    }
    catch(SQLException ex)
    { 
            System.out.println("Error en procedimiento");
            System.out.println("Error en consulta");
    }
    return aux;
}

public Vector devuelvecargo()
{
    Vector aux=new Vector();
    try
    {
    conexion con = new conexion();
    CallableStatement Cstmt;
    cn = con.conectar();
    Cstmt = cn.prepareCall("{call MostrarCargo}");
    rs = Cstmt.executeQuery();
    while (rs.next())
    {
      String[] datos=new String[2];
      datos[0]=rs.getString(1);
      datos[1]=rs.getString(2);
      
      aux.add(datos);
    }
    }
    catch(SQLException ex)
    {
            System.out.println("Error en procedimiento");
            System.out.println("Error en consulta");
    }
    return aux;
}

}
