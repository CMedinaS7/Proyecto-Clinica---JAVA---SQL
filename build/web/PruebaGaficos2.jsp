<%-- 
    Document   : PruebaGaficos
    Created on : 21/09/2012, 06:09:46 PM
    Author     : Carlos Medina
--%>
 <%
                    Connection cn;
                    conexion con = new conexion();

                    int esp1=0;
                    int esp2=0;
                    int esp3=0;
                    int esp4=0;
                    int esp5=0;
                    int esp6=0;
                    int esp7=0;
                    int contador=1;
                    int total=0;
                    int subtotal=0;
                    int porcentaje=0;

                    String esp="";

                             try {
                		
			cn = con.conectar();
                        Statement stmt = cn.createStatement();
			String a="exec PruebaGraficos2";
                        ResultSet rs = stmt.executeQuery(a);

                          out.println("<table border=1 align=center cellpadding=2 cellspacing=0 class=textoGeneral>");
                          out.println("<tr bgcolor=#425454><td width=100 bgcolor=#F5F5F5 class=NCcapitular style=border-bottom:solid 1px #cccccc; padding-left: 10px><center>Especialidad</center></td><td width=100 height=23 bgcolor=#F5F5F5 class=NCcapitular style=border-bottom:solid 1px #cccccc; padding-left: 10px><center>Nro. Reservas</center></td><td width=100 height=18 bgcolor=#F5F5F5 class=NCcapitular style=border-bottom:solid 1px #cccccc><center>Porcentaje</center></td></tr>");
			                        				  
                        while (rs.next()) {

                            esp=String.valueOf(rs.getString(1));
                            subtotal=Integer.parseInt(rs.getString(2));
                            total=Integer.parseInt(rs.getString(3));
                            porcentaje =(subtotal * 100)/total;
                        out.println("<td class=textoGeneral><center><b><font color=" + "626262"+ " size="+"2px" +" face="+"tahoma>"+ esp +"</font></b></center></td>");
			out.println("<td class=textoGeneral><center><b><font color=" + "626262"+ " size="+"2px" +" face="+"tahoma>"+ subtotal +"</font></b></center></td>");
			out.println("<td class=textoGeneral><center><b><font color=" + "626262"+ " size="+"2px" +" face="+"tahoma>"+ porcentaje + " %" + "</font></b></center></td>");
			out.println("</tr>");
                                                        if ("Endocrinologia".equals(esp)){
                                                        esp2=subtotal;
                                                        }

                                                        if ("Urologia".equals(esp)){
                                                        esp7=subtotal;
                                                        }

                                                        if ("Respiratorio".equals(esp)){

                                                        esp6=subtotal;
                                                        }

                                                        if ("Pediatria".equals(esp)){

                                                        esp5=subtotal;
                                                        }

                                                        if ("Maternidad".equals(esp)){
                                                        esp3=subtotal;
                                                        }


                                                        if ("Oncología".equals(esp)){
                                                        esp4=subtotal;
                                                        }

                                                        if ("Cardiología".equals(esp)){
                                                        esp1=subtotal;
                                                        }
                            


                                    }
                 
                %>
                <%
                    } catch (SQLException ex) {
                        System.out.println(ex.toString());
                    }         

%>
<%@page contentType="text/html" pageEncoding="UTF-8" import=" Dao.conexion,java.sql.*,java.util.Date"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reporte Grafico - Clinica Salud Medical S.A.C</title>

        <link href="estilos/estilos.css" rel="Stylesheet" type="text/css" />
        <link href="estilos/css.css" rel="Stylesheet" type="text/css" />
 <link rel="icon" type="image/png" href="iconos/saludmedical.png" />
        
</head>
    <body>
    <div align="center">
      <object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0" name="Column3D" width="789" height="458" id="Column3D" >
       <param name="movie" value="Fusion Charts/FusionCharts_Evaluation/FusionCharts_Evaluation/Charts/Pie3D.swf" />
        <param name="FlashVars" value="&dataXML=
   
   <chart palette='4' decimals='0' enableSmartLabels='1' enableRotation='0' bgColor='99CCFF,FFFFFF' bgAlpha='40,100' bgRatio='0,100' bgAngle='360' showBorder='1' startingAngle='70' >
            <set label='Maternidad' value='<%=esp3%>'  />
            <set label='Endocrinologia' value='<%=esp2%>' isSliced='1' />
            <set label='Urologia' value='<%=esp3%>' isSliced='1' />
            <set label='Oncologia' value='<%=esp4%>' />
            <set label='Cardiologia' value='<%=esp7%>' />
            <set label='Respiratorio' value='<%=esp6%>' />
            <set label='Pediatria' value='<%=esp5%>' />
            
</chart>"

   
        <param name="quality" value="high" />
        <embed src="Fusion Charts/FusionCharts_Evaluation/FusionCharts_Evaluation/Charts/Pie3D.swf" flashVars="&dataXML=
   <chart palette='4' decimals='0' enableSmartLabels='1' enableRotation='0' bgColor='99CCFF,FFFFFF' bgAlpha='40,100' bgRatio='0,100' bgAngle='360' showBorder='1' startingAngle='70' >
            <set label='Maternidad' value='<%=esp3%>'  />
            <set label='Endocrinologia' value='<%=esp2%>' isSliced='1' />
            <set label='Urologia' value='<%=esp3%>' isSliced='1' />
            <set label='Oncologia' value='<%=esp4%>' />
            <set label='Cardiologia' value='<%=esp7%>' />
            <set label='Respiratorio' value='<%=esp6%>' />
            <set label='Pediatria' value='<%=esp5%>' />
            
</chart>" quality="high" width="789" height="458" name="Pie3D" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />   
   </object>
      <br>
    </div>
            <br>
            <table width="375" border="0" align="center">
              <tr>
                <td><div align="center"><span class="endocrinologia_noticia_tit"><a href="Javascript:window.close()"><img src="imagenes/btn_cerrar.png" width="147" height="35" border="0"></a></span></div></td>
                <td><div align="center"><span class="endocrinologia_noticia_tit"><a href="Javascript:window.print()"><img src="imagenes/btn_imprimir.png" width="147" height="35" border="0"></a></span></div></td>
              </tr>
            </table>
<br>
            <br>
            
</body>
</html>
