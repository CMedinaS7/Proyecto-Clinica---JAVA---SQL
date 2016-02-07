<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">


<HTML 
xmlns="http://www.w3.org/1999/xhtml"><HEAD><TITLE>Cl&iacute;nica Salud Medical</TITLE>
<META content="text/html; charset=iso-8859-1" http-equiv=Content-Type>
<META name=keywords 
content="clinica, clï¿½nica, salud, medical, medical, salud, urologï¿½a, urologia, maternidad, oncologï¿½a, oncologia, cardiologï¿½a, cardiologia, endocrinologï¿½a, endocrinologia, medicos, mï¿½dicos, medicina, convenios, enfermedades, tratamiento, diagnostico, diagnï¿½stico, cancer, corazï¿½n, corazon, urgencia, seguros">

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


<script> 
 
function valida_envia(){
	
	if (document.personal.txtnombre.value.length==0){
		alert("Porfavor Ingrese su Nombre!!")
		document.personal.txtnombre.focus()
		return 0;
	}else if (document.personal.txtapepaterno.value.length==0){
		alert("Porfavor Ingrese su Apellido Paterno!!")
		document.personal.txtapepaterno.focus()
		return 0;
	}else if (document.personal.txtapematerno.value.length==0){
		alert("Porfavor Ingrese su Apellido Materno!!")
		document.personal.txtapematerno.focus()
		return 0;
	}else if  (document.personal.txtfechanac.value.length==0){
		alert("Porfavor Seleccione su Fecha de Nacimiento!!")
		document.personal.txtfechanac.focus()
		return 0;
	}else if (document.personal.txtlugarnac.value.length==0){
		alert("Porfavor Ingrese su lugar de Nacimiento!!")
		document.personal.txtlugarnac.focus()
		return 0;
	}else if (document.personal.txtsexo.checked==false){
		alert("Porfavor Seleccione su Sexo!!")
		document.personal.txtsexo.focus()
		return 0;
	}else if(document.personal.txtdireccion.value.length==0){
		alert("Porfavor Ingrese su Dirección!!")
		document.personal.txtdireccion.focus()
		return 0;
	}else if (document.personal.txttelf.value.length==0){
		alert("Porfavor Ingrese su Telefono!!")
		document.personal.txttelf.focus()
		return 0;
	}else{
	 document.personal.action ="RegistrarPaciente";
	}
}
</script> 

<script languaje="javascript">
// a continuacion creamos la fecha en la variable date
var date = new Date()
// Luego le sacamos los datos año, dia, mes 
// y numero de dia de la variable date
var año = date.getYear()
var mes = date.getMonth()
var ndia = date.getDate()
//Damos a los meses el valor en número
if (mes==0) {var mes="01"}
if (mes==1) {var mes="02"}
if (mes==2) {var mes="03"}
if (mes==3) {var mes="04"}
if (mes==4) {var mes="05"}
if (mes==5) {var mes="06"}
if (mes==6) {var mes="07"}
if (mes==7) {var mes="08"}
if (mes==8) {var mes="09"}
if (mes==9) {var mes="10"}
if (mes==10) {var mes="11"}
if (mes==11) {var mes="12"}
//juntamos todos los datos en una variable
var fecha = ndia + "/" + mes + "/" + año
//y procedemos a escribir dicha fecha
</script>




<LINK rel=stylesheet type=text/css 
href="estilos/estilos.css">
 <link rel="icon" type="image/png" href="iconos/saludmedical.png" />
<head/>

<script language="JavaScript" src="js/calendar_us.js"></script>
	<link rel="stylesheet" href="js/calendar.css">
    

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
.Estilo1 {color: #3366CC}
.Estilo3 {FONT-FAMILY: Tahoma; WHITE-SPACE: normal; LETTER-SPACING: 0px; COLOR: #496a7c; FONT-SIZE: 11px; FONT-WEIGHT: bold; TEXT-DECORATION: none; line-height: 16px;}
-->
</style>
<body onload="document.forms['personal']['reg'].value=fecha;">

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
                    <td valign="top" width="73%"><table border="0" cellspacing="0" cellpadding="0" width="95%">
                          <tbody>
                            <tr>
                              <td width="9%">&nbsp;</td>
                            </tr>
                          </tbody>
                        </table>
                      <br />
                      <table width="505" border="0" cellspacing="0" cellpadding="0">
                        <tbody>
                          <tr>
                            <td colspan="2"><table width="90%" border="0" align="center" cellpadding="0" cellspacing="0" class="TituloNC">
                                <tbody>
                                  <tr>
                                    <td class="TituloPS">Registro</td>
                                  </tr>
                                </tbody>
                            </table></td>
                          </tr>
                          <tr>
                            <td colspan="2"><img src="./Cl&iacute;nica Santa Mar&iacute;a_files/1x1.gif" width="1" height="1" /></td>
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
                      <table width="100%" border="0" align="left" cellpadding="0" cellspacing="0" class="textoGeneral">
                        <tbody>
                          <tr>
                            <td height="50"><p><img src="imagenes/1x1(2).gif" width="1" height="10" /><strong>Para registrarse ingrese los siguientes datos:<br />
                              </strong>Al registrarse usted podr&aacute; 
                              acceder al servicio de <strong>Reserva de Horas</strong>.</p>
                              <form method="post" name="personal" id="personal">
                                <center>
                                  <fieldset style=" background-color:#CCCCCC; width:380px;">
                                  <div align="left">
                                    <legend class="busqTitulo Estilo1"></legend>
                                    </div>
                                    </fieldset>
                                </center>
                                </p>
                                <table width="75%" border="0" align="center" cellpadding="2" cellspacing="0" background="imagenes/fondo_reg.png" class="textoGeneral">
                                  <tbody>
                                    <tr>
                                      <td width="46%"><div align="right"><strong><br />
                                        Nombres </strong></div></td>
                                      <td width="4%"><br />
                                        :</td>
                                      <td width="50%"><br />
                                      <input name="txtnombre" type="text" id="txtnombre"  onkeyup="this.value = this.value.replace (/[^A-ZÑa-zñ 32]/, '');" value="" size="25" />
                                        *</td>
                                    </tr>
                                    <tr>
                                      <td><div align="right"><strong>Apellido Paterno </strong></div></td>
                                      <td>:</td>
                                      <td><span class="maternidad_txt_destacado">
                                        <input name="txtapepaterno" type="text" id="txtapepaterno" onkeyup="this.value = this.value.replace (/[^aA-zZ]/,'');" size="25" />
                                      </span> *</td>
                                    </tr>
                                    <tr>
                                      <td><div align="right"><strong>Apellido Materno </strong></div></td>
                                      <td>:</td>
                                      <td><span class="maternidad_txt_destacado">
                                        <input name="txtapematerno" type="text" id="txtapematerno" onkeyup="this.value = this.value.replace (/[^aA-zZ]/,'');" size="25" />
                                      </span> *</td>
                                    </tr>
                                    <tr>
                                      <td><div align="right"><strong>Foto</strong></div></td>
                                      <td>:</td>
                                      <td><label>
                                        <input type="file" name="txtfoto" id="txtfoto" />
                                      </label></td>
                                    </tr>
                                    <tr>
                                      <td><div align="right"><strong>Fecha de Nacimiento </strong></div></td>
                                      <td>:</td>
                                      <td><input name="txtfechanac" type="text" id="txtfechanac" readonly="readonly" />
                                          <script language="JavaScript" type="text/javascript">
		new tcal ({
		'formname': 'personal',

		'controlname': 'txtfechanac'
		});
		                          </script>
                                          <span class="maternidad_txt_destacado"> *</td>
                                    </tr>
                                    <tr>
                                      <td><div align="right"><strong>Lugar de Nacimiento </strong></div></td>
                                      <td>:</td>
                                      <td><input name="txtlugarnac" type="text" id="txtlugarnac" onkeyup="this.value = this.value.replace (/[^aA-zZ]/,'');" size="20" />
                                        *</td>
                                    </tr>
                                    <tr>
                                      <td><div align="right"><strong>Sexo</strong></div></td>
                                      <td>&nbsp;</td>
                                      <td>Masculino
                                        <input type="radio" name="txtsexo" value="M"/>
                                        Femenino
                                        <input type="radio" name="txtsexo" value="F"/>                                         *</td>
                                    </tr>
                                    <tr>
                                      <td><div align="right"><strong>Estado Civil</strong></div></td>
                                      <td>&nbsp;</td>
                                      <td><em>
                                        <select name="txtestado">
                                          <option value="S">Soltero(a)</option>
                                          <option value="C">Casado(a)</option>
                                          <option value="V" selected="selected">Viudo(a)</option>
                                          <option value="D">Divorciado(a)</option>
                                        </select>
                                      </em></td>
                                    </tr>
                                    <tr>
                                      <td><div align="right"><strong>Direccion</strong></div></td>
                                      <td>&nbsp;</td>
                                      <td><input name="txtdireccion" type="text" id="txtdireccion" style="width:200px;" size="25" />                                         *</td>
                                    </tr>
                                    <tr>
                                      <td><div align="right"><strong>Telefono O Celular</strong></div></td>
                                      <td>&nbsp;</td>
                                      <td><input name="txttelf" type="text" id="txttelf"  onkeyup="this.value = this.value.replace (/[^0-9]/,'');" size="10" maxlength="9"/>                                         *</td>
                                    </tr>
                                    <tr>
                                      <td><div align="right"><strong>E - mail</strong></div></td>
                                      <td>&nbsp;</td>
                                      <td><input name="txtemail" type="text" id="txtemail" style="width:200px;" size="25" /></td>
                                    </tr>
                                    <tr>
                                      <td height="29"><label></label></td>
                                      <td>&nbsp;</td>
                                      <td><label>
                                        <input type="image"  style="border:0" "name="d" id="d" src="imagenes/continuar.png" onclick="valida_envia()" />
                                      </label></td>
                                    </tr>
                                    <tr>
                                      <td>&nbsp;</td>
                                      <td>&nbsp;</td>
                                      <td><div align="right" class="Estilo3">
                                        <div align="center">*<font color="#3366CC"> Campos obligatorios</font></div>
                                      </div></td>
                                    </tr>
                                    <tr>
                                      <td height="1" colspan="3"><img src="./Cl&iacute;nica Santa Mar&iacute;a_files/1x1(1).gif" width="1" height="1" /></td>
                                    </tr>
                                  </tbody>
                                </table>
                                <br />
                                <center>
                                  <fieldset style=" background-color:#CCCCCC; width:380px;">
                                  <div align="center">
                                    <legend class="busqTitulo"></legend>
                                  </div>
                                    </fieldset>
                                </center>
                              </form>                              </td>
                          </tr>
                          <tr>
                            <td height="23"><table width="505" border="0" cellspacing="0" cellpadding="0">
                              <tbody>
                                <tr>
                                  <td colspan="2"><table width="90%" border="0" align="center" cellpadding="0" cellspacing="0" class="TituloNC">
                                      <tbody>
                                        <tr>
                                          <td class="TituloPS">Actualizaci&oacute;n de Datos</td>
                                        </tr>
                                      </tbody>
                                  </table></td>
                                </tr>
                                <tr>
                                  <td colspan="2"><img src="./Cl&iacute;nica Santa Mar&iacute;a_files/1x1.gif" width="1" height="1" /></td>
                                </tr>
                                <tr>
                                  <td><img src="imagenes/1x1(1).gif" width="10" height="1" /></td>
                                  <td><img src="imagenes/barratitulos.jpg" width="496" height="1" /></td>
                                </tr>
                                <tr>
                                  <td height="20" colspan="2"><table width="100%" border="0" align="left" cellpadding="0" cellspacing="0" class="textoGeneral">
                                    <tbody>
                                      <tr>
                                        <td height="50"><p><img src="imagenes/1x1(2).gif" width="1" height="10" /><strong>Para actualizar o modificar sus datos:<br />
                                            </strong>Debera ingresar con su usuario y contrase&ntilde;a.</p>
                                            <form action="ValidarPaciente1" method="post" name="" id="personal2">
                                              <center>
                                                <fieldset style=" background-color:#CCCCCC; width:380px;">
                                                <div align="left">
                                                  <legend class="busqTitulo Estilo1"></legend>
                                                </div>
                                                  </fieldset>
                                              </center>
                                              </p>
                                              <table width="67%" border="0" align="center" cellpadding="2" cellspacing="0" background="imagenes/fondo_log.png" class="textoGeneral">
                                                <tbody>
                                                  <tr>
                                                    <td width="39%"><div align="right"><strong><br />
                                                    Usuario </strong></div></td>
                                                    <td width="3%"><br />
                                                      :</td>
                                                    <td width="58%"><br />
                                                        <input name="usuario" type="text" id="usuario" value="" size="25" /></td>
                                                  </tr>
                                                  <tr>
                                                    <td><div align="right"><strong>Clave </strong></div></td>
                                                    <td>:</td>
                                                    <td><span class="maternidad_txt_destacado">
                                                      <input name="clave" type="password" id="clave" size="25" />
                                                    </span></td>
                                                  </tr>

                                                  <tr>
                                                    <td>&nbsp;</td>
                                                    <td>&nbsp;</td>
                                                    <td><input type="image"  style="border:0" "name="d2" id="d2" src="imagenes/continuar.png" /></td>
                                                  </tr>
                                                  <tr>
                                                    <td><label></label></td>
                                                    <td>&nbsp;</td>
                                                    <td><label></label></td>
                                                  </tr>

                                                  <tr>
                                                    <td height="1" colspan="3"><img src="./Cl&iacute;nica Santa Mar&iacute;a_files/1x1(1).gif" width="1" height="1" /></td>
                                                  </tr>
                                                </tbody>
                                              </table>
                                              <br />
                                              <center>
                                                <fieldset style=" background-color:#CCCCCC; width:380px;">
                                                <div align="center">
                                                  <legend class="busqTitulo"></legend>
                                                </div>
                                                  </fieldset>
                                              </center>
                                            </form></td>
                                      </tr>
                                    </tbody>
                                  </table></td>
                                </tr>
                              </tbody>
                            </table></td>
                          </tr>
                        </tbody>
                      </table>                      <p align="center">&nbsp;</p></td>
                  </tr>
                  <tr>
                    <td valign="top">&nbsp;</td>
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