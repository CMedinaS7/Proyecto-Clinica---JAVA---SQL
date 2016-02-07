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


<script language="Javascript">

  function imprSelec(nombre)

  {

  var ficha = document.getElementById(nombre);

  var ventimp = window.open(' ', 'popimpr');

  ventimp.document.write( ficha.innerHTML );

  ventimp.document.close();

  ventimp.print( );

  ventimp.close();

  } 

</script> 


<LINK rel=stylesheet type=text/css 
href="estilos/estilos.css">
 <link rel="icon" type="image/png" href="iconos/saludmedical.png" />
</HEAD>
<body>

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
                      <table width="500" border="0" cellpadding="0" cellspacing="0" class="textoGeneral" id="Header">
                        <tbody>
                          <tr>
                            <td width="10"><img src="imagenes/1x1(1).gif" width="10" height="1" /></td>
                            <td><table width="500" border="0" align="center" cellpadding="0" cellspacing="0">
                                <tbody>
                                  <tr>
                                    <td class="textoGeneral"><img src="imagenes/1x1(2).gif" width="1" height="10" /></td>
                                  </tr>
                                  <tr> </tr>
                                </tbody>
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
                                      <td><div align="center"><img src="imagenes/paso04.jpg" alt="Reserva Horas" width="500" height="45" /></div></td>
                                    </tr>
                                  </tbody>
                              </table>
                              <table width="500" border="0" align="center" cellpadding="0" cellspacing="0" id="print">
                                  <tbody>
                                    <tr>
                                      <td>&nbsp;</td>
                                      <td><table width="430" border="0" align="center" cellpadding="2" cellspacing="0" class="textoGeneral">
                                          <tbody>
                                            <tr>
                                              <td colspan="3">&nbsp;</td>
                                            </tr>
                                            <tr>
                                              <td colspan="3" class="titulo_prevencion"><div align="center">Su hora aun no ha sido reservada en nuestra base de datos</div></td>
                                            </tr>
                                            <tr>
                                              <td colspan="3">&nbsp;</td>
                                            </tr>
                                            <tr>
                                              <td colspan="3">Sr(a) <b><strong><%=request.getParameter("paciente")%></strong></b>, los datos de la cita que desea reservar son
                                                los siguientes:</td>
                                            </tr>
                                          </tbody>
                                      </table>
                                          <br />
                                          <table width="400" border="0" align="center" cellpadding="5" cellspacing="1" bgcolor="#CCCCCC" class="textoGeneral">
                                            <tbody>
                                              <tr>
                                                <td width="161" bgcolor="#FFFFFF" class="textoGeneral">Profesional: </td>
                                                <td width="223" bgcolor="#FFFFFF" class="textoGeneral"><b><b><strong><%=request.getParameter("especialista")%></strong></b></b> </td>
                                              </tr>
                                              <tr>
                                                <td width="161" bgcolor="#FFFFFF" class="textoGeneral">Fecha
                                                  de reserva:</td>
                                                <td width="223" bgcolor="#FFFFFF" class="textoGeneral"><b><b><b><b><strong><%=request.getParameter("fecha")%></strong></b></b></b></b></td>
                                              </tr>
                                              <tr>
                                                <td width="161" bgcolor="#FFFFFF" class="textoGeneral">Hora:</td>
                                                <td width="223" bgcolor="#FFFFFF" class="textoGeneral"><b><b><strong><%=request.getParameter("hora")%></strong></b></b></td>
                                              </tr>
                                              <tr>
                                                <td bgcolor="#FFFFFF" class="textoGeneral">Servicio:</td>
                                                <!--td width="223" bgcolor="#FFFFFF" class="textoGeneral">< % response.Write(Nombre & " " & ApPaterno & " " & ApMaterno)%></td-->
                                                <td bgcolor="#FFFFFF" class="textoGeneral"><b><b><strong><%=request.getParameter("servicio")%></strong></b></b></td>
                                              </tr>
                                              <tr>
                                                <td width="161" bgcolor="#FFFFFF" class="textoGeneral">Especialidad:</td>
                                                <td width="223" bgcolor="#FFFFFF" class="textoGeneral"><b><b><strong><%=request.getParameter("especialidad")%></strong></b></b></td>
                                              </tr>
                                              <tr>
                                                <td bgcolor="#FFFFFF" class="textoGeneral">Precio:</td>
                                                <!--td width="223" bgcolor="#FFFFFF" class="textoGeneral">< % response.Write(Nombre & " " & ApPaterno & " " & ApMaterno)%></td-->
                                                <td bgcolor="#FFFFFF" class="textoGeneral"><b><b><strong><%=request.getParameter("precio")%></strong></b></b></td>
                                              </tr>
                                              <tr>
                                                <td width="161" bgcolor="#FFFFFF" class="textoGeneral">Paciente:</td>
                                                <!--td width="223" bgcolor="#FFFFFF" class="textoGeneral">< % response.Write(Nombre & " " & ApPaterno & " " & ApMaterno)%></td-->
                                                <td width="223" bgcolor="#FFFFFF" class="textoGeneral"><b><b><strong><%=request.getParameter("paciente")%></strong></b></b></td>
                                              </tr>
                                            </tbody>
                                          </table>
                                          <br />
                                          <table width="465" border="0" align="center">
                                            <tr>
                                              <td width="178"><div align="center"><img src="imagenes/logo.gif" width="178" height="62" /></div></td>
                                              <td width="271"><div align="center"><span class="barrafondo">&copy; Copyright 2012 Cl&iacute;nica Salud 
                                              Medical S.A. -  Mz. A11 Lt. 01 - Urb.Manuel Ar&eacute;valo - Trujillo . </span></div></td>
                                            </tr>
                                          </table>
<table width="500" border="0" cellspacing="0" cellpadding="3" align="center">
                                            <tbody>
                                              <tr> </tr>
                                            </tbody>
                                        </table></td>
                                    </tr>
                                  </tbody>
                              </table></td>
                          </tr>
                        </tbody>
                      </table>
                      <table width="430" border="0" align="center" cellpadding="3" cellspacing="0">
                        <tbody>
                          <tr>
                            <td colspan="3" class="textoGeneral"><p><strong>Para aceptar esta reserva ingrese el codigo de la imagen y presione el bot&oacute;n &quot;<span class="vermasPS">CONFIRMAR RESERVA</span>&quot;</strong></p>
                                <table width="236" border="0" align="center">
                                  <tr>
                                    <td width="75"><div align="center"><img src="captcha.jsp" alt="" /></div></td>
                                    <td width="143"><form id="form1" name="form1" method="post" action="">
                                        <label>
                                        <input type="text" name="textfield" id="textfield" />
                                        </label>
                                      *
                                    </form></td>
                                  </tr>
                              </table></td>
                          </tr>
                        </tbody>
                      </table>
                      <table width="489" border="0" cellspacing="0" cellpadding="3" align="center">
                        <tbody>
                          <tr align="center">
                            <td width="79"><div align="right"><a href="Reserva05.jsp"></a><a href="Reserva05.jsp"><img src="imagenes/volver.jpg" width="30" height="30" border="0" alt="Volver" /></a></div></td>
                            <td width="60"><div align="left"><a href="Reserva05.jsp">Volver</a></div></td>
                            <td width="220"><form action="ConfirmarReserva" method="post"><input type="image"  style="border:0" "name="asd" id="asd" src="imagenes/btn_confirmar2.jpg" /></form></td>
                            <td width="106"><label><a href="javascript:imprSelec('print')" ><img src="imagenes/print.png" style="border:0" width="50" height="51" /></a></label></td>
                          </tr>
                        </tbody>
                      </table>
                      </td>
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