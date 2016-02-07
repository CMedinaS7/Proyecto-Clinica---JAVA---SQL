<%-- 
    Document   : PruebaGaficos
    Created on : 21/09/2012, 06:09:46 PM
    Author     : Carlos Medina
--%>
 <%
					HttpSession sesion = request.getSession(true);
					String ape = (String) sesion.getAttribute("apellido");
					String especialista=ape;
                                                                               String a="";
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
					Connection cn;
                                        conexion con = new conexion();
                    try {
                		
						cn = con.conectar();
                        Statement stmt = cn.createStatement();

                       
						a="exec PruebaGraficos '" +especialista+ "'";
                   
						ResultSet rs = stmt.executeQuery(a);
						
                         				  
                        while (rs.next()) {

						    
                                                        ene=String.valueOf(rs.getString(1));
							feb=String.valueOf(rs.getString(2));
							mar=String.valueOf(rs.getString(3));
							abr=String.valueOf(rs.getString(4));
							may=String.valueOf(rs.getString(5));
							jun=String.valueOf(rs.getString(6));
							jul=String.valueOf(rs.getString(7));
							ago=String.valueOf(rs.getString(8));
							sep=String.valueOf(rs.getString(9));
							oct=String.valueOf(rs.getString(10));
							nov=String.valueOf(rs.getString(11));
							dic=String.valueOf(rs.getString(12));
						   
							
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
        <title>JSP Page</title>
        
</head>
    <body>

          
<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0" name="Column3D" width="900" height="300" id="Column3D" >
   <param name="movie" value="Fusion Charts/FusionCharts_Evaluation/FusionCharts_Evaluation/Charts/Column3D.swf" />
   <param name="FlashVars" value="&dataXML=<chart caption='Record de Atencion de Reservas' subcaption='Del el Año 2012' xAxisName='Mes' yAxisName='Nº Reservas' numberPrefix=''><set label='Enero' value='<%=ene%>' /><set label='Febrero' value='<%=feb%>' /><set label='Marzo' value='<%=mar%>' /><set label='Abril' value='<%=abr%>' /><set label='Mayo' value='<%=may%>' /><set label='Junio' value='<%=jun%>' /><set label='Julio' value='<%=jul%>' /><set label='Agosto' value='<%=ago%>' /><set label='Septiembre' value='<%=sep%>' /><set label='Octubre' value='<%=oct%>' /><set label='Noviembre' value='<%=nov%>' /><set label='Diciembre' value='<%=dic%>' /></chart>">
   <param name="quality" value="high" />
   <embed src="Fusion Charts/FusionCharts_Evaluation/FusionCharts_Evaluation/Charts/Column3D.swf" flashVars="&dataXML=<chart caption='Record De Atencion de Reservas' subcaption='Del Año 2012' xAxisName='Mes' yAxisName='Nº Reservas' numberPrefix=''><set label='Enero' value='<%=ene%>' /><set label='Febrero' value='<%=feb%>' /><set label='Marzo' value='<%=mar%>' /><set label='Abril' value='<%=abr%>' /><set label='Mayo' value='<%=may%>' /><set label='Junio' value='<%=jun%>' /><set label='Julio' value='<%=jul%>' /><set label='Agosto' value='<%=ago%>' /><set label='Septiembre' value='<%=sep%>' /><set label='Octubre' value='<%=oct%>' /><set label='Noviembre' value='<%=nov%>' /><set label='Diciembre' value='<%=dic%>' /></chart>" quality="high" width="900" height="300" name="Column3D" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />
</object>
</body>
</html>
