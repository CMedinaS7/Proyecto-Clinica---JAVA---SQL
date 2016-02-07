<%@page contentType="text/html" pageEncoding="UTF-8" import=" Dao.conexion,java.sql.*,java.util.Date"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Citas Reservadas</title>
        <link href="estilos/estilos.css" rel="Stylesheet" type="text/css" />
        <link href="estilos/css.css" rel="Stylesheet" type="text/css" />
         <link rel="icon" type="image/png" href="iconos/saludmedical.png" />
    </head>
    <body>
    <center>
                <%
        	String cod=request.getParameter("codigo");
	        String usuario = request.getParameter("nombres") + " " + request.getParameter("apepat") + " " + request.getParameter("apemat");
			
                 %>
              
                <%
                    Connection cn;
                    conexion con = new conexion();
                    try {
                		out.println("<br>");
                        out.println("<td class="+"endocrinologia_txt_destacado"+"><font size=3 face=calibri color=#0067a2><b> Sr.(a) "+usuario+" usted ha reservado las siguientes citas</b></font></td>");
		        		out.println("<br>");
						out.println("<br>");
                        cn = con.conectar();
                        Statement stmt = cn.createStatement();
						String a="exec MostrarHoras '" +cod+ "'";               
						ResultSet rs = stmt.executeQuery(a);
                        out.println("<table border=0 align=center cellpadding=2 cellspacing=0 class=textoGeneral>");
                          out.println("<tr bgcolor=#425454><td width=100 bgcolor=#F5F5F5 class=NCcapitular style=border-bottom:solid 1px #cccccc; padding-left: 10px><center>Fecha</center></td><td width=100 height=23 bgcolor=#F5F5F5 class=NCcapitular style=border-bottom:solid 1px #cccccc; padding-left: 10px><center>Hora</center></td><td width=200 height=18 bgcolor=#F5F5F5 class=NCcapitular style=border-bottom:solid 1px #cccccc><center>Especialista</center></td><td width=99 bgcolor=#F5F5F5 class=NCcapitular style=border-bottom:solid 1px #cccccc><center>Servicio</center></td><td width=100 height=18 bgcolor=#F5F5F5 class=NCcapitular style=border-bottom:solid 1px #cccccc><center>Precio</center></td><td width=100 height=18 bgcolor=#F5F5F5 class=NCcapitular style=border-bottom:solid 1px #cccccc><center>Especialidad</center></td></tr>");
                        while (rs.next()) {

	    					out.println("<td class=textoGeneral><center><b><font color=" + "626262"+ " size="+"2px" +" face="+"tahoma>"+rs.getString(1)+"</font></b></center></td>");
                            out.println("<td class=textoGeneral><center><b><font color=" + "626262"+ " size="+"2px" +" face="+"tahoma>"+rs.getString(2)+"</font></b></center></td>");
							out.println("<td class=textoGeneral><center><b><font color=" + "626262"+ " size="+"2px" +" face="+"tahoma>"+rs.getString(3)+"</font></b></center></td>");
							out.println("<td class=textoGeneral><center><b><font color=" + "626262"+ " size="+"2px" +" face="+"tahoma>"+rs.getString(4)+"</font></b></center></td>");
							out.println("<td class=textoGeneral><center><b><font color=" + "626262"+ " size="+"2px" +" face="+"tahoma>"+rs.getString(5)+"</font></b></center></td>");
							out.println("<td class=textoGeneral><center><b><font color=" + "626262"+ " size="+"2px" +" face="+"tahoma>"+rs.getString(6)+"</font></b></center></td>");
							
							out.println("</tr>");     
                        }
                      
                %>
                <%
                    } catch (SQLException ex) {
                        System.out.println(ex.toString());
                    }         

%>


            
    </CENTER>
    </body>
</html>
