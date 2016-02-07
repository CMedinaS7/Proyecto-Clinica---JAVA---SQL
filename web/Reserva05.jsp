<%
            HttpSession sesion = request.getSession(true);
			String codigo = (String) sesion.getAttribute("codigo");
            String ApePat = (String) sesion.getAttribute("apellidop");
            String ApeMat = (String) sesion.getAttribute("apellidom");
	    String Nombres = (String) sesion.getAttribute("nombre");
            String foto = (String) sesion.getAttribute("foto");
            if ((String) sesion.getAttribute("nombre") == null) {
                response.sendRedirect("Reserva04.jsp?msg=fallo");
            }
%>

<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" import="Util.LlenarCombo1,java.util.Vector"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<%
            LlenarCombo1 combo = new LlenarCombo1();
            Vector Aux = new Vector();
%>

<HTML 
xmlns="http://www.w3.org/1999/xhtml"><HEAD><TITLE>Cl&iacute;nica Salud Medical</TITLE>
<META content="text/html; charset=iso-8859-1" http-equiv=Content-Type>
<META name=keywords 
content="clinica, cl�nica, salud, medical, medical, salud, urolog�a, urologia, maternidad, oncolog�a, oncologia, cardiolog�a, cardiologia, endocrinolog�a, endocrinologia, medicos, m�dicos, medicina, convenios, enfermedades, tratamiento, diagnostico, diagn�stico, cancer, coraz�n, corazon, urgencia, seguros">

<SCRIPT language=javascript> AC_FL_RunContent = 0; </SCRIPT>

<SCRIPT language=javascript> DetectFlashVer = 0; </SCRIPT>

<SCRIPT language=javascript 
src="js/AC_RunActiveContent.js"></SCRIPT>

<script language="JavaScript" type="text/javascript">
<!--
function PopWindow()
{
window.open('panorama.html','360','width=820,height=530,menubar=no,scrollbars=no,toolbar=no,location=no,directories=no,resizable=no,top=0,left=0');
}
//-->
</script>

<LINK rel=stylesheet type=text/css 
href="estilos/estilos.css">
 <link rel="icon" type="image/png" href="iconos/saludmedical.png" />
 <style type="text/css">
<!--
#apDiv1 {
	position:absolute;
	left:921px;
	top:310px;
	width:108px;
	height:109px;
	z-index:1;
}
-->
 </style>
 </HEAD>
<BODY>
<style type="text/css">
<!--
#apDiv1 {
	position:absolute;
	left:850px;
	top:368px;
	width:186px;
	height:39px;
	z-index:11;
}
.style2 {	color: #548fd5;
	font-weight: bold;
	font-size: 11px;
}
.Estilo3 {color: #333300}
.Estilo4 {color: #FFFFFF}
-->
</style>


<TABLE border=0 cellSpacing=0 cellPadding=0 width=780 align=center>
  <TBODY>
  <TR>
    <TD vAlign=bottom background=imagenes/leftshadow.jpg 
    width=15>
      <TABLE border=0 cellSpacing=0 cellPadding=0 width=15 height=54>
        <TBODY>
        <TR>
          <TD height=14>&nbsp;</TD></TR>
        <TR>
          <TD height=20>&nbsp;</TD>
        </TR>
        <TR>
          <TD height=20><IMG 
            src="imagenes/ezquinaSombraIzq.jpg" width=15 
            height=20></TD></TR></TBODY></TABLE></TD>
    <TD>
      <TABLE border=0 cellSpacing=0 cellPadding=0 width=751 align=center 
      height=130>
        <TBODY>
        <TR>
          <TD><!--URL utilizadas en la pel&iacute;cula-->
            <script type="text/javascript">
AC_FL_RunContent( 'codebase','http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,28,0','width','751','height','129','src','flash/cabecera-jsp','quality','high','pluginspage','http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash','movie','flash/cabecera-jsp' ); //end AC code
</script><noscript><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,28,0" width="751" height="129">
              <param name="movie" value="flash/cabecera-jsp.swf">
              <param name="quality" value="high">
              <embed src="flash/cabecera-jsp.swf" quality="high" pluginspage="http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="751" height="129"></embed>
            </object></noscript></TD>
        </TR></TBODY></TABLE>
        
        
      <table width="735" border="0" 
      align="center" cellpadding="0" cellspacing="0" bgcolor="#ffffff">
        <tbody>
          <tr>
            <td height="25" 
            background="imagenes/2x25.gif"><img 
            src="imagenes/2x25.gif" width="1" 
        height="25" /></td>
          </tr>
          <tr>
            <td valign="top"><table border="0" cellspacing="0" cellpadding="0" width="100%">
                <tbody>
                  <tr>
                    <td valign="top" width="27%"><div class="arrowlistmenu">
                        <h3 class="menuheader expandable"><img 
                  border="0" 
                  src="imagenes/tit_especialidades.jpg" 
                  width="182" height="41" /></h3>
                      <table border="0" cellspacing="0" cellpadding="0" width="182" 
                  align="center">
                          <tbody>
                            <tr>
                              <td><img src="imagenes/1.jpg" 
                        width="182" height="11" /></td>
                            </tr>
                            <tr>
                              <td><a 
                        href="paginas/maternidad.html" 
                        target="_blank"><img 
                        src="imagenes/mater1.jpg" 
                        width="182" height="24" border="0" /></a></td>
                            </tr>
                            <tr>
                              <td><a 
                        href="paginas/oncologia.html" 
                        target="_blank"><img border="0" 
                        src="imagenes/onco1.jpg" 
                        width="182" height="22" /></a></td>
                            </tr>
                            <tr>
                              <td><a 
                        href="paginas/cardiologia.html" 
                        target="_blank"><img border="0" 
                        src="imagenes/cardio1.jpg" 
                        width="182" height="19" /></a></td>
                            </tr>
                            <tr>
                              <td><a 
                        href="paginas/endocrinologia.html" 
                        target="_blank"><img border="0" 
                        src="imagenes/endo1.jpg" 
                        width="182" height="22" /></a></td>
                            </tr>
                            <tr>
                              <td><a 
                        href="paginas/urologia.html" 
                        target="_blank"><img border="0" 
                        src="imagenes/uro1.jpg" 
                        width="182" height="19" /></a></td>
                            </tr>
                            <tr>
                              <td><a 
                        href="paginas/respiratorio.html" 
                        target="_blank"><img border="0" 
                        src="imagenes/respi1.jpg" 
                        width="182" height="19" /></a></td>
                            </tr>
                            <tr>
                              <td><a 
                        href="paginas/med_preventiva.html" 
                        target="_blank"><img border="0" 
                        src="imagenes/prev1.jpg" 
                        width="182" height="18" /></a></td>
                            </tr>
                            <tr>
                              <td><img src="imagenes/11.jpg" 
                        width="182" height="11" /></td>
                            </tr>
                          </tbody>
                      </table>
                      <p></p>
                      <h3 class="menuheader expandable" align="center">
                        <!--img src="../imagenes/am/banner_reserva_csm.jpg" width="182" height="130" border="0" /-->
                      </h3>
                      <h3 class="menuheader expandable" align="center">
                        <!--img src="../imagenes/am/banner_reserva_dehesa.jpg" width="182" height="130" /-->
                      </h3>
                    </div></td>
                    <td valign="top" width="73%"><table width="505" border="0" cellpadding="0" cellspacing="0">
                      <tbody>
                        <tr>
                          <td colspan="2"><table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
                              <tbody>
                                <tr>
                                  <td class="TituloPS"><p>Reserva de Horas</p>
                                    </td>
                                </tr>
                              </tbody>
                          </table></td>
                        </tr>
                        <tr>
                          <td colspan="2"><img src="imagenes/1x1.gif" width="1" height="1" /></td>
                        </tr>
                        <tr>
                          <td><img src="imagenes/1x1(1).gif" width="10" height="1" /></td>
                          <td><img src="imagenes/barratitulos.jpg" width="496" height="1" /></td>
                        </tr>
                        <tr>
                          <td height="20" colspan="2">&nbsp;</td>
                        </tr>
                      </tbody>
                    </table>
                      <table border="0" cellpadding="0" cellspacing="0" class="textoGeneral" id="Header">
                        <tbody>
                          <tr>
                            <td width="10"><img src="imagenes/1x1(1).gif" width="10" height="1" /></td>
                            <td><table width="500" border="0" align="center" cellpadding="0" cellspacing="0" class="textoGeneral">
                                <tbody>
                                  <tr>
                                    <td width="500" valign="top"><table width="500" border="0" align="center" cellpadding="0" cellspacing="0">
                                      </table>
                                        <table width="500" border="0" align="center" cellpadding="0" cellspacing="0" class="textoGeneral">
                                          <tbody>
                                            <tr>
                                              <td>Pasos a seguir:</td>
                                            </tr>
                                            <tr>
                                              <td height="5"><img src="imagenes/1x1(2).gif" width="1" height="1" /></td>
                                            </tr>
                                          </tbody>
                                        </table>
                                      <table width="500" border="0" align="center" cellpadding="0" cellspacing="0">
                                          <tbody>
                                            <tr>
                                              <td><div align="center"><img src="imagenes/paso03.jpg" alt="Reserva Horas" width="500" height="45" /></div></td>
                                            </tr>
                                          </tbody>
                                      </table>
                                      <table width="500" border="0" align="center" cellpadding="0" cellspacing="0" class="textoGeneral">
                                          <tbody>
                                            <tr>
                                              <td>&nbsp;</td>
                                            </tr>
                                          </tbody>
                                      </table>
                                      <table width="483" height="184" border="0" align="center">
                                        <tr>
                                          <td width="313" height="73">Nombre del paciente:<font color="333333" size="2" face="Arial, Helvetica, sans-serif" class="vacunatorio_titulo_n2"><b> <br />
                                                <%=Nombres + " " + ApePat + " " + ApeMat%></b></font></td>
                                          <td width="154" rowspan="3"><div align="center"><img src="<%=foto%>" width="102" height="102" /></div></td>
                                          </tr>
                                        <tr>
                                          <td height="18">&nbsp;</td>
                                          </tr>
                                        <tr>
                                          <td height="20">Seleccione Servicio: </td>
                                          </tr>
                                        <tr>
                                          <td><form action="PreReserva1" method="post">
                                            <select name="cboservicio" id="cboservicio">
                                              <%
           Aux = combo.llenarServicio();
           String[] datos1=new String[2];
           for(int i=0; i<Aux.size();i++){
               datos1=(String[])Aux.elementAt(i);
%>
                                              <option value="<%=datos1[0] %>"><%=datos1[1] %></option>
                                              <%
  }
%>
                                            </select>
                                            <label>
                                            <input name="txtcodigo" type="hidden" id="txtcodigo" value="<%=codigo%>" />
                                            <span class="Estilo4">sssssssssss</span>
                                            <input type="image" name="boton" id="boton" style="border:0;" " src="imagenes/continuar.png" />
                                            </label>
                                          </form></td>
                                          <td>&nbsp;</td>
                                          </tr>
                                      </table>
                                      </td>
                                  </tr>
                                  <tr>
                                    <td><div align="center"><span class="Estilo3"><img src="imagenes/home.jpg" width="510" height="191" />*Nota: El precio de su reserva varia de acuerdo al servivio escogido</span></div></td>
                                  </tr>
                                  <tr>
                                    <td height="5"><img src="imagenes/1x1(2).gif" width="1" height="1" /></td>
                                  </tr>
                                </tbody>
                            </table></td>
                          </tr>
                        </tbody>
                      </table></td>
                  </tr>
                  <tr>
                    <td valign="top"><p align="center">&nbsp;</p></td>
                  </tr>
                </tbody>
            </table></td>
          </tr>
          <tr>
            <td valign="top"><img 
            src="imagenes/1x1(1).gif" width="1" 
          height="1" /></td>
          </tr>

          <tr>
            <td valign="top"><img 
            src="imagenes/1x1(1).gif" width="1" 
          height="1" /></td>
          </tr>
          <tr>
            <td valign="top"><table border="0" cellspacing="0" cellpadding="0" width="753">
                <tbody>
                  <tr>
                    <td height="15" 
                background="imagenes/1x14.gif" 
                  colspan="3"><div align="center"><img 
                  src="imagenes/1x14.gif" width="1" 
                  height="14" /></div></td>
                  </tr>
                  <tr>
                    <td height="20" width="15"><img 
                  src="imagenes/IZQbarraInferior.jpg" 
                  width="15" height="20" /></td>
                    <td 
                  background="imagenes/barrafondo.jpg"><div 
                  class="barrafondo" align="center">&copy; Copyright 2012 Cl&iacute;nica Salud 
                      Medical S.A. -  Mz. A11 Lt. 01 - Urb.Manuel Ar&eacute;valo - Trujillo . </div></td>
                    <td width="15"><img 
                  src="imagenes/DERbarraInferior.jpg" 
                  width="15" height="20" /></td>
                  </tr>
                  <tr>
                    <td height="20" width="15"><img 
                  src="imagenes/sombraIZQfondo.jpg" 
                  width="15" height="20" /></td>
                    <td height="20" 
                background="imagenes/sombraFondo.jpg"><div align="center"><img 
                  src="imagenes/sombraFondo.jpg" width="1" 
                  height="20" /></div></td>
                    <td height="20" width="15"><img 
                  src="imagenes/sombraDERfondo.jpg" 
                  width="15" height="20" /></td>
                  </tr>
                </tbody>
            </table></td>
          </tr>
        </tbody>
      </table></TD>
    <TD vAlign=bottom 
    background=imagenes/rightshadow.jpg width=15>
      <TABLE border=0 cellSpacing=0 cellPadding=0 width=15 height=54>
        <TBODY>
        <TR>
          <TD height=14>&nbsp;</TD></TR>
        <TR>
          <TD height=20><IMG 
            src="imagenes/esquinaSombraSupDer.jpg" 
            width=15 height=20></TD></TR>
        <TR>
          <TD height=20><IMG 
            src="imagenes/derechaSombraSup.jpg" width=15 
            height=20></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>

</BODY></HTML>