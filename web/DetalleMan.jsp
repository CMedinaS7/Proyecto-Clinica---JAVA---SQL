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
    <center>
                <%
            String fecha=request.getParameter("fecha");
	    String codigo=request.getParameter("codigo");
            String turno=request.getParameter("turno");
            String hora="";
            String estado;
            java.util.Calendar f = java.util.Calendar.getInstance();

            String dia= "0" + String.valueOf(f.get(java.util.Calendar.DATE));
            int mes=Integer.parseInt(String.valueOf(f.get(java.util.Calendar.MONTH))) + 1;
            String ano=String.valueOf(f.get(java.util.Calendar.YEAR));

            String fechaactual=dia + "/" + mes + "/" + ano;


            
                    Connection cn;
                    conexion con = new conexion();
					
                    try {
                        if (fecha.equals(fechaactual)){
                            out.println("<img src=imagenes/triste.png />");
                            out.println("<BR>");
                            out.println("<BR>");
                            out.println("<BR>");
                            out.println("<font color=red>Lo sentimos esta fecha ya no es valida para realizar reservas.</font>");
                            out.println("<BR>");
                            out.println("<BR>");
                            out.println("<font color=red>Por favor seleccione otra fecha.</font>");

                            }else{
                	out.println("<br>");
                        out.println("<br>");
                        out.println("<td class="+"endocrinologia_txt_destacado"+"><font size=2> Detalle de Horario del "+fecha+"</font></td>");
		        out.println("<br>");
                        out.println("<br>");
                        out.println("<br>");
                        cn = con.conectar();
                        Statement stmt = cn.createStatement();

                        String a="select * from  "+turno+ " left join (select Hora from Reserva where Fecha='" +fecha+ "' and IDEspecialista='" +codigo+ "') as prueba on prueba.Hora="+turno+".hora";

                        ResultSet rs = stmt.executeQuery(a);
                        out.println("<table>");
                        out.println("<tr><td width="+"95"+"><center></center</td><td width="+"95"+"><center><center></td></tr><tr></tr>");
                         
                        while (rs.next()) {
                            
                           hora=String.valueOf(rs.getString(1));
                           estado=rs.getString(2);
                           out.println("<tr style='text-align:left;'>");
                           out.println("<td class=textoGeneral><center><b><font color=" + "626262"+ " size="+"2px" +" face="+"tahoma>"+hora+"</font></b></center></td>");
			if(estado != null){
                        out.println("<td><img src=imagenes/reservada.gif /></td>");
                       }else{
                        out.println("<td><form method=" + "post" + " action=PreReserva?especialista="+codigo+"&fecha="+fecha+"&hora="+hora+"><input type=image " + "style=border:0" + " src=imagenes/reservar.gif name="+"a"+ "id="+"a"+" imageField/></form></td>");
                        }}}
                        
                %>
                <%
                    } catch (SQLException ex) {
                        System.out.println(ex.toString());
                    }

                %>
            
    </CENTER>
    </body>
</html>
