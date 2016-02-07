<%@page contentType="text/html" pageEncoding="UTF-8" import=" Dao.conexion,java.sql.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Detalle Reservas</title>
        <link href="estilos/estilos.css" rel="Stylesheet" type="text/css" />
        <link href="estilos/css.css" rel="Stylesheet" type="text/css" />
         <link rel="icon" type="image/png" href="iconos/saludmedical.png" />
    </head>
    <body>
    
              
                <%
                    Connection cn;
                    conexion con = new conexion();
                    try {
                	    cn = con.conectar();
                        Statement stmt = cn.createStatement();
                        String a="select apellidos + ' '+ nombre as 'especialista'  from especialista where activo='true';";
                        ResultSet rs = stmt.executeQuery(a);
						out.println("<ul>");
                        while (rs.next()) {
                            out.println("<li>"+rs.getString(1)+"</li>");
                        }
						out.println("</ul>");
                      
                %>
                <%
                    } catch (SQLException ex) {
                        System.out.println(ex.toString());
                    }         
                %>
            

    </body>
</html>
