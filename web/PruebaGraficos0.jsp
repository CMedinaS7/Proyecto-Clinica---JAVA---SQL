<%-- 
    Document   : PruebaGraficos0
    Created on : 26/10/2012, 10:07:24 PM
    Author     : Carlos Medina
--%>
<%
					HttpSession sesion = request.getSession(true);
					String ape = (String) sesion.getAttribute("apellido");
					String especialista=ape;
                                        String espe=request.getParameter("msg");
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

                       
						a="exec PruebaGraficos0 '" +espe+ "'";
                   
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

<%@page contentType="text/html" pageEncoding="UTF-8" import="Util.LlenarCombo1,java.util.Vector,Dao.conexion,java.sql.*,java.util.Date"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%
            LlenarCombo1 combo = new LlenarCombo1();
            Vector Aux = new Vector();
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                     <title>Reporte Grafico - Clinica Salud Medical S.A.C</title>

        <link href="estilos/estilos.css" rel="Stylesheet" type="text/css" />
        <link href="estilos/css.css" rel="Stylesheet" type="text/css" />
 <link rel="icon" type="image/png" href="iconos/saludmedical.png" />

    <style type="text/css">
<!--
.Estilo1 {color: #FFFFFF}
-->
    </style>
</head>
    <body>
    <h1 align="center" class="endocrinologia_noticia_tit">Por favor seleccione un especialista:</h1>
        <form name="form1" method="post" action="Grafica">
          <div align="center">
            <label></label>
            <table width="200" border="0" align="center">
              <tr>
                <td><span class="endocrinologia_noticia_tit">
                  <select name="cboespecialista" id="cboespecialista">
                    <%
           Aux = combo.llenarEspecialista();
           String[] datos=new String[2];
           for(int i=0; i<Aux.size();i++){
               datos=(String[])Aux.elementAt(i);        
%>
                    <option value="<%=datos[0] %>" selected="selected"><%=datos[1] %></option>
                    <%
  }
%>
                  </select>
                </span></td>
                <td><input type="image" name="imageField" id="imageField" src="imagenes/btn_BUSCAR.png"></td>
              </tr>
            </table>
          </div>
        </form>
    <p align="center" class="endocrinologia_noticia_tit">
      <object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0" name="Column3D" width="900" height="300" id="Column3D" >
        <param name="movie" value="Fusion Charts/FusionCharts_Evaluation/FusionCharts_Evaluation/Charts/Column3D.swf" />
        <param name="FlashVars" value="&dataXML=<chart caption='Record de Atencion de Reservas' subcaption='Del el Año 2012' xAxisName='Mes' yAxisName='Nº Reservas' numberPrefix=''><set label='Enero' value='<%=ene%>' /><set label='Febrero' value='<%=feb%>' /><set label='Marzo' value='<%=mar%>' /><set label='Abril' value='<%=abr%>' /><set label='Mayo' value='<%=may%>' /><set label='Junio' value='<%=jun%>' /><set label='Julio' value='<%=jul%>' /><set label='Agosto' value='<%=ago%>' /><set label='Septiembre' value='<%=sep%>' /><set label='Octubre' value='<%=oct%>' /><set label='Noviembre' value='<%=nov%>' /><set label='Diciembre' value='<%=dic%>' /></chart>">
        <param name="quality" value="high" />
        <embed src="Fusion Charts/FusionCharts_Evaluation/FusionCharts_Evaluation/Charts/Column3D.swf" flashVars="&dataXML=<chart caption='Record De Atencion de Reservas' subcaption='Del Año 2012' xAxisName='Mes' yAxisName='Nº Reservas' numberPrefix=''><set label='Enero' value='<%=ene%>' /><set label='Febrero' value='<%=feb%>' /><set label='Marzo' value='<%=mar%>' /><set label='Abril' value='<%=abr%>' /><set label='Mayo' value='<%=may%>' /><set label='Junio' value='<%=jun%>' /><set label='Julio' value='<%=jul%>' /><set label='Agosto' value='<%=ago%>' /><set label='Septiembre' value='<%=sep%>' /><set label='Octubre' value='<%=oct%>' /><set label='Noviembre' value='<%=nov%>' /><set label='Diciembre' value='<%=dic%>' /></chart>" quality="high" width="900" height="300" name="Column3D" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />      
</object>
    </p>
    <table width="375" border="0" align="center">
      <tr>
        <td><div align="center"><span class="endocrinologia_noticia_tit"><a href="Javascript:window.close()"><img src="imagenes/btn_cerrar.png" width="147" height="35" border="0"></a></span></div></td>
        <td><div align="center"><span class="endocrinologia_noticia_tit"><a href="Javascript:window.print()"><img src="imagenes/btn_imprimir.png" width="147" height="35" border="0"></a></span></div></td>
      </tr>
    </table>
    <p align="center" class="endocrinologia_noticia_tit">&nbsp;</p>
</body>
</html>
