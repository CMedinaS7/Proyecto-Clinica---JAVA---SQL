<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" import="Util.LlenarCombo1,java.util.Vector"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<%
            LlenarCombo1 combo = new LlenarCombo1();
            Vector Aux = new Vector();
	String r = request.getParameter("r");
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
<script language="javascript" type="text/javascript" src="js/jquery-1.2.6.min.js"></script>
<script language="javascript" type="text/javascript" src="js/jquery.jSuggest.1.0.js"></script>
<script language="javascript">
$(function(){

	$("#txtapellido").jSuggest({
		url: "ListaEspecialistas.jsp",
		type: "GET",
		data: "txtapellido",
		autoChange: true
	});

});
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
.Estilo2 {color: #000000}
.Estilo3 {color: #FFFFFF}
-->
</style>
<style>
#jSuggestContainer {
position:absolute;
font: 10px Tahoma;
border:1px solid #ffb931;
border-top:0;
background:#FFF;
}

.jSuggestLoading {
font-style:italic;
padding: 10px;
}

#jSuggestContainer ul, #jSuggestContainer ul li{
margin: 0;
padding:0;
list-style:none;
}



#jSuggestContainer ul li{
padding: 2px 4px;
border-bottom: 1px dotted #ffe594;
color:#666;
background:#fff9e7;
cursor:pointer
}

#jSuggestContainer ul li.last{
border-bottom: 0;
}

#jSuggestContainer ul li.jSuggestHover{
background:#ffeaaa;
color:#333;
}

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
                    <td valign="top" width="73%"><table border="0" cellspacing="0" cellpadding="0" width="500">
                        <tbody>
                          <tr>
                            <td colspan="2"><table class="TituloNC" border="0" cellspacing="0" 
                        cellpadding="0" align="left">
                                <tbody>
                                  <tr>
                                    <td class="tituloCardio">&nbsp;</td>
                                    <td class="tituloCardio">M&eacute;dicos <img 
                              src="imagenes/barratitulos.jpg" 
                              width="500" height="1" /></td>
                                  </tr>
                                </tbody>
                            </table></td>
                          </tr>
                          <tr>
                            <td colspan="2"><img 
                        src="imagenes/1x1.gif" width="1" 
                        height="1" /></td>
                          </tr>
                          <tr>
                            <td width="5"><img 
                        src="imagenes/1x1(1).gif" 
                        width="5" height="1" /></td>
                            <td width="338">&nbsp;</td>
                          </tr>
                        </tbody>
                    </table>
                        <table border="0" cellspacing="0" cellpadding="0" width="95%">
                          <tbody>
                            <tr>
                              <td width="9%">&nbsp;</td>
                              <td><p class="textoGeneral" align="left">Si conoce el apellido 
                                del m&eacute;dico con el cual se quiere atender, escr&iacute;balo en 
                                el espacio asignado. <br />
                                De lo contrario elija la 
                                especialidad que busca.</p></td>
                            </tr>
                          </tbody>
                        </table>
                      <table border="0" cellspacing="0" cellpadding="0" width="396" 
                  align="center">
                          <tbody>
                            <tr>
                              <td width="273"><img 
                        src="imagenes/tit_buscar_med.jpg" 
                        width="273" height="31" /></td>
                              <td style="BORDER-BOTTOM: #cccccc 1px solid" 
                      width="216">&nbsp;</td>
                            </tr>
                            <tr>
                              <td 
                      style="BORDER-BOTTOM: 1px solid; BORDER-LEFT: #cccccc 1px solid; BORDER-RIGHT: #cccccc 1px solid" 
                      height="251" colspan="2"><table class="textoGeneral" border="0" cellspacing="0" 
                              cellpadding="7" width="90%">
                                <tbody>
                                  <!--Combo Apellido-->
                                  <tr>
                                    <td width="28%"><div align="right"><img src="imagenes/flecha.jpg" width="9" height="10" /></div></td>
                                    <td width="52%"><div>
                                        <div align="left">Ingrese Apellido:</div>
                                    </div></td>
                                    <td width="20%">&nbsp;</td>
                                  </tr>
                                  <tr>
                                    <td>&nbsp;</td>
                                    <td colspan="2"><form id="form1" name="form1" method="post" action="MostrarEspecialista">
                                      <label><span class="maternidad_txt_destacado">                                      <span class="Estilo2">
                                      <span class="Estilo3"><br />
                                      <input type="text"  size="32" name="txtapellido" id="txtapellido" />
                                      </span></span></span></label>
                                      <span class="Estilo3">
                                      <label></label>
                                      <label>                                       </label>
                                      </span><span class="Estilo2">
                                      <label>                                      </label>
                                      </span>
                                      <label>
                                      <input name="imageField" type="image"  style="border:0""id="imageField" src="imagenes/flecha_horizontal.jpg" align="top" />
                                      </label>
                                    </form>                                    </td>
                                    </tr>
                                  <!--Fin Combo Apellido-->
                                  <!--Combo especialidad-->
                                  <tr>
                                    <td><div align="right"><img src="imagenes/flecha.jpg" width="9" height="10" /></div></td>
                                    <td class="texto_menu">Seleccione Especialidad:</td>
                                    <td>&nbsp;</td>
                                  </tr>
                                  <tr>
                                    <td width="28%"><p align="left"></p></td>
                                    <td colspan="2"><div align="left">
                                      <form id="form2" name="form2" method="post" action="MostrarEspecialista1">
                                        <label>
                                        <select name="cboespecialidad" id="cboespecialidad">
                                          <%
           Aux = combo.llenarEspecialidad();
           String[] datos=new String[2];
           for(int i=0; i<Aux.size();i++){
               datos=(String[])Aux.elementAt(i);
%>
                                          <option value="<%=datos[0] %>"><%=datos[1] %></option>
                                          <%
  }
%>
                                        </select> 
                                        </label>
                                        <label><span class="maternidad_txt_destacado"><span class="Estilo2"><span class="Estilo3"> </span></span></span></label>
                                        <span class="Estilo3">
                                        <label></label>
                                        <label> </label>
aaaaaaaa</span><span class="Estilo2">
<label> </label>
</span>
<label> </label>
<input name="imageField2" type="image"  style="border:0""id="imageField2" src="imagenes/flecha_horizontal.jpg" align="top" />
                                      </form>
                                      </div></td>
                                    </tr>
                                  <!--Fin Combo Especialidad-->
                                </tbody>
                              </table>
                                <img hspace="50" 
                  src="imagenes/reserva_telefonica.jpg" 
                  width="311" height="58" /></td>
                            </tr>
                          </tbody>
                      </table>
                      <table border="0" cellspacing="3" cellpadding="0" width="366" 
                        align="center" height="41">
                        <tbody>
                          <tr>
                            <td class="textoGeneral" height="35">&nbsp;<strong> Para consultar las horas reservadas, haga </strong><a class="subir_ps" 
                              href="Registro01.jsp"><strong>click 
                              aqu&iacute;</strong></a></td>
                          </tr>
                        </tbody>
                      </table>
                      <p align="center"><img 
                  src="imagenes/header_medico.jpg" 
                  width="500" height="120" /></p></td>
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
                        if("1".equals(r)){
                        %>
                        <script language='javaScript' >
                            alert("Reserva Realizada con Exito!");
                        </script>
                      	<% } %>
                            <% 
                        if("2".equals(r)){
                        %>
                        <script language='javaScript' >
                            alert("Su reserva no se ha Realizado!");
                        </script>
                      	<% } %>

</BODY></HTML>