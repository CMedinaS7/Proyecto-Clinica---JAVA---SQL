<%@page contentType="text/html" pageEncoding="UTF-8" import=" Dao.conexion,java.sql.*,java.util.Date"%>
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
    
<center>
<iframe name="celda-de-destino" width="900px" height="300px"  src="PruebaGaficos.jsp" 
scrolling="no" frameborder="1px" target="_self"> 
</iframe> 
 
            <p>
                  <%
				HttpSession sesion = request.getSession(true);
				String Usuario = (String) sesion.getAttribute("nombre") + " " + (String) sesion.getAttribute("apellido");
				String ape = (String) sesion.getAttribute("apellido");
					
                        String especialista=ape;
			String usuario=Usuario;

                        java.util.Calendar f = java.util.Calendar.getInstance();
                        
                                String dia=String.valueOf(f.get(java.util.Calendar.DATE));
                                int mes=Integer.parseInt(String.valueOf(f.get(java.util.Calendar.MONTH))) + 1;
                                String ano=String.valueOf(f.get(java.util.Calendar.YEAR));

                        String fecha=dia + "/" + mes + "/" + ano;
                        //out.println (fecha);
			                        
                                        String ene ="";
					String feb ="";
					String mar ="";
					String abr ="";
					String may ="";
					String jun ="";
					String jul ="";
					String ago ="";
					String sep ="";
					String oct ="";
					String nov ="";
					String dic ="";
				
					
			
                 %>
                  
                    <%
                    Connection cn;
                    conexion con = new conexion();
                    try {
                		out.println("<td class="+"endocrinologia_txt_destacado"+"><font size=3 face=calibri color=#0067a2><b> Sr.(a) "+usuario+" usted tiene la siguientes citas para el dia de hoy</b></font></td>");
		        	    cn = con.conectar();
						
                        Statement stmt = cn.createStatement();
						
						
															
						String a="exec citasdiarias '" +especialista+ "','" +fecha+"'";               
						ResultSet rs = stmt.executeQuery(a);
												
						String b="exec PruebaGraficos '" +especialista+ "'";               
						//ResultSet rss = stmtt.executeQuery(b);
						
					
                        out.println("<table border=0 align=center cellpadding=2 cellspacing=0 class=textoGeneral>");
                          out.println("<tr bgcolor=#425454><td width=100 bgcolor=#F5F5F5 class=NCcapitular style=border-bottom:solid 1px #cccccc; padding-left: 10px><center>Precio</center></td><td width=100 height=23 bgcolor=#F5F5F5 class=NCcapitular style=border-bottom:solid 1px #cccccc; padding-left: 10px><center>Servicio</center></td><td width=100 height=18 bgcolor=#F5F5F5 class=NCcapitular style=border-bottom:solid 1px #cccccc><center>Hora</center></td><td width=99 bgcolor=#F5F5F5 class=NCcapitular style=border-bottom:solid 1px #cccccc><center>Fecha</center></td><td width=200 height=18 bgcolor=#F5F5F5 class=NCcapitular style=border-bottom:solid 1px #cccccc><center>Paciente</center></td></tr>");
						  
						while (rs.next()) {

	    					out.println("<td class=textoGeneral><center><b><font color=" + "626262"+ " size="+"2px" +" face="+"tahoma>"+rs.getString(1)+"</font></b></center></td>");
                            out.println("<td class=textoGeneral><center><b><font color=" + "626262"+ " size="+"2px" +" face="+"tahoma>"+rs.getString(3)+"</font></b></center></td>");
							out.println("<td class=textoGeneral><center><b><font color=" + "626262"+ " size="+"2px" +" face="+"tahoma>"+rs.getString(4)+"</font></b></center></td>");
							out.println("<td class=textoGeneral><center><b><font color=" + "626262"+ " size="+"2px" +" face="+"tahoma>"+fecha+"</font></b></center></td>");
							out.println("<td class=textoGeneral><center><b><font color=" + "626262"+ " size="+"2px" +" face="+"tahoma>"+rs.getString(6)+"</font></b></center></td>");
							
							out.println("</tr>"); 
							
							
						     }
							
					     %>
                            
                    <%
                    } catch (SQLException ex) {
                        System.out.println(ex.toString());
                    }         

%>
  </p>      
               
</CENTER>
    </body>
</html>
