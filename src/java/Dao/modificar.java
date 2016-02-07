/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Dao;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
/**
 *
 * @author CarlosM
 */
public class modificar extends HttpServlet {

    Connection cn;
   
       public boolean modificaPersonal(String codigo,String apellidos, String nombres,String dni, String fechanac,
       String telefono, String direccion, String fechareg, String cargo, String horario){
       boolean resultado=false;

    try{
        int filas=0;
        conexion con=new conexion();
        cn=con.conectar();
        CallableStatement cstmt;
        cstmt=cn.prepareCall("{call ModificarPersonal(?,?,?,?,?,?,?,?,?,?)}");
        cstmt.setString(1, codigo);
        cstmt.setString(2, apellidos);
        cstmt.setString(3, nombres);
        cstmt.setString(4, dni);
        cstmt.setString(5, fechanac);
        cstmt.setString(6, telefono);
        cstmt.setString(7, direccion);
        cstmt.setString(8, fechareg);
        cstmt.setString(9, cargo);
        cstmt.setString(10, horario);

            filas=cstmt.executeUpdate();
            if(filas>=1){
            resultado= true;
            cstmt.close();
            }

    }catch(SQLException ex){  System.out.print("Error en el procedimiento Modificar Personal ");}
        finally{
        return resultado;
        }
}
public boolean modificaPaciente1(String codigo,String apepaterno,String apematerno,String nombre,String fechanac,String lugarnac,String sexo,String estado,String direccion,String telefono,String fechareg, String observacion , String email, String foto, String usuario, String clave ){
        boolean resultado=false;

    try{
        int filas=0;
        conexion con=new conexion();
        cn=con.conectar();
        CallableStatement cstmt;
        cstmt=cn.prepareCall("{call ModificarPaciente1(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}");
        cstmt.setString(1, codigo);
        cstmt.setString(2, apepaterno);
        cstmt.setString(3, apematerno);
        cstmt.setString(4, nombre);
        cstmt.setString(5, fechanac);
        cstmt.setString(6, lugarnac);
        cstmt.setString(7, sexo);
        cstmt.setString(8, estado);
        cstmt.setString(9, direccion);
        cstmt.setString(10, email);
        cstmt.setString(11, telefono);
        cstmt.setString(12, fechareg);
        cstmt.setString(13, observacion);
        cstmt.setString(14, usuario);
        cstmt.setString(15, clave);
        cstmt.setString(16, foto);


            filas=cstmt.executeUpdate();
            if(filas>=1){
            resultado= true;
            cstmt.close();
            }

    }catch(SQLException ex){  System.out.print("Error en el procedimiento ModificarPaciente1");}
        finally{
        return resultado;
        }
}

        public boolean modificaPaciente(String codigo,String apepaterno,String apematerno,String nombre,String fechanac,String lugarnac,String sexo,String estado,String direccion,String telefono,String fechareg, String observacion , String email, String foto ){
        boolean resultado=false;

    try{
        int filas=0;
        conexion con=new conexion();
        cn=con.conectar();
        CallableStatement cstmt;
        cstmt=cn.prepareCall("{call ModificarPaciente(?,?,?,?,?,?,?,?,?,?,?,?,?,?)}");
        cstmt.setString(1, codigo);
        cstmt.setString(2, apepaterno);
        cstmt.setString(3, apematerno);
        cstmt.setString(4, nombre);
        cstmt.setString(5, fechanac);
        cstmt.setString(6, lugarnac);
        cstmt.setString(7, sexo);
        cstmt.setString(8, estado);
        cstmt.setString(9, direccion);
        cstmt.setString(10, email);
        cstmt.setString(11, telefono);
        cstmt.setString(12, fechareg);
        cstmt.setString(13, observacion);
        cstmt.setString(14, foto);
        

            filas=cstmt.executeUpdate();
            if(filas>=1){
            resultado= true;
            cstmt.close();
            }

    }catch(SQLException ex){  System.out.print("Error en el procedimiento ModificarPaciente");}
        finally{
        return resultado;
        }
}


        public boolean modificaEspecialista(String codigo,String apellidos,String nombre,String dni,String telefono,String direccion,String especialidad, String horario ){
        boolean resultado=false;

    try{
        int filas=0;
         conexion con=new conexion();
        cn=con.conectar();
        CallableStatement cstmt;
        cstmt=cn.prepareCall("{call ModificarEspecialista(?,?,?,?,?,?,?,?)}");
        cstmt.setString(1, codigo);
        cstmt.setString(2, apellidos);
        cstmt.setString(3, nombre);
        cstmt.setString(4, dni);
        cstmt.setString(5, telefono);
        cstmt.setString(6, direccion);
        cstmt.setString(7, especialidad);
        cstmt.setString(8, horario);

            filas=cstmt.executeUpdate();
            if(filas>=1){
            resultado= true;
            cstmt.close();
            }

    }catch(SQLException ex){  System.out.print("Error en el procedimiento ModificarEspecialista");}
        finally{
        return resultado;
        }
}



   public boolean modificaReserva(String codigo,String Fecha,String Hora, String IdPac, String IdSer, String IdEsp, String Desc, String Pre)
{
   boolean resultado=false;

    try{
        int filas=0;
        conexion con=new conexion();
        cn=con.conectar();
        CallableStatement cstmt;
        cstmt=cn.prepareCall("{call ModificarReserva(?,?,?,?,?,?,?,?)}");
        cstmt.setString(1, codigo);
        cstmt.setString(2, Fecha);
        cstmt.setString(3, Hora);
        cstmt.setString(4, IdPac);
        cstmt.setString(5, IdSer);
        cstmt.setString(6, IdEsp);
        cstmt.setString(7, Desc);
        cstmt.setString(8, Pre);

            filas=cstmt.executeUpdate();
            if(filas>=1){
            resultado= true;
            cstmt.close();
            }

    }catch(SQLException ex){  System.out.print("Error en el procedimiento ModificarReserva");}
        finally{
        return resultado;
        }
}


   public boolean modificaServicio(String codigo,String name,String precio ){

   boolean resultado=false;

    try{
        int filas=0;
        conexion con=new conexion();
        cn=con.conectar();
        CallableStatement cstmt;
        cstmt=cn.prepareCall("{call ModificarServicio(?,?,?)}");
        cstmt.setString(1, codigo);
        cstmt.setString(2, name);
        cstmt.setString(3, precio);

            filas=cstmt.executeUpdate();
            if(filas>=1){
            resultado= true;
            cstmt.close();
            }

    }catch(SQLException ex){  System.out.print("Error en el procedimiento ModificarServicio");}
        finally{
        return resultado;
        }
}


    public boolean modificaClave(String codigo,String usuario,String clave,String clave1 ){

   boolean resultado=false;

    try{
        int filas=0;
        conexion con=new conexion();
        cn=con.conectar();
        CallableStatement cstmt;
        cstmt=cn.prepareCall("{call ModificarClavePaciente(?,?,?,?)}");
        cstmt.setString(1, codigo);
        cstmt.setString(2, usuario);
        cstmt.setString(3, clave);
        cstmt.setString(4, clave1);

            filas=cstmt.executeUpdate();
            if(filas>=1){
            resultado= true;
            cstmt.close();
            }

    }catch(SQLException ex){  System.out.print("Error en el procedimiento ModificarClavePaciente");}
        finally{
        return resultado;
        }
}




   public boolean modificaEspecialidad(String codigo,String nombre){

   boolean resultado=false;

    try{
        int filas=0;
        conexion con=new conexion();
        cn=con.conectar();
        CallableStatement cstmt;
        cstmt=cn.prepareCall("{call ModificarEspecialidad(?,?)}");
        cstmt.setString(1, codigo);
        cstmt.setString(2, nombre);
            filas=cstmt.executeUpdate();
            if(filas>=1){
            resultado= true;
            cstmt.close();
            }

    }catch(SQLException ex){  System.out.print("Error en el procedimiento ModificarEspecialidad");}
        finally{
        return resultado;
        }
}


   public boolean modificaCargo(String codigo,String nombre){

   boolean resultado=false;

    try{
        int filas=0;
        conexion con=new conexion();
        cn=con.conectar();
        CallableStatement cstmt;
        cstmt=cn.prepareCall("{call ModificarCargo(?,?)}");
        cstmt.setString(1, codigo);
        cstmt.setString(2, nombre);
            filas=cstmt.executeUpdate();
            if(filas>=1){
            resultado= true;
            cstmt.close();
            }
    }catch(SQLException ex){  System.out.print("Error en el procedimiento ModificarCargo");}
        finally{
        return resultado;
        }
}


   public boolean modificaHorario(String codigo,String nombre,String horae,String horas){

   boolean resultado=false;

    try{
        int filas=0;
        conexion con=new conexion();
        cn=con.conectar();
        CallableStatement cstmt;
        cstmt=cn.prepareCall("{call ModificarHorario(?,?,?,?)}");
        cstmt.setString(1, codigo);
        cstmt.setString(2, nombre);
        cstmt.setString(3, horae);
        cstmt.setString(4, horas);
            filas=cstmt.executeUpdate();
            if(filas>=1){
            resultado= true;
            cstmt.close();
            }

    }catch(SQLException ex){  System.out.print("Error en el procedimiento ModicarHorario");}
        finally{
        return resultado;
        }
}




    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    private void processRequest(HttpServletRequest request, HttpServletResponse response) {
        throw new UnsupportedOperationException("Not yet implemented");
    }

}
