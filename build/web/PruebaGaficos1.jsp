<%-- 
    Document   : PruebaGaficos
    Created on : 21/09/2012, 06:09:46 PM
    Author     : Carlos Medina
--%>
 <%
                    Connection cn;
                    conexion con = new conexion();

                    String matjul="0";
                    String oncjul="0";
                    String carjul="0";
                    String endjul="0";
                    String pedjul="0";
                    String urojul="0";
                    String resjul="0";

                    String matago="0";
                    String oncago="0";
                    String carago="0";
                    String endago="0";
                    String pedago="0";
                    String uroago="0";
                    String resago="0";

                    String matsep="0";
                    String oncsep="0";
                    String carsep="0";
                    String endsep="0";
                    String pedsep="0";
                    String urosep="0";
                    String ressep="0";

                    String matoct="0";
                    String oncoct="0";
                    String caroct="0";
                    String endoct="0";
                    String pedoct="0";
                    String urooct="0";
                    String resoct="0";

                    try {
                		
			cn = con.conectar();
                        Statement stmt = cn.createStatement();
			String a="exec PruebaGraficos1";
                        String mes="";
                        String esp="";
                        String res="";
                        ResultSet rs = stmt.executeQuery(a);


                          out.println("<table border=1 align=center cellpadding=2 cellspacing=0 class=textoGeneral>");
                          out.println("<tr bgcolor=#425454><td width=100 bgcolor=#F5F5F5 class=NCcapitular style=border-bottom:solid 1px #cccccc; padding-left: 10px><center>Nro. Reservas</center></td><td width=100 height=23 bgcolor=#F5F5F5 class=NCcapitular style=border-bottom:solid 1px #cccccc; padding-left: 10px><center>Nro. Mes</center></td><td width=100 height=18 bgcolor=#F5F5F5 class=NCcapitular style=border-bottom:solid 1px #cccccc><center>Especialidad</center></td></tr>");


                        while (rs.next()) {

                            res=String.valueOf(rs.getString(1));
                            mes=String.valueOf(rs.getString(2));
                            esp=String.valueOf(rs.getString(3));


                        out.println("<td class=textoGeneral><center><b><font color=" + "626262"+ " size="+"2px" +" face="+"tahoma>"+ res +"</font></b></center></td>");
			out.println("<td class=textoGeneral><center><b><font color=" + "626262"+ " size="+"2px" +" face="+"tahoma>"+ mes +"</font></b></center></td>");
			out.println("<td class=textoGeneral><center><b><font color=" + "626262"+ " size="+"2px" +" face="+"tahoma>"+ esp +"</font></b></center></td>");
			out.println("</tr>");



                                                if ("7".equals(mes)){

                                                        if ("Endocrinologia".equals(esp)){
                                                        endjul=res;
                                                        }

                                                        if ("Urologia".equals(esp)){

                                                        urojul=res;
                                                        }

                                                        if ("Respiratorio".equals(esp)){

                                                        resjul=res;
                                                        }

                                                        if ("Pediatria".equals(esp)){

                                                        pedjul=res;
                                                        }

                                                        if ("Maternidad".equals(esp)){
                                                        matjul=res;
                                                        }


                                                        if ("Oncología".equals(esp)){
                                                        oncjul=res;
                                                        }

                                                        if ("Cardiología".equals(esp)){
                                                        carjul=res;
                                                        }

                                                   }
                                                if ("8".equals(mes)){

                                                        if ("Endocrinologia".equals(esp)){
                                                        endago=res;
                                                        }

                                                        if ("Urologia".equals(esp)){

                                                        uroago=res;
                                                        }

                                                        if ("Respiratorio".equals(esp)){

                                                        resago=res;
                                                        }

                                                        if ("Pediatria".equals(esp)){

                                                        pedago=res;
                                                        }

                                                        if ("Maternidad".equals(esp)){
                                                        matago=res;
                                                        }


                                                        if ("Oncología".equals(esp)){
                                                        oncago=res;
                                                        }

                                                        if ("Cardiología".equals(esp)){
                                                        carago=res;
                                                        }

                                                   }
                                                if ("9".equals(mes)){

                                                        if ("Endocrinologia".equals(esp)){
                                                        endsep=res;
                                                        }

                                                        if ("Urologia".equals(esp)){

                                                        urosep=res;
                                                        }

                                                        if ("Respiratorio".equals(esp)){

                                                        ressep=res;
                                                        }

                                                        if ("Pediatria".equals(esp)){

                                                        pedsep=res;
                                                        }

                                                        if ("Maternidad".equals(esp)){
                                                        matsep=res;
                                                        }


                                                        if ("Oncología".equals(esp)){
                                                        oncsep=res;
                                                        }

                                                        if ("Cardiología".equals(esp)){
                                                        carsep=res;
                                                        }

                                                   }
                                                 if ("10".equals(mes)){

                                                        if ("Endocrinologia".equals(esp)){
                                                        endoct=res;
                                                        }

                                                        if ("Urologia".equals(esp)){

                                                        urooct=res;
                                                        }

                                                        if ("Respiratorio".equals(esp)){

                                                        resoct=res;
                                                        }

                                                        if ("Pediatria".equals(esp)){

                                                        pedoct=res;
                                                        }

                                                        if ("Maternidad".equals(esp)){
                                                        matoct=res;
                                                        }


                                                        if ("Oncología".equals(esp)){
                                                        oncoct=res;
                                                        }

                                                        if ("Cardiología".equals(esp)){
                                                        caroct=res;
                                                        }

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
      <object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0" name="Column3D" width="900" height="300" align="middle" id="Column3D" >
        <param name="movie" value="Fusion Charts/FusionCharts_Evaluation/FusionCharts_Evaluation/Charts/ScrollColumn2D.swf" />
        <param name="FlashVars" value="&dataXML=<chart palette='2' caption='Record de Reservas de los ultimos 4 meses' shownames='1' showvalues='0' numberPrefix='' useRoundEdges='1' legendBorderAlpha='0'>
<categories>
<category label='Maternidad' />
<category label='Oncologia' />
<category label='Cardiologia' />
<category label='Endocrinologia' />
<category label='Urologia' />
<category label='Respiratorio' />
<category label='Pediatria' />
</categories>

<dataset seriesName='Marzo' color='AFD8F8' showValues='0'>
<set value='<%=matjul%>'/>
<set value='<%=oncjul%>' />
<set value='<%=carjul%>' />
<set value='<%=endjul%>' />
<set value='<%=urojul%>' />
<set value='<%=resjul%>' />
<set value='<%=pedjul%>' />
</dataset>
<dataset seriesName='Abril' color='F6BD0F' showValues='0'>
<set value='<%=matago%>'/>
<set value='<%=oncago%>' />
<set value='<%=carago%>' />
<set value='<%=endago%>' />
<set value='<%=uroago%>' />
<set value='<%=resago%>' />
<set value='<%=pedago%>' />
</dataset>
<dataset seriesName='Mayo' color='8BBA00' showValues='0'>
<set value='<%=matsep%>'/>
<set value='<%=oncsep%>' />
<set value='<%=carsep%>' />
<set value='<%=endsep%>' />
<set value='<%=urosep%>' />
<set value='<%=ressep%>' />
<set value='<%=pedsep%>' />
</dataset>
<dataset seriesName='Junio' showValues='0'>
<set value='<%=matoct%>'/>
<set value='<%=oncoct%>' />
<set value='<%=caroct%>' />
<set value='<%=endoct%>' />
<set value='<%=urooct%>' />
<set value='<%=resoct%>' />
<set value='<%=pedoct%>' />
</dataset>
</chart>"
   
        <param name="quality" value="high" />
        <embed src="Fusion Charts/FusionCharts_Evaluation/FusionCharts_Evaluation/Charts/ScrollColumn2D.swf" width="900" height="300" align="middle" flashVars="&dataXML=<chart palette='2' caption='Record de Reservas de los ultimos 4 meses' shownames='1' showvalues='0' numberPrefix='' useRoundEdges='1' legendBorderAlpha='0'>
<categories>
<category label='Maternidad' />
<category label='Oncologia' />
<category label='Cardiologia' />
<category label='Endocrinologia' />
<category label='Urologia' />
<category label='Respiratorio' />
<category label='Pediatria' />
</categories>

<dataset seriesName='Marzo' color='AFD8F8' showValues='0'>
<set value='<%=matjul%>'/>
<set value='<%=oncjul%>' />
<set value='<%=carjul%>' />
<set value='<%=endjul%>' />
<set value='<%=urojul%>' />
<set value='<%=resjul%>' />
<set value='<%=pedjul%>' />
</dataset>
<dataset seriesName='Abril' color='F6BD0F' showValues='0'>
<set value='<%=matago%>'/>
<set value='<%=oncago%>' />
<set value='<%=carago%>' />
<set value='<%=endago%>' />
<set value='<%=uroago%>' />
<set value='<%=resago%>' />
<set value='<%=pedago%>' />
</dataset>
<dataset seriesName='Mayo' color='8BBA00' showValues='0'>
<set value='<%=matsep%>'/>
<set value='<%=oncsep%>' />
<set value='<%=carsep%>' />
<set value='<%=endsep%>' />
<set value='<%=urosep%>' />
<set value='<%=ressep%>' />
<set value='<%=pedsep%>' />
</dataset>
<dataset seriesName='Junio' showValues='0'>
<set value='<%=matoct%>'/>
<set value='<%=oncoct%>' />
<set value='<%=caroct%>' />
<set value='<%=endoct%>' />
<set value='<%=urooct%>' />
<set value='<%=resoct%>' />
<set value='<%=pedoct%>' />
</dataset>
</chart>" quality="high" name="Column3D" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />   
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
