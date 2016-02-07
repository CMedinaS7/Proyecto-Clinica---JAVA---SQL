<%-- 
    Document   : PruebaGaficos
    Created on : 21/09/2012, 06:09:46 PM
    Author     : Carlos Medina
--%>
 <%
                    Connection cn;
                    conexion con = new conexion();

                                        String ene ="0";
					String feb ="0";
					String mar ="0";
					String abr ="0";
					String may ="0";
					String jun ="0";
					String jul ="0";
					String ago ="0";
					String sep ="0";
					String oct ="0";
					String nov ="0";
					String dic ="0";
                                        String mes ="";
                                        String total ="";


                             try {
                		
			cn = con.conectar();
                        Statement stmt = cn.createStatement();
			String a="exec PruebaGraficos3";
                        ResultSet rs = stmt.executeQuery(a);
			  
                        out.println("<table border=1 align=center cellpadding=2 cellspacing=0 class=textoGeneral>");
                        out.println("<tr bgcolor=#425454><td width=100 height=23 bgcolor=#F5F5F5 class=NCcapitular style=border-bottom:solid 1px #cccccc; padding-left: 10px><center>Nro. Mes</center></td><td width=100 height=18 bgcolor=#F5F5F5 class=NCcapitular style=border-bottom:solid 1px #cccccc><center>Total</center></td></tr>");

                        while (rs.next()) {

                            mes=String.valueOf(rs.getString(1));
                            total=String.valueOf(rs.getString(2));

                        out.println("<td class=textoGeneral><center><b><font color=" + "626262"+ " size="+"2px" +" face="+"tahoma>"+ mes +"</font></b></center></td>");
			out.println("<td class=textoGeneral><center><b><font color=" + "626262"+ " size="+"2px" +" face="+"tahoma>"+"S/. "+ total + "</font></b></center></td>");
			out.println("</tr>");

                          
                                                        if ("1".equals(mes)){
                                                        ene=total;
                                                        }
                                                        if ("2".equals(mes)){
                                                        feb=total;
                                                        }
                                                        if ("3".equals(mes)){
                                                        mar=total;
                                                        }
                                                        if ("4".equals(mes)){
                                                        abr=total;
                                                        }
                                                        if ("5".equals(mes)){
                                                        may=total;
                                                        }
                                                        if ("6".equals(mes)){
                                                        jun=total;
                                                        }
                                                        if ("7".equals(mes)){
                                                        jul=total;
                                                        }
                                                        if ("8".equals(mes)){
                                                        ago=total;
                                                        }
                                                        if ("9".equals(mes)){
                                                        sep=total;
                                                        }
                                                        if ("10".equals(mes)){
                                                        oct=total;
                                                        }
                                                        if ("11".equals(mes)){
                                                        nov=total;
                                                        }
                                                        if ("12".equals(mes)){
                                                        dic=total;
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
      <object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0" name="Column3D" width="984" height="458" id="Column3D" >
       <param name="movie" value="Fusion Charts/FusionCharts_Evaluation/FusionCharts_Evaluation/Charts/Line.swf" />
        <param name="FlashVars" value="&dataXML=
   
   <chart caption='Total de Ingresos respecto a Reservas' subcaption='del año 2012' xAxisName='Mes' yAxisName='Total' yAxisMinValue='15000'  numberPrefix='S/.' showValues='0' alternateHGridColor='FCB541' alternateHGridAlpha='20' divLineColor='FCB541' divLineAlpha='50' canvasBorderColor='666666' baseFontColor='666666' lineColor='FCB541'>
	<set label='Enero' value='<%=ene%>' />
	<set label='Febrero' value='<%=feb%>' />
	<set label='Marzo' value='<%=ene%>' />
	<set label='Abril' value='<%=abr%>' />
	<set label='Mayo' value='<%=may%>' />
	<set label='Junio' value='<%=jun%>' />
	<set label='Julio' value='<%=jul%>' />
	<set label='Agosto' value='<%=ago%>' />
	<set label='Setiembre' value='<%=sep%>' />
	<set label='Octubre' value='<%=oct%>' />
	<set label='Noviembre' value='<%=nov%>' />
	<set label='Diciembre' value='<%=dic%>' />

	<styles>
		<definition>
			<style name='Anim1' type='animation' param='_xscale' start='0' duration='1' />
			<style name='Anim2' type='animation' param='_alpha' start='0' duration='0.6' />
			<style name='DataShadow' type='Shadow' alpha='40'/>
		</definition>
		<application>
			<apply toObject='DIVLINES' styles='Anim1' />
			<apply toObject='HGRID' styles='Anim2' />
			<apply toObject='DATALABELS' styles='DataShadow,Anim2' />
	</application>	
	</styles>

</chart> "

   
        <param name="quality" value="high" />
        <embed src="Fusion Charts/FusionCharts_Evaluation/FusionCharts_Evaluation/Charts/Line.swf" flashVars="&dataXML=
   <chart caption='Total de Ingresos respecto a Reservas' subcaption='del año 2012' xAxisName='Month' yAxisName='Sales' yAxisMinValue='15000'  numberPrefix='S/.' showValues='0' alternateHGridColor='FCB541' alternateHGridAlpha='20' divLineColor='FCB541' divLineAlpha='50' canvasBorderColor='666666' baseFontColor='666666' lineColor='FCB541'>
	<set label='Enero' value='<%=ene%>' />
	<set label='Febrero' value='<%=feb%>' />
	<set label='Marzo' value='<%=ene%>' />
	<set label='Abril' value='<%=abr%>' />
	<set label='Mayo' value='<%=may%>' />
	<set label='Junio' value='<%=jun%>' />
	<set label='Julio' value='<%=jul%>' />
	<set label='Agosto' value='<%=ago%>' />
	<set label='Setiembre' value='<%=sep%>' />
	<set label='Octubre' value='<%=oct%>' />
	<set label='Noviembre' value='<%=nov%>' />
	<set label='Diciembre' value='<%=dic%>' />

	<styles>
		<definition>
			<style name='Anim1' type='animation' param='_xscale' start='0' duration='1' />
			<style name='Anim2' type='animation' param='_alpha' start='0' duration='0.6' />
			<style name='DataShadow' type='Shadow' alpha='40'/>
		</definition>
		<application>
			<apply toObject='DIVLINES' styles='Anim1' />
			<apply toObject='HGRID' styles='Anim2' />
			<apply toObject='DATALABELS' styles='DataShadow,Anim2' />
	</application>	
	</styles>

</chart>  " quality="high" width="984" height="458" name="Column3D" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />   
   </object>
    </div>
        <br>
        <table width="375" border="0" align="center">
          <tr>
            <td><div align="center"><span class="endocrinologia_noticia_tit"><a href="Javascript:window.close()"><img src="imagenes/btn_cerrar.png" width="147" height="35" border="0"></a></span></div></td>
            <td><div align="center"><span class="endocrinologia_noticia_tit"><a href="Javascript:window.print()"><img src="imagenes/btn_imprimir.png" width="147" height="35" border="0"></a></span></div></td>
          </tr>
        </table>
        <br>
        
</body>
</html>
