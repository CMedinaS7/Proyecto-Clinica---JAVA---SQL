/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Dao;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author CarlosM
 */
public class borrar {
 public boolean eliminarPersonal(String codigo){
        int filas;

        boolean resultado = false;
        Connection cn = null;
        try{
            conexion con=new conexion();
            cn=con.conectar();
            CallableStatement Cstmt;
            Cstmt=cn.prepareCall("{call EliminarPersonal(?)}");
            Cstmt.setString(1, codigo);
            filas=Cstmt.executeUpdate();
            if(filas>=1){
            resultado= true;
               Cstmt.close();
            }
        }catch(SQLException ex){System.out.println("Error al Borrar Personal");}
    finally{
        try{
            cn.close();
        }catch(SQLException ex1){System.out.println("No existio Conexion");}
    }
    return resultado;
    }

 public boolean eliminarPaciente(String codigo){
        int filas;

        boolean resultado = false;
        Connection cn = null;
        try{
            conexion con=new conexion();
            cn=con.conectar();
            CallableStatement Cstmt;
            Cstmt=cn.prepareCall("{call EliminarPaciente(?)}");
            Cstmt.setString(1, codigo);
            filas=Cstmt.executeUpdate();
            if(filas>=1){
            resultado= true;
               Cstmt.close();
            }
        }catch(SQLException ex){System.out.println("Error al Borrar Paciente");}
    finally{
        try{
            cn.close();
        }catch(SQLException ex1){System.out.println("No existio Conexion");}
    }
    return resultado;
    }

 public boolean eliminarHorario(String codigo){
        int filas;

        boolean resultado = false;
        Connection cn = null;
        try{
            conexion con=new conexion();
            cn=con.conectar();
            CallableStatement Cstmt;
            Cstmt=cn.prepareCall("{call EliminarHorario(?)}");
            Cstmt.setString(1, codigo);
            filas=Cstmt.executeUpdate();
            if(filas>=1){
            resultado= true;
               Cstmt.close();
            }
        }catch(SQLException ex){System.out.println("Error al Borrar Horario");}
    finally{
        try{
            cn.close();
        }catch(SQLException ex1){System.out.println("No existio Conexion");}
    }
    return resultado;
    }

 public boolean eliminarCargo(String codigo){
        int filas;

        boolean resultado = false;
        Connection cn = null;
        try{
            conexion con=new conexion();
            cn=con.conectar();
            CallableStatement Cstmt;
            Cstmt=cn.prepareCall("{call EliminarCargo(?)}");
            Cstmt.setString(1, codigo);
            filas=Cstmt.executeUpdate();
            if(filas>=1){
            resultado= true;
               Cstmt.close();
            }
        }catch(SQLException ex){System.out.println("Error al Borrar Cargo");}
    finally{
        try{
            cn.close();
        }catch(SQLException ex1){System.out.println("No existio Conexion");}
    }
    return resultado;
    }


 public boolean eliminarEspecialidad(String codigo){
        int filas;

        boolean resultado = false;
        Connection cn = null;
        try{
            conexion con=new conexion();
            cn=con.conectar();
            CallableStatement Cstmt;
            Cstmt=cn.prepareCall("{call EliminarEspecialidad(?)}");
            Cstmt.setString(1, codigo);
            filas=Cstmt.executeUpdate();
            if(filas>=1){
            resultado= true;
               Cstmt.close();
            }
        }catch(SQLException ex){System.out.println("Error al Borrar Especialidad");}
    finally{
        try{
            cn.close();
        }catch(SQLException ex1){System.out.println("No existio Conexion");}
    }
    return resultado;
    }


     public boolean eliminarServicio(String codigo){
        int filas;

        boolean resultado = false;
        Connection cn = null;
        try{
            conexion con=new conexion();
            cn=con.conectar();
            CallableStatement Cstmt;
            Cstmt=cn.prepareCall("{call EliminarServicio(?)}");
            Cstmt.setString(1, codigo);
            filas=Cstmt.executeUpdate();
            if(filas>=1){
            resultado= true;
               Cstmt.close();
            }
        }catch(SQLException ex){System.out.println("Error al Borrar Servicio");}
    finally{
        try{
            cn.close();
        }catch(SQLException ex1){System.out.println("No existio Conexion");}
    }
    return resultado;
    }

        public boolean eliminarReserva(String codigo){
        int filas;

        boolean resultado = false;
        Connection cn = null;
        try{
            conexion con=new conexion();
            cn=con.conectar();
            CallableStatement Cstmt;
            Cstmt=cn.prepareCall("{call EliminarReserva(?)}");
            Cstmt.setString(1, codigo);
            filas=Cstmt.executeUpdate();
            if(filas>=1){
            resultado= true;
               Cstmt.close();
            }
        }catch(SQLException ex){System.out.println("Error al Borrar Reserva");}
    finally{
        try{
            cn.close();
        }catch(SQLException ex1){System.out.println("No existio Conexion");}
    }
    return resultado;
    }


        public boolean eliminarEspecialista(String codigo){
        int filas;

        boolean resultado = false;
        Connection cn = null;
        try{
            conexion con=new conexion();
            cn=con.conectar();
            CallableStatement Cstmt;
            Cstmt=cn.prepareCall("{call EliminarEspecialista(?)}");
            Cstmt.setString(1, codigo);
            filas=Cstmt.executeUpdate();
            if(filas>=1){
            resultado= true;
               Cstmt.close();
            }
        }catch(SQLException ex){System.out.println("Error al Borrar Especialista");}
    finally{
        try{
            cn.close();
        }catch(SQLException ex1){System.out.println("No existio Conexion");}
    }
    return resultado;
    }



}
