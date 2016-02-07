package Dao;

import java.sql.*;
import java.util.Vector;
import Beans.*;

public class busquedas {
    Connection con;
    CallableStatement cstmt;
    ResultSet rs;


     public especialidad buscaEspecialidad(String codigo) {
      try {
            especialidad   esp = new especialidad();
            conexion cn = new conexion();
            con = cn.conectar();
            CallableStatement Cstmt;
            Cstmt = con.prepareCall("{call BuscarEspecialidad(?)}");
            Cstmt.setString(1, codigo);
            ResultSet rs;
            rs = Cstmt.executeQuery();
            rs.next();
            esp.setIdespecialidad(rs.getString(1));
            esp.setNombre(rs.getString(2));
            return esp;
        } catch (SQLException Ex) {
            System.out.println("Error al Buscar Especialidad");
            return null;
        }
    }


      public servicio buscaServicio(String codigo) {
      try {
            servicio ser = new servicio();
            conexion cn = new conexion();
            con = cn.conectar();
            CallableStatement Cstmt;
            Cstmt = con.prepareCall("{call BuscarServicio(?)}");
            Cstmt.setString(1, codigo);
            ResultSet rs;
            rs = Cstmt.executeQuery();
            rs.next();
            ser.setIdservicio(rs.getString(1));
            ser.setNombre(rs.getString(2));
            ser.setPrecio(rs.getString(3));
            return ser;
        } catch (SQLException Ex) {
            System.out.println("Error al Buscar Especialidad");
            return null;
        }
    }



      public reserva ConfirmarReserva(String a) {
      try {
            reserva  res = new reserva();
            conexion cn = new conexion();
            con = cn.conectar();
            CallableStatement Cstmt;
            Cstmt = con.prepareCall("{call ReservarCita10}");
            ResultSet rs;
            rs = Cstmt.executeQuery();
            return res;
        } catch (SQLException Ex) {
            System.out.println("Error al Buscar Servicio");
            return null;
        }
    }



      public paciente buscaPaciente(String codigo) {
      try {
            paciente   pac = new paciente();
            conexion cn = new conexion();
            con = cn.conectar();
            CallableStatement Cstmt;
            Cstmt = con.prepareCall("{call BuscarPaciente(?)}");
            Cstmt.setString(1, codigo);
            ResultSet rs;
            rs = Cstmt.executeQuery();
            rs.next();

            pac.setCodigo(rs.getString(1));
            pac.setApepaterno(rs.getString(2));
            pac.setApematerno(rs.getString(3));
            pac.setNombres(rs.getString(4));
            pac.setFechanac(rs.getString(5));
            pac.setLugarnac(rs.getString(6));
            pac.setSexo(rs.getString(7));
            pac.setEstadocivil(rs.getString(8));
            pac.setDireccion(rs.getString(9));
            pac.setEmail(rs.getString(10));
            pac.setTelefono(rs.getString(11));
            pac.setFecharegistro(rs.getString(12));
            pac.setObservacion(rs.getString(13));
            pac.setUsuario(rs.getString(14));
            pac.setClave(rs.getString(15));
            pac.setFoto(rs.getString(16));


            return pac;
        } catch (SQLException Ex) {
            System.out.println("Error al Buscar Paciente");
            return null;
        }
    }

 public personal buscaPersonal(String codigo) {
      try {
            personal   per = new personal();
            conexion cn = new conexion();
            con = cn.conectar();
            CallableStatement Cstmt;
            Cstmt = con.prepareCall("{call BuscarPersonal(?)}");
            Cstmt.setString(1, codigo);
            ResultSet rs;
            rs = Cstmt.executeQuery();
            rs.next();

            per.setCodigo(rs.getString(1));
            per.setApellidos(rs.getString(2));
            per.setNombres(rs.getString(3));
            per.setDni(rs.getString(4));
            per.setFechanac(rs.getString(5));
            per.setTelefono(rs.getString(6));
            per.setDireccion(rs.getString(7));
            per.setFechareg(rs.getString(8));
            per.setIdcargo(rs.getString(9));
            per.setIdhorario(rs.getString(10));

            return per;
        } catch (SQLException Ex) {
            System.out.println("Error al Buscar Personal");
            return null;
        }
    }




 public horario buscaHorario(String codigo) {
      try {
            horario hor = new horario();
            conexion cn = new conexion();
            con = cn.conectar();
            CallableStatement Cstmt;
            Cstmt = con.prepareCall("{call BuscarHorario(?)}");
            Cstmt.setString(1, codigo);
            ResultSet rs;
            rs = Cstmt.executeQuery();
            rs.next();
            hor.setIdhorario(rs.getString(1));
            hor.setTurno(rs.getString(2));
            hor.setHorae(rs.getString(3));
            hor.setHoras(rs.getString(4));
            return hor;
        } catch (SQLException Ex) {
            System.out.println("Error al Buscar Horario");
            return null;
        }
    }


  public reserva buscaReserva(String numero) {
      try {
            reserva res = new reserva();
            conexion cn = new conexion();
            con = cn.conectar();
            CallableStatement Cstmt;
            Cstmt = con.prepareCall("{call BuscarReserva(?)}");
            Cstmt.setString(1, numero);
            ResultSet rs;
            rs = Cstmt.executeQuery();
            rs.next();

            res.setNumero(rs.getString(1));
            res.setFecha(rs.getString(2));
            res.setHora(rs.getString(3));
            res.setPaciente(rs.getString(4));
            res.setServicio(rs.getString(5));
            res.setEspecialista(rs.getString(6));
            res.setDescripcion(rs.getString(7));
            return res;
        } catch (SQLException Ex) {
            System.out.println("Error al Buscar Reserva");
            return null;
        }
    }



  public prereserva buscaPreReserva(String paciente,String servicio) {
      try {
            prereserva pre = new prereserva();
            conexion cn = new conexion();
            con = cn.conectar();
            CallableStatement Cstmt;
            Cstmt = con.prepareCall("{call PreReserva2(?,?)}");
            Cstmt.setString(1, paciente);
            Cstmt.setString(2, servicio);

            ResultSet rs;
            rs = Cstmt.executeQuery();
            rs.next();

            pre.setPaciente(rs.getString(1));
            pre.setEspecialista(rs.getString(2));
            pre.setEspecialidad(rs.getString(3));
            pre.setFecha(rs.getString(4));
            pre.setHora(rs.getString(5));
            pre.setServicio(rs.getString(6));
            pre.setPrecio(rs.getString(7));
            return pre;
        } catch (SQLException Ex) {
            System.out.println("Error al Buscar PreReserva");
            return null;
        }
    }



    public reserva buscaHoras(String fecha, String codigo) {
      try {
            reserva res = new reserva();
            conexion cn = new conexion();
            con = cn.conectar();
            CallableStatement Cstmt;
            Cstmt = con.prepareCall("{call DetalleHoras(?,?)}");
            Cstmt.setString(1, fecha);
            Cstmt.setString(2, codigo);
            ResultSet rs;
            rs = Cstmt.executeQuery();
            rs.next();
            res.setHora(rs.getString(1));
            return res;
        } catch (SQLException Ex) {
            System.out.println("Error al Buscar Reserva");
            return null;
        }
    }






      public cargo buscaCargo(String codigo) {
      try {
            cargo car= new cargo();
            conexion cn = new conexion();
            con = cn.conectar();
            CallableStatement Cstmt;
            Cstmt = con.prepareCall("{call BuscarCargo(?)}");
            Cstmt.setString(1, codigo);
            ResultSet rs;
            rs = Cstmt.executeQuery();
            rs.next();
            car.setIdcargo(rs.getString(1));
            car.setNombre(rs.getString(2));
            return car;

        } catch (SQLException Ex) {
            System.out.println("Error al Buscar Especialidad");
            return null;
        }
    }



     public especialista buscaEspecialista(String codigo) {
      try {
            especialista   espe = new especialista();
            conexion cn = new conexion();
            con = cn.conectar();
            CallableStatement Cstmt;
            Cstmt = con.prepareCall("{call BuscarEspecialista(?)}");
            Cstmt.setString(1, codigo);
            ResultSet rs;
            rs = Cstmt.executeQuery();
            rs.next();
            espe.setCodigo(rs.getString(1));
            espe.setApellidos(rs.getString(2));
            espe.setNombre(rs.getString(3));
            espe.setDni(rs.getString(4));
            espe.setTelefono(rs.getString(5));
            espe.setDireccion(rs.getString(6));
            espe.setEspecialidad(rs.getString(7));
            espe.setTurno(rs.getString(8));

              return espe;
        } catch (SQLException Ex) {
            System.out.println("Error al Buscar Especialista");
            return null;
        }
    }


       public especialista buscaEspecialista1(String filtro) {
      try {
            especialista   espe = new especialista();
            conexion cn = new conexion();
            con = cn.conectar();
            CallableStatement Cstmt;
            Cstmt = con.prepareCall("{call BuscarEspecialista1(?)}");
            Cstmt.setString(1, filtro);
            ResultSet rs;
            rs = Cstmt.executeQuery();
            rs.next();
            espe.setCodigo(rs.getString(1));
            espe.setApellidos(rs.getString(2));
            espe.setNombre(rs.getString(3));
            espe.setDni(rs.getString(4));
            espe.setTelefono(rs.getString(5));
            espe.setDireccion(rs.getString(6));
            espe.setEspecialidad(rs.getString(7));
            espe.setTurno(rs.getString(8));

              return espe;
        } catch (SQLException Ex) {
            System.out.println("Error al Buscar Especialista");
            return null;
        }
    }





          public especialista buscaEspecialistaApellido(String apellido) {
           try{
            especialista   espe = new especialista();
            conexion cn = new conexion();
            con = cn.conectar();
            CallableStatement Cstmt;
            Cstmt = con.prepareCall("{call BuscarEspecialistaApellido(?)}");
            Cstmt.setString(1, apellido);
            ResultSet rs;
            rs = Cstmt.executeQuery();
            rs.next();
            espe.setEspecialidad(rs.getString(1));
            espe.setCodigo(rs.getString(2));
            espe.setApellidos(rs.getString(3));
            espe.setNombre(rs.getString(4));
            espe.setDni(rs.getString(5));
            espe.setTelefono(rs.getString(6));
            espe.setDireccion(rs.getString(7));
            espe.setTurno(rs.getString(8));
            return espe;
        } catch (SQLException Ex) {
            System.out.println("Error al Buscar Especialista");
            return null;
        }
    }



           public especialista buscaEspecialistaReserva(String codigo) {
           try{
            especialista   espe = new especialista();
            conexion cn = new conexion();
            con = cn.conectar();
            CallableStatement Cstmt;
            Cstmt = con.prepareCall("{call MostrarEspecialista(?)}");
            Cstmt.setString(1, codigo);
            ResultSet rs;
            rs = Cstmt.executeQuery();
            rs.next();
            espe.setEspecialidad(rs.getString(1));
            espe.setCodigo(rs.getString(2));
            espe.setApellidos(rs.getString(3));
            espe.setNombre(rs.getString(4));
            espe.setDni(rs.getString(5));
            espe.setTelefono(rs.getString(6));
            espe.setDireccion(rs.getString(7));
            espe.setTurno(rs.getString(8));
            return espe;
        } catch (SQLException Ex) {
            System.out.println("Error al Buscar Especialista");
            return null;
        }
    }

   public especialista buscaEspecialistaEspecialidad(String codigo) {
      try {
            especialista   espe = new especialista();
            conexion cn = new conexion();
            con = cn.conectar();
            CallableStatement Cstmt;
            Cstmt = con.prepareCall("{call BuscarEspecialistaEspecialidad(?)}");
            Cstmt.setString(1, codigo);
            ResultSet rs;
            rs = Cstmt.executeQuery();
            rs.next();
            espe.setCodigo(rs.getString(1));
            espe.setApellidos(rs.getString(2));
            espe.setNombre(rs.getString(3));
            espe.setDni(rs.getString(4));
            espe.setTelefono(rs.getString(5));
            espe.setEspecialidad(rs.getString(7));
            return espe;
        } catch (SQLException Ex) {
            System.out.println("Error al Buscar Especialista");
            return null;
        }
    }



        public usuario logeo(String usuario, String clave) {
        try {
            usuario user = new usuario();
            conexion cn = new conexion();
            con = cn.conectar();
            cstmt = con.prepareCall("{call logear(?,?)}");
            cstmt.setString(1, usuario);
            cstmt.setString(2, clave);
            rs = cstmt.executeQuery();
            rs.next();
            user.setApellido(rs.getString(3));
            user.setNombre(rs.getString(4));
            user.setCargo(rs.getString(5));
            user.setFoto(rs.getString(6));
            
            return user;
        } catch (SQLException ex) {
            System.out.println("Error en procedimiento almacenado Iniciar Secion");
            return null;
        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
            }
        }
    }   
        
        
       public paciente logeoPaciente(String usuariopac, String clavepac) {
        try {
            paciente pac = new paciente();
            conexion cn = new conexion();
            con = cn.conectar();
            cstmt = con.prepareCall("{call logear_Paciente(?,?)}");
            cstmt.setString(1, usuariopac);
            cstmt.setString(2, clavepac);
            rs = cstmt.executeQuery();
            rs.next();
            pac.setCodigo(rs.getString(1));
            pac.setApepaterno(rs.getString(2));
            pac.setApematerno(rs.getString(3));
            pac.setNombres(rs.getString(4));
            pac.setFechanac(rs.getString(5));
            pac.setLugarnac(rs.getString(6));
            pac.setSexo(rs.getString(7));
            pac.setEstadocivil(rs.getString(8));
            pac.setDireccion(rs.getString(9));
            pac.setEmail(rs.getString(10));
            pac.setTelefono(rs.getString(11));
            pac.setFecharegistro(rs.getString(12));
            pac.setObservacion(rs.getString(13));
            pac.setUsuario(rs.getString(14));
            pac.setClave(rs.getString(15));
            pac.setFoto(rs.getString(16));

            return pac;
        } catch (SQLException ex) {
            System.out.println("Error");
            return null;
        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
            }
        }
   }
    
    public Vector llenarVectorEsp() {
        Vector aux=new Vector();
        try {
            conexion cn = new conexion();
            con = cn.conectar();
            cstmt = con.prepareCall("{call MostrarEspecialidad}");
            ResultSet rs;
            rs = cstmt.executeQuery();
            while(rs.next()){
                String[] datos=new String[2];
                datos[0]=rs.getString(1);
                datos[1]=rs.getString(2);
               datos[2]=rs.getString(3);
                aux.add(datos);
            }          
            cstmt.close();
            con.close();
            return aux;
        } catch (SQLException ex) {
            System.out.println("Error");
            return null;
        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
            }
        }
    }

        public Vector llenarVectorEspecialista() {
        Vector aux=new Vector();
        try {
            conexion cn = new conexion();
            con = cn.conectar();
            cstmt = con.prepareCall("{call mostraespecialista}");
            ResultSet rs;
            rs = cstmt.executeQuery();
            while(rs.next()){
                String[] datos=new String[2];
                datos[0]=rs.getString(1);
                datos[1]=rs.getString(2);
               datos[2]=rs.getString(3);
                aux.add(datos);
            }
            cstmt.close();
            con.close();
            return aux;
        } catch (SQLException ex) {
            System.out.println("Error");
            return null;
        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
            }
        }
    }



    public Vector llenarVectorTurno() {
        Vector aux=new Vector();
        try {
            conexion cn = new conexion();
            con = cn.conectar();
            cstmt = con.prepareCall("{call MostrarTurno}");
            ResultSet rs;
            rs = cstmt.executeQuery();
            while(rs.next()){
                String[] datos=new String[2];
                datos[0]=rs.getString(1);
                datos[1]=rs.getString(2);
                aux.add(datos);
            }          
            cstmt.close();
            con.close();
            return aux;
        } catch (SQLException ex) {
            System.out.println("Error");
            return null;
        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
            }
        }
    }
}

