<%@page contentType="text/html" pageEncoding="UTF-8" import=" Dao.conexion,java.sql.*,java.util.Date"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Detalle Reservas</title>
        <link href="estilos/estilos.css" rel="Stylesheet" type="text/css" />
        <link href="estilos/css.css" rel="Stylesheet" type="text/css" />
    </head>
    <body>
    <center>
                <%
        	String consulta=request.getParameter("consulta");
			
                 %>
              
                <%
                    Connection cn;
                    conexion con = new conexion();
                    try {
                		out.println("<br>");
                        out.println("<td class="+"endocrinologia_txt_destacado"+"><font size=3 face=calibri color=#0067a2><b> El resultado de la consulta es la siguiente</b></font></td>");
		        		out.println("<br>");
						out.println("<br>");
                        cn = con.conectar();
                        Statement stmt = cn.createStatement();
						String a=consulta;               
						ResultSet rs = stmt.executeQuery(a);
                        out.println("<table border=0 align=center cellspacing=0 class=textoGeneral>");
                          out.println("<tr bgcolor=#425454><td bgcolor=#F5F5F5 class=NCcapitular style=border-bottom:solid 1px #cccccc; padding-left: 2px></td><td bgcolor=#F5F5F5 class=NCcapitular style=border-bottom:solid 1px #cccccc; padding-left: 2px></td><td bgcolor=#F5F5F5 class=NCcapitular style=border-bottom:solid 1px #cccccc; padding-left: 2px></td><td bgcolor=#F5F5F5 class=NCcapitular style=border-bottom:solid 1px #cccccc; padding-left: 2px></td><td bgcolor=#F5F5F5 class=NCcapitular style=border-bottom:solid 1px #cccccc; padding-left: 2px></td><td bgcolor=#F5F5F5 class=NCcapitular style=border-bottom:solid 1px #cccccc; padding-left: 2px></td><td bgcolor=#F5F5F5 class=NCcapitular style=border-bottom:solid 1px #cccccc; padding-left: 2px></td><td bgcolor=#F5F5F5 class=NCcapitular style=border-bottom:solid 1px #cccccc; padding-left: 2px></td><td bgcolor=#F5F5F5 class=NCcapitular style=border-bottom:solid 1px #cccccc; padding-left: 2px></td><td bgcolor=#F5F5F5 class=NCcapitular style=border-bottom:solid 1px #cccccc; padding-left: 2px></td><td bgcolor=#F5F5F5 class=NCcapitular style=border-bottom:solid 1px #cccccc; padding-left: 2px></td><td bgcolor=#F5F5F5 class=NCcapitular style=border-bottom:solid 1px #cccccc; padding-left: 2px></td><td bgcolor=#F5F5F5 class=NCcapitular style=border-bottom:solid 1px #cccccc; padding-left: 2px></td><td bgcolor=#F5F5F5 class=NCcapitular style=border-bottom:solid 1px #cccccc; padding-left: 2px></td><td bgcolor=#F5F5F5 class=NCcapitular style=border-bottom:solid 1px #cccccc; padding-left: 2px></td></tr>");
						  
                        while (rs.next()) {

	    					out.println("<td class=textoGeneral><center><b><font color=" + "626262"+ " size="+"1px" +" face="+"tahoma>"+rs.getString(1)+"</font></b></center></td>");
                            out.println("<td class=textoGeneral><center><b><font color=" + "626262"+ " size="+"1px" +" face="+"tahoma>"+rs.getString(2)+"</font></b></center></td>");
							out.println("<td class=textoGeneral><center><b><font color=" + "626262"+ " size="+"1px" +" face="+"tahoma>"+rs.getString(3)+"</font></b></center></td>");
							out.println("<td class=textoGeneral><center><b><font color=" + "626262"+ " size="+"1px" +" face="+"tahoma>"+rs.getString(4)+"</font></b></center></td>");
                            out.println("<td class=textoGeneral><center><b><font color=" + "626262"+ " size="+"1px" +" face="+"tahoma>"+rs.getString(5)+"</font></b></center></td>");
							out.println("<td class=textoGeneral><center><b><font color=" + "626262"+ " size="+"1px" +" face="+"tahoma>"+rs.getString(6)+"</font></b></center></td>");
							out.println("<td class=textoGeneral><center><b><font color=" + "626262"+ " size="+"1px" +" face="+"tahoma>"+rs.getString(7)+"</font></b></center></td>");
                            out.println("<td class=textoGeneral><center><b><font color=" + "626262"+ " size="+"1px" +" face="+"tahoma>"+rs.getString(8)+"</font></b></center></td>");
							out.println("<td class=textoGeneral><center><b><font color=" + "626262"+ " size="+"1px" +" face="+"tahoma>"+rs.getString(9)+"</font></b></center></td>");
							out.println("<td class=textoGeneral><center><b><font color=" + "626262"+ " size="+"1px" +" face="+"tahoma>"+rs.getString(10)+"</font></b></center></td>");
							out.println("<td class=textoGeneral><center><b><font color=" + "626262"+ " size="+"1px" +" face="+"tahoma>"+rs.getString(11)+"</font></b></center></td>");
							out.println("<td class=textoGeneral><center><b><font color=" + "626262"+ " size="+"1px" +" face="+"tahoma>"+rs.getString(12)+"</font></b></center></td>");
                            out.println("<td class=textoGeneral><center><b><font color=" + "626262"+ " size="+"1px" +" face="+"tahoma>"+rs.getString(13)+"</font></b></center></td>");
							out.println("<td class=textoGeneral><center><b><font color=" + "626262"+ " size="+"1px" +" face="+"tahoma>"+rs.getString(14)+"</font></b></center></td>");
							out.println("<td class=textoGeneral><center><b><font color=" + "626262"+ " size="+"1px" +" face="+"tahoma>"+rs.getString(15)+"</font></b></center></td>");
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
