<%-- 
    Document   : HistorialMedico
    Created on : 06/10/2012, 07:13:36 PM
    Author     : Carlos Medina
--%>
        
<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%
				HttpSession sesion = request.getSession(true);
				String usu=request.getParameter("usu");
				String paciente = request.getParameter("codigo");

%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Clínica Salud Medical</title>
        <LINK rel=stylesheet type="text/css"
href="estilos/estilos.css">
 <link rel="icon" type="image/png" href="iconos/saludmedical.png" />
 
<script language="JavaScript" type="text/javascript">
<!-- 
 function PopWindow()
{
window.open('AddHistorialMedico.jsp?usuario=<%=usu%>&paciente=<%=paciente%>','360','width=450,height=420,menubar=no,scrollbars=no,toolbar=no,location=no,directories=no,resizable=no,top=0,left=0');
}
//-->
</script>

    </head>
    <body>
    <table width="506" border="0" align="center" cellpadding="0" cellspacing="0">
      <tbody>
        <tr>
          <td colspan="2"><table width="83%" border="0" align="center" cellpadding="0" cellspacing="0" class="TituloNC">
            <tbody>
                <tr>
                  <td class="TituloPS"><div align="center">Historial Medico</div></td>
                </tr>
              </tbody>
          </table></td>
        </tr>
        <tr>
          <td colspan="2"><img src="./Clínica Santa María_files/1x1.gif" width="1" height="1" /></td>
        </tr>
        <tr>
          <td width="10"><img src="imagenes/1x1(1).gif" width="10" height="1" /></td>
          <td width="496" bordercolor="0"><img src="imagenes/barratitulos.jpg" width="496" height="1" /></td>
        </tr>
        <tr>
          <td height="20" colspan="2">&nbsp;</td>
        </tr>
        <tr bgcolor="#EBEBEB">
          <td height="20" colspan="2" bgcolor="#EBEBEB"><table width="387" height="170" align="center" background="imagenes/fondo_hismed.png">
            <tr>
              <td width="13" class="vacunatorio_titulo_n2">&nbsp;</td>
              <td width="120" height="21" class="vacunatorio_titulo_n2">&nbsp;</td>
              <td width="88" class="vacunatorio_titulo_n2">&nbsp;</td>
              <td width="131">&nbsp;</td>
              <td width="11">&nbsp;</td>
            </tr>
            <tr>
              <td rowspan="4" class="vacunatorio_titulo_n2">&nbsp;</td>
              <td rowspan="4" class="vacunatorio_titulo_n2"><img src="<%=request.getParameter("foto")%>" width="102" height="102"></td>
              <td height="29" class="vacunatorio_titulo_n2"><span class="textoGeneral">Codigo: </span></td>
              <td><b class="textoGeneral"><b><strong><%=request.getParameter("codigo")%></strong></b></b></td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td height="29" class="vacunatorio_titulo_n2"><span class="textoGeneral">Apellido Paterno: </span></td>
              <td><b class="textoGeneral"><b><strong><%=request.getParameter("apepaterno")%></strong></b></b></td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td height="30" class="vacunatorio_titulo_n2"><span class="textoGeneral">Apellido Materno:</span></td>
              <td><b class="textoGeneral"><b class="textoGeneral"><b><strong><%=request.getParameter("apematerno")%></strong></b></b></b><br /></td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td height="21" class="vacunatorio_titulo_n2"><span class="textoGeneral">Nombres:</span></td>
              <td><b class="textoGeneral"><b class="textoGeneral"><b><strong><%=request.getParameter("nombre")%></strong></b></b></b><br /></td>
              <td>&nbsp;</td>
            </tr>

            <tr>
              <td class="vacunatorio_titulo_n2">&nbsp;</td>
              <td height="22" class="vacunatorio_titulo_n2">&nbsp;</td>
              <td class="vacunatorio_titulo_n2">&nbsp;</td>
              <td><span class="maternidad_txt_destacado">
                 
		                  
              <br /></td>
              <td>&nbsp;</td>
            </tr>
          </table></td>
        </tr>
        <tr bgcolor="#CCCCCC">
          <td height="20" colspan="2" bgcolor="#CCCCCC"><table width="200" border="0" align="center">
            <tr>
              <td><a href="JavaScript:PopWindow()"><img src="imagenes/btn_agregar.png" width="147" height="35" border="0"></a></td>
              <td><a href="Report/ReporteHistorialMedico.jsp?paciente=<%=paciente%>" target="_blank"><img src="imagenes/btn_descargar.png" width="147" height="35" border="0"></a></td>
              <td><a href="Report/ReporteHistorialMedico.jsp?paciente=<%=paciente%>" target="_blank"><img src="imagenes/btn_imprimir.png" width="147" height="35" border="0"></a></td>
            </tr>
          </table></td>
        </tr>
        <tr>
          <td height="20" colspan="2" bgcolor="#EBEBEB"><iframe name="celda-de-destino"  scrolling="yes" width="490px" height="400" src="DetalleHistorial.jsp?paciente=<%=paciente%>" 
scrolling="no" frameborder="1px" target="_self"> </iframe>

          <div align="center"></div></td>
        </tr>
        <tr>
          <td height="20" colspan="2">&nbsp;</td>
        </tr>
      </tbody>
    </table>
</body>
</html>
