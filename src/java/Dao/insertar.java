/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Dao;
import java.sql.*;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author CarlosM
 */
public class insertar extends HttpServlet {
   
  public boolean insertpaciente(String apepaterno,String apematerno,String nombre,String fechanac,String lugarnac,String sexo,String estado,String direccion,String telefono,String fechareg, String observacion,String email,String foto,String usuario,String clave ){
    boolean resultado=false;
    Connection cn=null;
    try{
        conexion con=new conexion();
        cn=con.conectar();
        CallableStatement cstmt;
        cstmt=cn.prepareCall("{call InsertarPaciente(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}");
        cstmt.setString(1, apepaterno);
        cstmt.setString(2, apematerno);
        cstmt.setString(3, nombre);
        cstmt.setString(4, fechanac);
        cstmt.setString(5, lugarnac);
        cstmt.setString(6, sexo);
        cstmt.setString(7, estado);
        cstmt.setString(8, direccion);
        cstmt.setString(9, email);
        cstmt.setString(10, telefono);
        cstmt.setString(11, fechareg);
        cstmt.setString(12, observacion);
        cstmt.setString(13, usuario);
        cstmt.setString(14, clave);
        cstmt.setString(15, foto);
        int fila=cstmt.executeUpdate();
        if(fila>=1){
            resultado=true;
        }
        cstmt.close();
    }catch(SQLException ex){System.out.println("Error al Insertar Paciente");}
    finally{
        try{
            cn.close();
        }catch(SQLException ex1){System.out.println("No existio Conexion");}
    }
    return resultado;
    }


  public boolean insertpaciente1(String apepaterno,String apematerno,String nombre,String fechanac,String lugarnac,String sexo,String estado,String direccion,String email,String telefono,String fechareg, String observacion, String usuario,String clave,String foto ){
    boolean resultado=false;
    Connection cn=null;
    try{
        conexion con=new conexion();
        cn=con.conectar();
        CallableStatement cstmt;
        cstmt=cn.prepareCall("{call InsertarPaciente1(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}");
        cstmt.setString(1, apepaterno);
        cstmt.setString(2, apematerno);
        cstmt.setString(3, nombre);
        cstmt.setString(4, fechanac);
        cstmt.setString(5, lugarnac);
        cstmt.setString(6, sexo);
        cstmt.setString(7, estado);
        cstmt.setString(8, direccion);
        cstmt.setString(9, email);
        cstmt.setString(10, telefono);
        cstmt.setString(11, fechareg);
        cstmt.setString(12, observacion);
        cstmt.setString(13, usuario);
        cstmt.setString(14, clave);
        cstmt.setString(15, foto);
        int fila=cstmt.executeUpdate();
        if(fila>=1){
            resultado=true;
        }
        cstmt.close();
    }catch(SQLException ex){System.out.println("Error al Insertar Paciente");}
    finally{
        try{
            cn.close();
        }catch(SQLException ex1){System.out.println("No existio Conexion");}
    }
    return resultado;
    }

  public boolean inserthistorial(String paciente,String especialista,String fecha,String descripcion,String receta){
    boolean resultado=false;
    Connection cn=null;
    try{
        conexion con=new conexion();
        cn=con.conectar();
        CallableStatement cstmt;
        cstmt=cn.prepareCall("{call InsertarHistorial(?,?,?,?,?)}");
        cstmt.setString(1, paciente);
        cstmt.setString(2, especialista);
        cstmt.setString(3, fecha);
        cstmt.setString(4, descripcion);
        cstmt.setString(5, receta);
        int fila=cstmt.executeUpdate();
        if(fila>=1){
            resultado=true;
        }
        cstmt.close();
    }catch(SQLException ex){System.out.println("Error al Insertar Historial del Paciente");}
    finally{
        try{
            cn.close();
        }catch(SQLException ex1){System.out.println("No existio Conexion");}
    }
    return resultado;
    }



  public boolean insertpersonal(String apellidos,String nombres,String dni,String fechanac,String telefono,String direccion,String fechareg,String cargo,String horario){
    boolean resultado=false;
    Connection cn=null;
    try{
        conexion con=new conexion();
        cn=con.conectar();
        CallableStatement cstmt;
        cstmt=cn.prepareCall("{call InsertarPersonal(?,?,?,?,?,?,?,?,?)}");
        cstmt.setString(1, apellidos);
        cstmt.setString(2, nombres);
        cstmt.setString(3, dni);
        cstmt.setString(4, fechanac);
        cstmt.setString(5, telefono);
        cstmt.setString(6, direccion);
        cstmt.setString(7, fechareg);
        cstmt.setString(8, cargo);
        cstmt.setString(9, horario);
  
        int fila=cstmt.executeUpdate();
        if(fila>=1){
            resultado=true;
        }
        cstmt.close();
    }catch(SQLException ex){System.out.println("Error al Insertar Personal");}
    finally{
        try{
            cn.close();
        }catch(SQLException ex1){System.out.println("No existio Conexion");}
    }
    return resultado;
    }



    public boolean insertPreReserva(String especialista,String fecha,String hora){
    boolean resultado=false;
    Connection cn=null;
    try{
        conexion con=new conexion();
        cn=con.conectar();
        CallableStatement cstmt;
        cstmt=cn.prepareCall("{call InsertarPreReserva(?,?,?)}");
        cstmt.setString(1, especialista);
        cstmt.setString(2, fecha);
        cstmt.setString(3, hora);

        int fila=cstmt.executeUpdate();
        if(fila>=1){
            resultado=true;
        }
        cstmt.close();
    }catch(SQLException ex){System.out.println("Error al Insertar Personal");}
    finally{
        try{
            cn.close();
        }catch(SQLException ex1){System.out.println("No existio Conexion");}
    }
    return resultado;
    }



    public boolean insertPreReserva1(String paciente,String servicio){
    boolean resultado=false;
    Connection cn=null;
    try{
        conexion con=new conexion();
        cn=con.conectar();
        CallableStatement cstmt;
        cstmt=cn.prepareCall("{call PreReserva1(?,?)}");
        cstmt.setString(1, paciente);
        cstmt.setString(2, servicio);
        int fila=cstmt.executeUpdate();
        if(fila>=1){
            resultado=true;
        }
        cstmt.close();
    }catch(SQLException ex){System.out.println("Error al Insertar Personal");}
    finally{
        try{
            cn.close();
        }catch(SQLException ex1){System.out.println("No existio Conexion");}
    }
    return resultado;
    }




public boolean insertespecialista(String apellidos,String nombre,String dni,String telefono,String direccion,String especialidad, String horario ){
    boolean resultado=false;
    Connection cn=null;
    try{
        conexion con=new conexion();
        cn=con.conectar();
        CallableStatement cstmt;
        cstmt=cn.prepareCall("{call InsertarEspecialista(?,?,?,?,?,?,?)}");
        cstmt.setString(1, apellidos);
        cstmt.setString(2, nombre);
        cstmt.setString(3, dni);
        cstmt.setString(4, telefono);
        cstmt.setString(5, direccion);
        cstmt.setString(6, especialidad);
        cstmt.setString(7, horario);
        int fila=cstmt.executeUpdate();
        if(fila>=1){
            resultado=true;
        }
        cstmt.close();
    }catch(SQLException ex){System.out.println("Error al Insertar Especialista");}
    finally{
        try{
            cn.close();
        }catch(SQLException ex1){System.out.println("No existio Conexion");}
    }
    return resultado;
}

public boolean inserReser(String Fecha,String Hora, String IdPac, String IdSer, String IdEsp, String Desc)
{
    boolean  resultado=false;
     Connection cn=null;
try{
conexion con=new conexion();
cn=con.conectar();
CallableStatement cstmt;
    cstmt=cn.prepareCall("{call ReservarCita(?,?,?,?,?,?)}");
    cstmt.setString(1, Fecha);
    cstmt.setString(2, Hora);
    cstmt.setString(3, IdPac);
    cstmt.setString(4, IdSer);
    cstmt.setString(5, IdEsp);
    cstmt.setString(6, Desc);
    int fila=cstmt.executeUpdate();
    if(fila>=1){
         resultado=true;
    }
    cstmt.close();
    }catch(SQLException ex){System.out.println("Error al Insertar Reserva");}
    finally{
        try{
            cn.close();
        }catch(SQLException ex1){System.out.println("No existio Conexion");}
    }
    return resultado;
}

public boolean insertservicio(String name,String precio ){
    boolean resultado=false;
    Connection cn=null;
    try{
        conexion con=new conexion();
        cn=con.conectar();
        CallableStatement cstmt;
        cstmt=cn.prepareCall("{call InsertarServicio(?,?)}");
        cstmt.setString(1, name);
        cstmt.setString(2, precio);
        int fila=cstmt.executeUpdate();
        if(fila>=1){
            resultado=true;
        }
        cstmt.close();
    }catch(SQLException ex){System.out.println("Error al Insertar Servicio");}
    finally{
        try{
            cn.close();
        }catch(SQLException ex1){System.out.println("No existio Conexion");}
    }
    return resultado;
}


 public boolean insertespecialidad(String nombre){
    boolean resultado=false;
    Connection cn=null;
    try{
        conexion con=new conexion();
        cn=con.conectar();
        CallableStatement cstmt;
        cstmt=cn.prepareCall("{call InsertarEspecialidad(?)}");
        cstmt.setString(1, nombre);
        int fila=cstmt.executeUpdate();
        if(fila>=1){
            resultado=true;
        }
        cstmt.close();
    }catch(SQLException ex){System.out.println("Error al Insertar Especialidad");}
    finally{
        try{
            cn.close();
        }catch(SQLException ex1){System.out.println("No existio Conexion");}
    }
    return resultado;
    }


 public boolean insertecargo(String nombre){
    boolean resultado=false;
    Connection cn=null;
    try{
        conexion con=new conexion();
        cn=con.conectar();
        CallableStatement cstmt;
        cstmt=cn.prepareCall("{call InsertarCargo(?)}");
        cstmt.setString(1, nombre);
        int fila=cstmt.executeUpdate();
        if(fila>=1){
            resultado=true;
        }
        cstmt.close();
    }catch(SQLException ex){System.out.println("Error al Insertar Cargo");}
    finally{
        try{
            cn.close();
        }catch(SQLException ex1){System.out.println("No existio Conexion");}
    }
    return resultado;
    }

  public boolean addusuario(String usuario,String clave,String apellidos,String nombre,String cargo,String foto){
    boolean resultado=false;
    Connection cn=null;
    try{
        conexion con=new conexion();
        cn=con.conectar();
        CallableStatement cstmt;
        cstmt=cn.prepareCall("{call Asignarusuario(?,?,?,?,?,?)}");
        cstmt.setString(1, usuario);
        cstmt.setString(2, clave);
        cstmt.setString(3, apellidos);
        cstmt.setString(4, nombre);
        cstmt.setString(5, cargo);
        cstmt.setString(6, foto);


        int fila=cstmt.executeUpdate();
        if(fila>=1){
            resultado=true;
        }
        cstmt.close();
    }catch(SQLException ex){System.out.println("Error al Asignar Usuario");}
    finally{
        try{
            cn.close();
        }catch(SQLException ex1){System.out.println("No existio Conexion");}
    }
    return resultado;
    }

public boolean inserthorario(String nombre,String horae,String horas){
    boolean resultado=false;
    Connection cn=null;
    try{
        conexion con=new conexion();
        cn=con.conectar();
        CallableStatement cstmt;
        cstmt=cn.prepareCall("{call InsertarHorario(?,?,?)}");
        cstmt.setString(1, nombre);
        cstmt.setString(2, horae);
        cstmt.setString(3, horas);
        int fila=cstmt.executeUpdate();
        if(fila>=1){
            resultado=true;
        }
        cstmt.close();
    }catch(SQLException ex){System.out.println("Error al Insertar Horario");}
    finally{
        try{
            cn.close();
        }catch(SQLException ex1){System.out.println("No existio Conexion");}
    }
    return resultado;
    }

}

  
  
