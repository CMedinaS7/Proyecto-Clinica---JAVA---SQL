<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" import="Util.LlenarCombo1,java.util.Vector" session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

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
.Estilo1 {FONT-STYLE: normal; FONT-FAMILY: Tahoma; WHITE-SPACE: normal; LETTER-SPACING: 0px; COLOR: #496a7c; FONT-SIZE: 11px; TEXT-DECORATION: none; line-height: 16px;}
.Estilo2 {font-size: 10px}
.style2 {	color: #548fd5;
	font-weight: bold;
	font-size: 11px;
}
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
                    <td valign="top" width="73%"><table width="500" border="0" cellspacing="0" cellpadding="0">
                      <tbody>
                        <tr>
                          <td colspan="2"><table width="90%" border="0" align="center" cellpadding="0" cellspacing="0" class="TituloNC">
                              <tbody>
                                <tr>
                                  <td class="TituloPS">Reserva de Horas</td>
                                </tr>
                              </tbody>
                          </table></td>
                        </tr>
                        <tr>
                          <td colspan="2"><img src="./Cl&iacute;nica Santa Mar&iacute;a3_files/1x1.gif" width="1" height="1" /></td>
                        </tr>
                        <tr>
                          <td><img src="./Cl&iacute;nica Santa Mar&iacute;a3_files/1x1(1).gif" width="10" height="1" /></td>
                          <td><img src="./Cl&iacute;nica Santa Mar&iacute;a3_files/barratitulos.jpg" width="496" height="1" /></td>
                        </tr>
                        <tr>
                          <td height="20" colspan="2">&nbsp;</td>
                        </tr>
                      </tbody>
                    </table>
                      <table width="500" border="0" cellpadding="0" cellspacing="0" class="textoGeneral" id="Header">
                        <tbody>
                          <tr>
                            <td width="10"><img src="./Cl&iacute;nica Santa Mar&iacute;a3_files/1x1(1).gif" width="10" height="1" /></td>
                            <td><table width="500" border="0" align="center" cellpadding="0" cellspacing="0" class="textoGeneral">
                                <tbody>
                                  <tr>
                                    <td>Pasos a seguir:</td>
                                  </tr>
                                  <tr>
                                    <td height="5"><img src="./Cl&iacute;nica Santa Mar&iacute;a3_files/1x1(2).gif" width="1" height="1" /></td>
                                  </tr>
                                </tbody>
                            </table>
                                <table width="500" border="0" align="center" cellpadding="0" cellspacing="0">
                                  <tbody>
                                    <tr>
                                      <td height="19"><div align="center"><img src="imagenes/paso02.jpg" alt="Reserva Horas" width="500" height="45" /></div></td>
                                    </tr>
                                  </tbody>
                                </table>
                              <form action="ValidarPaciente" method="post">
                                <table width="500" border="0" align="center" cellpadding="0" cellspacing="0" class="textoGeneral">
                                    <tbody>
                                      <tr>
                                        <td><table width="400" border="0" cellspacing="0" cellpadding="5" align="center" class="textoGeneral">
                                            <tbody>
                                              <tr>
                                                <td>Para reservar una hora usted debe ingresar su Usuario y Clave:</td>
                                              </tr>
                                            </tbody>
                                        </table>
                                            <br />
                                            <table width="368" border="0" align="center" cellpadding="5" cellspacing="0" background="imagenes/fondo_hor.png" class="textoGeneral">
                                              <tbody>
                                                <tr>
                                                  <td width="25">&nbsp;</td>
                                                  <td width="63">&nbsp;</td>
                                                  <td width="250" colspan="3">&nbsp;</td>
                                                </tr>
                                                <tr>
                                                  <td>&nbsp;</td>
                                                  <td>Usuario:</td>
                                                  <td colspan="3"><input name="usuario" type="text" class="textoGeneral" id="usuario" size="30" maxlength="20" /></td>
                                                </tr>
                                                <tr>
                                                  <td>&nbsp;</td>
                                                  <td>Clave: </td>
                                                  <td colspan="3"><label>
                                                    <input name="clave" type="password" class="textoGeneral" id="clave" size="30" maxlength="20" />
                                                  </label></td>
                                                </tr>
                                                <tr>
                                                  <td>&nbsp;</td>
                                                  <td>&nbsp;</td>
                                                  <td colspan="3"><input type="image" name="boton"  style="border:0" id="boton" src="imagenes/continuar.png" /></td>
                                                </tr>
                                                <tr>
                                                  <td>&nbsp;</td>
                                                  <td>&nbsp;</td>
                                                  <td colspan="3">&nbsp;</td>
                                                </tr>
                                              </tbody>
                                            </table>
<table width="100%" border="0" cellspacing="0" cellpadding="5" align="center" class="textoGeneral">
                                              <tbody>
                                                <tr>
                                                  <td>&nbsp;</td>
                                                </tr>
                                                <tr>
                                                  <td><b>Si
                                                    usted no est&aacute; registrado</b>, o a&uacute;n no ha establecido
                                                    su clave, ingrese aqu&iacute;:<a href="Registro01.jsp" target="_self"> <span class="urologia_vermas">Registro</span></a></td>
                                                </tr>
                                              </tbody>
                                          </table></td>
                                      </tr>
                                    </tbody>
                                  </table>
                              </form></td>
                          </tr>
                        </tbody>
                      </table>
                      <script language="JavaScript" type="text/javascript">
<!--
window.document.reservas2.rut.onkeypress = KeyIsNumber;
window.document.reservas2.dv.onkeypress = KeyIsRut;
//-->
                      </script></td>
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
            <% 
                        if("falso".equals(request.getParameter("msg"))){
                        %>
                        <script language='javaScript' >
                            alert("Usuario no Registrado!");
                        </script>
                      	<% } %>

</BODY></HTML>