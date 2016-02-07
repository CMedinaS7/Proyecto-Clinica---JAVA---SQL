<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" import="Util.LlenarCombo1,java.util.Vector"%>
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



<script type="text/javascript"> 

function sack(file) { 
this.xmlhttp = null; 

this.resetData = function() { 
this.method = "POST"; 
this.queryStringSeparator = "?"; 
this.argumentSeparator = "&"; 
this.URLString = ""; 
this.encodeURIString = true; 
this.execute = false; 
this.element = null; 
this.elementObj = null; 
this.requestFile = file; 
this.vars = new Object(); 
this.responseStatus = new Array(2); 
}; 

this.resetFunctions = function() { 
this.onLoading = function() { }; 
this.onLoaded = function() { }; 
this.onInteractive = function() { }; 
this.onCompletion = function() { }; 
this.onError = function() { }; 
this.onFail = function() { }; 
}; 

this.reset = function() { 
this.resetFunctions(); 
this.resetData(); 
}; 

this.createAJAX = function() { 
try { 
this.xmlhttp = new ActiveXObject("Msxml2.XMLHTTP"); 
} catch (e1) { 
try { 
this.xmlhttp = new ActiveXObject("Microsoft.XMLHTTP"); 
} catch (e2) { 
this.xmlhttp = null; 
} 
} 

if (! this.xmlhttp) { 
if (typeof XMLHttpRequest != "undefined") { 
this.xmlhttp = new XMLHttpRequest(); 
} else { 
this.failed = true; 
} 
} 
}; 

this.setVar = function(name, value){ 
this.vars[name] = Array(value, false); 
}; 

this.encVar = function(name, value, returnvars) { 
if (true == returnvars) { 
return Array(encodeURIComponent(name), encodeURIComponent(value)); 
} else { 
this.vars[encodeURIComponent(name)] = Array(encodeURIComponent(value), true); 
} 
} 

this.processURLString = function(string, encode) { 
encoded = encodeURIComponent(this.argumentSeparator); 
regexp = new RegExp(this.argumentSeparator + "|" + encoded); 
varArray = string.split(regexp); 
for (i = 0; i < varArray.length; i++){ 
urlVars = varArray[i].split("="); 
if (true == encode){ 
this.encVar(urlVars[0], urlVars[1]); 
} else { 
this.setVar(urlVars[0], urlVars[1]); 
} 
} 
} 

this.createURLString = function(urlstring) { 
if (this.encodeURIString && this.URLString.length) { 
this.processURLString(this.URLString, true); 
} 

if (urlstring) { 
if (this.URLString.length) { 
this.URLString += this.argumentSeparator + urlstring; 
} else { 
this.URLString = urlstring; 
} 
} 

// prevents caching of URLString 
this.setVar("rndval", new Date().getTime()); 

urlstringtemp = new Array(); 
for (key in this.vars) { 
if (false == this.vars[key][1] && true == this.encodeURIString) { 
encoded = this.encVar(key, this.vars[key][0], true); 
delete this.vars[key]; 
this.vars[encoded[0]] = Array(encoded[1], true); 
key = encoded[0]; 
} 

urlstringtemp[urlstringtemp.length] = key + "=" + this.vars[key][0]; 
} 
if (urlstring){ 
this.URLString += this.argumentSeparator + urlstringtemp.join(this.argumentSeparator); 
} else { 
this.URLString += urlstringtemp.join(this.argumentSeparator); 
} 
} 

this.runResponse = function() { 
eval(this.response); 
} 

this.runAJAX = function(urlstring) { 
if (this.failed) { 
this.onFail(); 
} else { 
this.createURLString(urlstring); 
if (this.element) { 
this.elementObj = document.getElementById(this.element); 
} 
if (this.xmlhttp) { 
var self = this; 
if (this.method == "GET") { 
totalurlstring = this.requestFile + this.queryStringSeparator + this.URLString; 
this.xmlhttp.open(this.method, totalurlstring, true); 
} else { 
this.xmlhttp.open(this.method, this.requestFile, true); 
try { 
this.xmlhttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded") 
} catch (e) { } 
} 

this.xmlhttp.onreadystatechange = function() { 
switch (self.xmlhttp.readyState) { 
case 1: 
self.onLoading(); 
break; 
case 2: 
self.onLoaded(); 
break; 
case 3: 
self.onInteractive(); 
break; 
case 4: 
self.response = self.xmlhttp.responseText; 
self.responseXML = self.xmlhttp.responseXML; 
self.responseStatus[0] = self.xmlhttp.status; 
self.responseStatus[1] = self.xmlhttp.statusText; 

if (self.execute) { 
self.runResponse(); 
} 

if (self.elementObj) { 
elemNodeName = self.elementObj.nodeName; 
elemNodeName.toLowerCase(); 
if (elemNodeName == "input" 
|| elemNodeName == "select" 
|| elemNodeName == "option" 
|| elemNodeName == "textarea") { 
self.elementObj.value = self.response; 
} else { 
self.elementObj.innerHTML = self.response; 
} 
} 
if (self.responseStatus[0] == "200") { 
self.onCompletion(); 
} else { 
self.onError(); 
} 

self.URLString = ""; 
break; 
} 
}; 

this.xmlhttp.send(this.URLString); 
} 
} 
}; 

this.reset(); 
this.createAJAX(); 
} 



var enableCache = true; 
var jsCache = new Array(); 

var dynamicContent_ajaxObjects = new Array(); 

function ajax_showContent(divId,ajaxIndex,url) 
{ 
var targetObj = document.getElementById(divId); 
targetObj.innerHTML = dynamicContent_ajaxObjects[ajaxIndex].response; 
if(enableCache){ 
jsCache[url] = dynamicContent_ajaxObjects[ajaxIndex].response; 
} 
dynamicContent_ajaxObjects[ajaxIndex] = false; 

ajax_parseJs(targetObj) 
} 

function ajax_parseJs(inputObj) 
{	
var jsTags = inputObj.getElementsByTagName('SCRIPT'); 
for(var no=0;no<jsTags.length;no++){ 
eval(jsTags[no].innerHTML); 
}	
} 

function ajax_loadContent(divId,url) 
{ 
if(enableCache && jsCache[url]){ 
document.getElementById(divId).innerHTML = jsCache[url]; 
return; 
} 

var ajaxIndex = dynamicContent_ajaxObjects.length; 
document.getElementById(divId).innerHTML = '<img src=imagenes/xx.gif></img>';
dynamicContent_ajaxObjects[ajaxIndex] = new sack(); 
dynamicContent_ajaxObjects[ajaxIndex].requestFile = url;	// Specifying which file to get 
dynamicContent_ajaxObjects[ajaxIndex].onCompletion = function(){ ajax_showContent(divId,ajaxIndex,url); };	// Specify function that will be executed after file has been found 
dynamicContent_ajaxObjects[ajaxIndex].runAJAX();	 // Execute AJAX function	


} 
</script>


<LINK rel=stylesheet type=text/css 
href="estilos/estilos.css">
 <link rel="icon" type="image/png" href="iconos/saludmedical.png" />
 <style type="text/css">
<!--
.Estilo1 {
	color: #333333;
	font-weight: bold;
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
.Estilo5 {
	color: #333333;
	font-weight: bold;
}
-->
</style>

<%String pro=request.getParameter("codigo");%>
<%String turno=request.getParameter("horario");%>
<font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><a href="javascript:ajax_loadContent('detalle_man','DetalleMan.jsp?fecha=04/06/2011&amp;codigo=<%=pro%>&amp;turno=<%=turno%>');"></a></b></font>
<TABLE border=0 cellSpacing=0 cellPadding=0 width=780 align=center>
  <TBODY>
  <TR>
    <TD vAlign=bottom background="imagenes/leftshadow.jpg" width=15>
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
            <td valign="top"><table border="0" cellspacing="0" cellpadding="0" width="100%"><tbody><tr></tr>
            </tbody>
            </table></td>
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
                  </div></td>
                  <td valign="top" width="73%"><table width="505" border="0" cellspacing="0" cellpadding="0">
                      <tbody>
                        <tr>
                          <td colspan="2"><table width="90%" border="0" align="center" cellpadding="0" cellspacing="0" class="TituloNC">
                              <tbody>
                                <tr>
                                  <td class="TituloPS">Reservar Cita</td>
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
                      <table width="505" border="0" cellpadding="0" cellspacing="0" class="textoGeneral" id="Header">
                        <tbody>
                          <tr>
                            <td width="10"><img src="imagenes/1x1(1).gif" width="10" height="1" /></td>
                            <td><table width="500" border="0" align="center" cellpadding="0" cellspacing="0" class="textoGeneral">
                                <tbody>
                                  <tr>
                                    <td>Pasos a seguir:</td>
                                  </tr>
                                  <tr>
                                    <td height="5"><img src="imagenes/1x1(2).gif" width="1" height="1" /></td>
                                  </tr>
                                </tbody>
                              </table>
                                <table border="0" align="center" cellpadding="0" cellspacing="0">
                                  <tbody>
                                    <tr>
                                      <td><div align="center"><img src="imagenes/paso01.jpg" alt="Reserva Horas" width="500" height="45" /></div></td>
                                    </tr>
                                  </tbody>
                                </table>
                              <table width="500" border="0" align="center" cellpadding="0" cellspacing="0">
                                  <tbody>
                                    <tr>
                                      <td><table width="500" border="0" align="center" cellpadding="2" cellspacing="0">
                                          <tbody>
                                            <tr>
                                              <td nowrap="nowrap"><span class="style2">&nbsp;</span></td>
                                            </tr>
                                            <tr>
                                              <td nowrap="nowrap" class="textoGeneral">Profesional:<strong><%=request.getParameter("nombre")%> <%=request.getParameter("apellidos")%>
                                                    <input type="hidden" name="codigo" value="<%=request.getParameter("codigo")%>"/>
                                              </strong></td>
                                            </tr>
                                            <tr>
                                              <td nowrap="nowrap" class="textoGeneral">Especialidad:<strong><%=request.getParameter("especialidad")%></strong></td>
                                            </tr>
                                            <tr>
                                              <td nowrap="nowrap" class="textoGeneral">Turno:<strong><%=request.getParameter("horario")%></strong></td>
                                            </tr>
                                          </tbody>
                                        </table>
                                          <br />
                                          <% 
                        if("Manana".equals(request.getParameter("horario"))){
                        %>
                                          <table width="500" border="0" align="center" cellpadding="3" cellspacing="0" id="man">
                                            <tbody>
                                              <tr>
                                                <td rowspan="2" valign="top" align="center"><table width="280" border="0" cellspacing="0" cellpadding="0">
                                                    <tbody>
                                                      <tr align="center" valign="top">
                                                        <td></td>
                                                      </tr>
                                                      <tr>
                                                        <td><table width="280" border="1" cellspacing="0" cellpadding="1">
                                                            <tbody>
                                                              <tr>
                                                                <td height="20" colspan="7" bgcolor="FFFFFF"><div align="center"><b><font color="548fd5" size="2" face="Arial, Helvetica, sans-serif">Junio 2012</font></b></div></td>
                                                              </tr>
                                                              <tr>
                                                                <td bgcolor="F5F5F5" width="14%"><div align="center"><font color="496a7c" size="1"><font face="Arial, Helvetica, sans-serif">Dom</font></font></div></td>
                                                                <td bgcolor="F5F5F5" height="20" width="14%"><div align="center"><font color="496a7c" size="1"><font face="Arial, Helvetica, sans-serif">Lun</font></font></div></td>
                                                                <td bgcolor="F5F5F5" height="20" width="14%"><div align="center"><font color="496a7c" size="1"><font face="Arial, Helvetica, sans-serif">Mar</font></font></div></td>
                                                                <td bgcolor="F5F5F5" height="20" width="14%"><div align="center"><font color="496a7c" size="1"><font face="Arial, Helvetica, sans-serif">Mi&eacute;</font></font></div></td>
                                                                <td bgcolor="F5F5F5" height="20" width="14%"><div align="center"><font color="496a7c" size="1"><font face="Arial, Helvetica, sans-serif">Jue</font></font></div></td>
                                                                <td bgcolor="F5F5F5" height="20" width="14%"><div align="center"><font color="496a7c" size="1"><font face="Arial, Helvetica, sans-serif">Vie</font></font></div></td>
                                                                <td bgcolor="F5F5F5" height="20" width="14%"><div align="center"><font color="496a7c" size="1"><font face="Arial, Helvetica, sans-serif">S&aacute;b</font></font></div></td>
                                                              </tr>
                                                              <tr>
                                                                <td bgcolor="FFFFFF"><div align="center"><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b>03</b></font><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                </font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><img src="imagenes/sin_horas2.gif" alt="" width="25" height="25" border="0" /></b></font></div></td>
                                                                <td bgcolor="FFFFFF"><div align="center"><b><font color="333333" size="2" face="Arial, Helvetica, sans-serif">04</font></b><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                </font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><img src="imagenes/sin_horas2.gif" alt="" width="25" height="25" border="0" /></b></font></div></td>
                                                                <td bgcolor="FFFFFF"><div align="center"><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b>05</b></font><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                </font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><img src="imagenes/sin_horas2.gif" alt="" width="25" height="25" border="0" /></b></font></div></td>
                                                                <td bgcolor="FFFFFF"><div align="center"><b><font color="333333" size="2" face="Arial, Helvetica, sans-serif">06</font></b><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                </font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><img src="imagenes/sin_horas2.gif" alt="" width="25" height="25" border="0" /></b></font></div></td>
                                                                <td bgcolor="FFFFFF"><div align="center"><b><font color="333333" size="2" face="Arial, Helvetica, sans-serif">07</font></b><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                </font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><img src="imagenes/sin_horas2.gif" alt="" width="25" height="25" border="0" /></b></font></div></td>
                                                                <td bgcolor="FFFFFF"><div align="center"><b><font color="333333" size="2" face="Arial, Helvetica, sans-serif">08</font></b><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                </font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><img src="imagenes/sin_horas2.gif" alt="" width="25" height="25" border="0" /></b></font></div></td>
                                                                <td bgcolor="FFFFFF"><div align="center"><b><font color="333333" size="2" face="Arial, Helvetica, sans-serif">09</font></b><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                </font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><img src="imagenes/sin_horas2.gif" alt="" width="25" height="25" border="0" /></b></font></div></td>
                                                              </tr>
                                                              <tr>
                                                                <td bgcolor="FFFFFF"><div align="center"><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b>10</b></font><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                </font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><img src="imagenes/sin_horas2.gif" alt="" width="25" height="25" border="0" /></b></font></div></td>
                                                                <td bgcolor="FFFFFF"><div align="center"><b><font color="333333" size="2" face="Arial, Helvetica, sans-serif">11</font></b><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                </font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><img src="imagenes/sin_horas2.gif" alt="" width="25" height="25" border="0" /></b></font></div></td>
                                                                <td bgcolor="FFFFFF"><div align="center"><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b>12</b></font><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                </font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><img src="imagenes/sin_horas2.gif" alt="" width="25" height="25" border="0" /></b></font></div>
                                                                  <a href="javascript:envia_dia('25-05-2012 10:15:00','25','Mayo','1000000100200010020001001000100')" onmouseover="statusSetter('Revisar este horario'); return true"></a></td>
                                                                <td bgcolor="FFFFFF"><div align="center"><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b>13</b></font><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                </font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><img src="imagenes/sin_horas2.gif" alt="" width="25" height="25" border="0" /></b></font></div></td>
                                                                <td bgcolor="FFFFFF"><div align="center"><strong><font color="333333" size="2" face="Arial, Helvetica, sans-serif">14</font></strong><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                </font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><img src="imagenes/sin_horas2.gif" alt="" width="25" height="25" border="0" /></b></font></div></td>
                                                                <td bgcolor="FFFFFF"><div align="center"><b><font color="333333" size="2" face="Arial, Helvetica, sans-serif">15</font></b><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                </font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><img src="imagenes/sin_horas2.gif" alt="" width="25" height="25" border="0" /></b></font></div></td>
                                                                <td bgcolor="FFFFFF"><div align="center"><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b>16</b></font><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                </font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><img src="imagenes/sin_horas2.gif" alt="" width="25" height="25" border="0" /></b></font></div></td>
                                                              </tr>
                                                              <tr>
                                                                <td bgcolor="FFFFFF"><div align="center"><strong><font color="333333" size="2" face="Arial, Helvetica, sans-serif">16</font></strong><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><br />
                                                                  <img src="imagenes/sin_horas2.gif" alt="" width="25" height="25" border="0" /></b></font></div></td>
                                                                <td bgcolor="#FFFFFF"><div align="center"><strong><font color="333333" size="2" face="Arial, Helvetica, sans-serif">17</font></strong><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><br />
                                                                  <img src="imagenes/sin_horas2.gif" alt="" width="25" height="25" border="0" /></b></font></div></td>
                                                                <td bgcolor="#FFFFFF" class="day"><div align="center"><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b>18<br />
                                                                </b></font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><img src="imagenes/sin_horas2.gif" alt="" width="25" height="25" border="0" /></b></font></div></td>
                                                                <td bgcolor="FFFFFF"><div align="center"><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b>19</b></font><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                </font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><img src="imagenes/sin_horas2.gif" alt="" width="25" height="25" border="0" /></b></font></div></td>
                                                                <td bgcolor="FFFFFF"><div align="center"><b><font color="333333" size="2" face="Arial, Helvetica, sans-serif">20</font></b><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                </font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><img src="imagenes/lleno2.gif" alt="" width="25" height="25" border="0" /></b></font></div></td>
                                                                <td bgcolor="FFFFFF"><div align="center"><b><font color="333333" size="2" face="Arial, Helvetica, sans-serif">21</font></b><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                </font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><img src="imagenes/sin_horas2.gif" alt="" width="25" height="25" border="0" /></b></font></div></td>
                                                                <td bgcolor="FFFFFF"><div align="center"><b><font color="333333" size="2" face="Arial, Helvetica, sans-serif">22</font></b><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                </font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><img src="imagenes/sin_horas2.gif" alt="" width="25" height="25" border="0" /><a href="javascript:ajax_loadContent('detalle_man','DetalleMan.jsp?fecha=22/06/2012&amp;codigo=<%=pro%>&amp;turno=<%=turno%>');"></a></b></font></div></td>
                                                              </tr>
                                                              <tr>
                                                                <td bgcolor="FFFFFF"><div align="center"><b><font color="333333" size="2" face="Arial, Helvetica, sans-serif">23</font></b><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                </font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><img src="imagenes/sin_horas2.gif" alt="" width="25" height="25" border="0" /></b></font></div></td>
                                                                <td bgcolor="FFFFFF"><div align="center"><b><font color="333333" size="2" face="Arial, Helvetica, sans-serif">24</font></b><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                </font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><a href="javascript:ajax_loadContent('detalle_man','DetalleMan.jsp?fecha=24/06/2012&amp;codigo=<%=pro%>&amp;turno=<%=turno%>');"><img src="imagenes/ver_horas2.gif" alt="" width="25" height="25" border="0" /></a></b></font></div></td>
                                                                <td bgcolor="FFFFFF"><div align="center"><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b>25</b></font><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                  </font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><img src="imagenes/sin_horas2.gif" alt="" width="25" height="25" border="0" /><a href="javascript:ajax_loadContent('detalle_man','DetalleMan.jsp?fecha=20/09/2011&amp;codigo=<%=pro%>&amp;turno=<%=turno%>');"></a></b></font></div>
                                                                  <a href="javascript:envia_dia('25-05-2012 10:15:00','25','Mayo','1000000100200010020001001000100')" onmouseover="statusSetter('Revisar este horario'); return true"></a></td>
                                                                <td bgcolor="FFFFFF"><div align="center"><strong><font color="333333" size="2" face="Arial, Helvetica, sans-serif">26</font></strong><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                </font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><a href="javascript:ajax_loadContent('detalle_man','DetalleMan.jsp?fecha=26/07/2012&amp;codigo=<%=pro%>&amp;turno=<%=turno%>');"><img src="imagenes/ver_horas2.gif" alt="" width="25" height="25" border="0" /></a></b></font></div></td>
                                                                <td bgcolor="FFFFFF"><div align="center"><strong><font color="333333" size="2" face="Arial, Helvetica, sans-serif">27</font></strong><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                </font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><a href="javascript:ajax_loadContent('detalle_man','DetalleMan.jsp?fecha=27/06/2012&amp;codigo=<%=pro%>&amp;turno=<%=turno%>');"><img src="imagenes/ver_horas2.gif" alt="" width="25" height="25" border="0" /></a></b></font></div></td>
                                                                <td bgcolor="FFFFFF"><div align="center"><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b>28<br />
                                                                  <img src="imagenes/sin_horas2.gif" alt="" width="25" height="25" border="0" /></b></font><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                </font></div></td>
                                                                <td bgcolor="FFFFFF"><div align="center"><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b>29</b></font><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                  </font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><a href="javascript:ajax_loadContent('detalle_man','DetalleMan.jsp?fecha=29/06/2012&amp;codigo=<%=pro%>&amp;turno=<%=turno%>');"><img src="imagenes/ver_horas2.gif" alt="" width="25" height="25" border="0" /></a></b></font><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                                                                                  </font></div></td>
                                                              </tr>
                                                              <tr>
                                                                <td bgcolor="FFFFFF"><div align="center"><b><font color="333333" size="2" face="Arial, Helvetica, sans-serif">30</font></b><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                </font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><img src="imagenes/sin_horas2.gif" alt="" width="25" height="25" border="0" /></b></font></div></td>
                                                                <td bgcolor="FFFFFF">&nbsp;</td>
                                                                <td bgcolor="FFFFFF"><a href="javascript:envia_dia('25-05-2012 10:15:00','25','Mayo','1000000100200010020001001000100')" onmouseover="statusSetter('Revisar este horario'); return true"></a></td>
                                                                <td bgcolor="FFFFFF"><a href="javascript:envia_dia('25-05-2012 10:15:00','25','Mayo','1000000100200010020001001000100')" onmouseover="statusSetter('Revisar este horario'); return true"></a></td>
                                                                  <td bgcolor="FFFFFF"><a href="javascript:envia_dia('25-05-2012 10:15:00','25','Mayo','1000000100200010020001001000100')" onmouseover="statusSetter('Revisar este horario'); return true"></a></td>
                                                                  <td bgcolor="FFFFFF"><a href="javascript:envia_dia('25-05-2012 10:15:00','25','Mayo','1000000100200010020001001000100')" onmouseover="statusSetter('Revisar este horario'); return true"></a></td>
                                                         
                                                                <td bgcolor="FFFFFF">&nbsp;</td>
                                                              </tr>
                                                              <tr>
                                                                <td height="20" colspan="7" bgcolor="FFFFFF"><div align="center"><b><font color="548fd5" size="2" face="Arial, Helvetica, sans-serif">Julio 2011</font></b></div></td>
                                                              </tr>
                                                              <tr>
                                                                <td bgcolor="F5F5F5"><div align="center"><font color="496a7c" size="1"><font face="Arial, Helvetica, sans-serif">Dom</font></font></div></td>
                                                                <td bgcolor="F5F5F5" height="20"><div align="center"><font color="496a7c" size="1"><font face="Arial, Helvetica, sans-serif">Lun</font></font></div></td>
                                                                <td bgcolor="F5F5F5" height="20"><div align="center"><font color="496a7c" size="1"><font face="Arial, Helvetica, sans-serif">Mar</font></font></div></td>
                                                                <td bgcolor="F5F5F5" height="20"><div align="center"><font color="496a7c" size="1"><font face="Arial, Helvetica, sans-serif">Mi&eacute;</font></font></div></td>
                                                                <td bgcolor="F5F5F5" height="20"><div align="center"><font color="496a7c" size="1"><font face="Arial, Helvetica, sans-serif">Jue</font></font></div></td>
                                                                <td bgcolor="F5F5F5" height="20"><div align="center"><font color="496a7c" size="1"><font face="Arial, Helvetica, sans-serif">Vie</font></font></div></td>
                                                                <td bgcolor="F5F5F5" height="20"><div align="center"><font color="496a7c" size="1"><font face="Arial, Helvetica, sans-serif">S&aacute;b</font></font></div></td>
                                                              </tr>
                                                              <tr>
                                                                <td bgcolor="FFFFFF"><div align="center"><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b>01</b></font><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                  </font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><img src="imagenes/sin_horas2.gif" alt="" width="25" height="25" border="0" /><a href="javascript:ajax_loadContent('detalle_man','DetalleMan.jsp?fecha=04/06/2011&amp;codigo=<%=pro%>&amp;turno=<%=turno%>');"></a></b></font><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                </font></div></td>
                                                                <td bgcolor="#FFFFFF"><div align="center"><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b>02</b></font><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                  </font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><a href="javascript:ajax_loadContent('detalle_man','DetalleMan.jsp?fecha=03/07/2012&amp;codigo=<%=pro%>&amp;turno=<%=turno%>');"><img src="imagenes/ver_horas2.gif" alt="" width="25" height="25" border="0" /></a></b></font><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                </font></div></td>
                                                                 <td bgcolor="FFFFFF"><div align="center"><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b>03</b></font><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                   </font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><a href="javascript:ajax_loadContent('detalle_man','DetalleMan.jsp?fecha=03/07/2012&amp;codigo=<%=pro%>&amp;turno=<%=turno%>');"><img src="imagenes/ver_horas2.gif" alt="" width="25" height="25" border="0" /></a></b></font><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                 </font></div></td>
                                                                <td bgcolor="#FFFFFF"><div align="center"><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b>04</b></font><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                  </font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><img src="imagenes/sin_horas2.gif" alt="" width="25" height="25" border="0" /><a href="javascript:ajax_loadContent('detalle_man','DetalleMan.jsp?fecha=04/06/2011&amp;codigo=<%=pro%>&amp;turno=<%=turno%>');"></a></b></font><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                </font></div></td>
                                                                 <td bgcolor="FFFFFF"><div align="center"><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b>05</b></font><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                   </font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><a href="javascript:ajax_loadContent('detalle_man','DetalleMan.jsp?fecha=05/07/2012&amp;codigo=<%=pro%>&amp;turno=<%=turno%>');"><img src="imagenes/ver_horas2.gif" alt="" width="25" height="25" border="0" /></a></b></font><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                 </font></div></td>
                                                                <td bgcolor="#FFFFFF"><div align="center"><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b>06</b></font><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                  </font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><a href="javascript:ajax_loadContent('detalle_man','DetalleMan.jsp?fecha=06/07/2012&amp;codigo=<%=pro%>&amp;turno=<%=turno%>');"><img src="imagenes/ver_horas2.gif" alt="" width="25" height="25" border="0" /></a></b></font><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                </font></div></td>
                                                               
                                                                <td bgcolor="FFFFFF"><div align="center"><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b>07</b></font><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                  </font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><a href="javascript:ajax_loadContent('detalle_man','DetalleMan.jsp?fecha=07/07/2012&amp;codigo=<%=pro%>&amp;turno=<%=turno%>');"><img src="imagenes/ver_horas2.gif" alt="" width="25" height="25" border="0" /></a></b></font><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                                                                                  </font></div></td>
                                                              </tr>
                                                              <tr>
                                                                <td bgcolor="FFFFFF"><div align="center"><b><font color="333333" size="2" face="Arial, Helvetica, sans-serif">08</font></b><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                </font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><img src="imagenes/sin_horas2.gif" alt="" width="25" height="25" border="0" /></b></font></div></td>
                                                                <td bgcolor="FFFFFF"><div align="center"><b><font color="333333" size="2" face="Arial, Helvetica, sans-serif">09</font></b><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                </font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><a href="javascript:ajax_loadContent('detalle_man','DetalleMan.jsp?fecha=09/07/2011&amp;codigo=<%=pro%>&amp;turno=<%=turno%>');"><img src="imagenes/ver_horas2.gif" alt="" width="25" height="25" border="0" /></a></b></font></div></td>
                                                                <td bgcolor="FFFFFF"><div align="center"><b><font color="333333" size="2" face="Arial, Helvetica, sans-serif">10</font></b><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                </font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><img src="imagenes/sin_horas2.gif" alt="" width="25" height="25" border="0" /><a href="javascript:ajax_loadContent('detalle_man','DetalleMan.jsp?fecha=20/09/2011&amp;codigo=<%=pro%>&amp;turno=<%=turno%>');"></a></b></font></div>
                                                                  <a href="javascript:envia_dia('25-05-2012 10:15:00','25','Mayo','1000000100200010020001001000100')" onmouseover="statusSetter('Revisar este horario'); return true"></a></td>
                                                                <td bgcolor="FFFFFF"><div align="center"><strong><font color="333333" size="2" face="Arial, Helvetica, sans-serif">11</font></strong><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                </font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><a href="javascript:ajax_loadContent('detalle_man','DetalleMan.jsp?fecha=11/07/2012&amp;codigo=<%=pro%>&amp;turno=<%=turno%>');"><img src="imagenes/ver_horas2.gif" alt="" width="25" height="25" border="0" /></a></b></font></div></td>
                                                                <td bgcolor="FFFFFF"><div align="center"><strong><font color="333333" size="2" face="Arial, Helvetica, sans-serif">12</font></strong><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                </font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><a href="javascript:ajax_loadContent('detalle_man','DetalleMan.jsp?fecha=12/07/2012&amp;codigo=<%=pro%>&amp;turno=<%=turno%>');"><img src="imagenes/ver_horas2.gif" alt="" width="25" height="25" border="0" /></a></b></font></div></td>
                                                                <td bgcolor="FFFFFF"><div align="center"><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b>13<br />
                                                                  <img src="imagenes/sin_horas2.gif" alt="" width="25" height="25" border="0" /></b></font><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                  </font></div></td>
                                                                <td bgcolor="FFFFFF"><div align="center"><b><font color="333333" size="2" face="Arial, Helvetica, sans-serif">14</font></b><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                  </font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><a href="javascript:ajax_loadContent('detalle_man','DetalleMan.jsp?fecha=14/07/2012&amp;codigo=<%=pro%>&amp;turno=<%=turno%>');"><img src="imagenes/ver_horas2.gif" alt="" width="25" height="25" border="0" /></a></b></font><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                  </font></div></td>
                                                              </tr>
                                                            </tbody>
                                                        </table></td>
                                                      </tr>
                                                    </tbody>
                                                  </table>
                                                <!--fin funcion-->                                                </td>
                                                <td rowspan="2" valign="top" align="center">&nbsp;</td>
                                                <td rowspan="2" valign="top"><table width="190" border="0" cellspacing="0" cellpadding="1" align="center">
                                                    <tbody>
                                                      <tr bgcolor="cccccc">
                                                        <td><table width="227" height="370" border="0" align="right" cellpadding="3" cellspacing="0" class="style2">
                                                      <tbody>
                                                              <tr>
                                                                <td width="212" align="center" bgcolor="#F5F5F5"><div id="detalle_man">
                                                                    <p class="NClinks_titulo">Ayuda...</p>
                                                                  <p align="left" class="vacunatorio_txt_destacado">1. Seleccionar la fecha en el calendario</p>
                                                                  <p align="left" class="vacunatorio_txt_destacado">2. Se cargara el detalle de dicho dia</p>
                                                                  <p align="left" class="vacunatorio_txt_destacado">3. Seleccionar la hora.</p>
                                                                  <p align="center" class="vacunatorio_txt_destacado"><img src="iconos/Coquette help.png" width="128" height="128" /></p>
                                                                  <p align="justify">&nbsp;</p>
                                                                </div></td>
                                                              </tr>
                                                            </tbody>
                                                        </table></td>
                                                      </tr>
                                                    </tbody>
                                                </table></td>
                                              </tr>
                                              <tr> </tr>
                                            </tbody>
                                          </table>
                                        <p>
                                            <%}%>
                                            <% 
                        if("Tarde".equals(request.getParameter("horario"))){
                        %>
                                          </p>
                                         <table width="500" border="0" align="center" cellpadding="3" cellspacing="0" id="man">
                                            <tbody>
                                              <tr>
                                                <td rowspan="2" valign="top" align="center"><table width="280" border="0" cellspacing="0" cellpadding="0">
                                                    <tbody>
                                                      <tr align="center" valign="top">
                                                        <td></td>
                                                      </tr>
                                                      <tr>
                                                        <td><table width="280" border="0" cellspacing="0" cellpadding="0">
                                                          <tbody>
                                                            <tr align="center" valign="top">
                                                              <td></td>
                                                            </tr>
                                                            <tr>
                                                              <td><table width="280" border="1" cellspacing="0" cellpadding="1">
                                                                <tbody>
                                                                  <tr>
                                                                    <td height="20" colspan="7" bgcolor="FFFFFF"><div align="center"><b><font color="548fd5" size="2" face="Arial, Helvetica, sans-serif">Junio 2012</font></b></div></td>
                                                                  </tr>
                                                                  <tr>
                                                                    <td bgcolor="F5F5F5" width="14%"><div align="center"><font color="496a7c" size="1"><font face="Arial, Helvetica, sans-serif">Dom</font></font></div></td>
                                                                    <td bgcolor="F5F5F5" height="20" width="14%"><div align="center"><font color="496a7c" size="1"><font face="Arial, Helvetica, sans-serif">Lun</font></font></div></td>
                                                                    <td bgcolor="F5F5F5" height="20" width="14%"><div align="center"><font color="496a7c" size="1"><font face="Arial, Helvetica, sans-serif">Mar</font></font></div></td>
                                                                    <td bgcolor="F5F5F5" height="20" width="14%"><div align="center"><font color="496a7c" size="1"><font face="Arial, Helvetica, sans-serif">Mi&eacute;</font></font></div></td>
                                                                    <td bgcolor="F5F5F5" height="20" width="14%"><div align="center"><font color="496a7c" size="1"><font face="Arial, Helvetica, sans-serif">Jue</font></font></div></td>
                                                                    <td bgcolor="F5F5F5" height="20" width="14%"><div align="center"><font color="496a7c" size="1"><font face="Arial, Helvetica, sans-serif">Vie</font></font></div></td>
                                                                    <td bgcolor="F5F5F5" height="20" width="14%"><div align="center"><font color="496a7c" size="1"><font face="Arial, Helvetica, sans-serif">S&aacute;b</font></font></div></td>
                                                                  </tr>
                                                                  <tr>
                                                                    <td bgcolor="FFFFFF"><div align="center"><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b>03</b></font><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                    </font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><img src="imagenes/sin_horas2.gif" alt="" width="25" height="25" border="0" /></b></font></div></td>
                                                                    <td bgcolor="FFFFFF"><div align="center"><b><font color="333333" size="2" face="Arial, Helvetica, sans-serif">04</font></b><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                    </font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><img src="imagenes/sin_horas2.gif" alt="" width="25" height="25" border="0" /></b></font></div></td>
                                                                    <td bgcolor="FFFFFF"><div align="center"><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b>05</b></font><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                    </font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><img src="imagenes/sin_horas2.gif" alt="" width="25" height="25" border="0" /></b></font></div></td>
                                                                    <td bgcolor="FFFFFF"><div align="center"><b><font color="333333" size="2" face="Arial, Helvetica, sans-serif">06</font></b><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                    </font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><img src="imagenes/sin_horas2.gif" alt="" width="25" height="25" border="0" /></b></font></div></td>
                                                                    <td bgcolor="FFFFFF"><div align="center"><b><font color="333333" size="2" face="Arial, Helvetica, sans-serif">07</font></b><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                    </font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><img src="imagenes/sin_horas2.gif" alt="" width="25" height="25" border="0" /></b></font></div></td>
                                                                    <td bgcolor="FFFFFF"><div align="center"><b><font color="333333" size="2" face="Arial, Helvetica, sans-serif">08</font></b><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                    </font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><img src="imagenes/sin_horas2.gif" alt="" width="25" height="25" border="0" /></b></font></div></td>
                                                                    <td bgcolor="FFFFFF"><div align="center"><b><font color="333333" size="2" face="Arial, Helvetica, sans-serif">09</font></b><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                    </font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><img src="imagenes/sin_horas2.gif" alt="" width="25" height="25" border="0" /></b></font></div></td>
                                                                  </tr>
                                                                  <tr>
                                                                    <td bgcolor="FFFFFF"><div align="center"><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b>10</b></font><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                    </font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><img src="imagenes/sin_horas2.gif" alt="" width="25" height="25" border="0" /></b></font></div></td>
                                                                    <td bgcolor="FFFFFF"><div align="center"><b><font color="333333" size="2" face="Arial, Helvetica, sans-serif">11</font></b><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                    </font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><img src="imagenes/sin_horas2.gif" alt="" width="25" height="25" border="0" /></b></font></div></td>
                                                                    <td bgcolor="FFFFFF"><div align="center"><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b>12</b></font><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                    </font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><img src="imagenes/sin_horas2.gif" alt="" width="25" height="25" border="0" /></b></font></div>
                                                                      <a href="javascript:envia_dia('25-05-2012 10:15:00','25','Mayo','1000000100200010020001001000100')" onmouseover="statusSetter('Revisar este horario'); return true"></a></td>
                                                                    <td bgcolor="FFFFFF"><div align="center"><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b>13</b></font><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                    </font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><img src="imagenes/sin_horas2.gif" alt="" width="25" height="25" border="0" /></b></font></div></td>
                                                                    <td bgcolor="FFFFFF"><div align="center"><strong><font color="333333" size="2" face="Arial, Helvetica, sans-serif">14</font></strong><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                    </font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><img src="imagenes/sin_horas2.gif" alt="" width="25" height="25" border="0" /></b></font></div></td>
                                                                    <td bgcolor="FFFFFF"><div align="center"><b><font color="333333" size="2" face="Arial, Helvetica, sans-serif">15</font></b><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                    </font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><img src="imagenes/sin_horas2.gif" alt="" width="25" height="25" border="0" /></b></font></div></td>
                                                                    <td bgcolor="FFFFFF"><div align="center"><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b>16</b></font><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                    </font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><img src="imagenes/sin_horas2.gif" alt="" width="25" height="25" border="0" /></b></font></div></td>
                                                                  </tr>
                                                                  <tr>
                                                                    <td bgcolor="FFFFFF"><div align="center"><strong><font color="333333" size="2" face="Arial, Helvetica, sans-serif">16</font></strong><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><br />
                                                                      <img src="imagenes/sin_horas2.gif" alt="" width="25" height="25" border="0" /></b></font></div></td>
                                                                    <td bgcolor="#FFFFFF"><div align="center"><strong><font color="333333" size="2" face="Arial, Helvetica, sans-serif">17</font></strong><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><br />
                                                                      <img src="imagenes/sin_horas2.gif" alt="" width="25" height="25" border="0" /></b></font></div></td>
                                                                    <td bgcolor="#FFFFFF" class="day"><div align="center"><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b>18<br />
                                                                    </b></font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><img src="imagenes/sin_horas2.gif" alt="" width="25" height="25" border="0" /></b></font></div></td>
                                                                    <td bgcolor="FFFFFF"><div align="center"><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b>19</b></font><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                    </font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><img src="imagenes/sin_horas2.gif" alt="" width="25" height="25" border="0" /></b></font></div></td>
                                                                    <td bgcolor="FFFFFF"><div align="center"><b><font color="333333" size="2" face="Arial, Helvetica, sans-serif">20</font></b><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                    </font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><img src="imagenes/lleno2.gif" alt="" width="25" height="25" border="0" /></b></font></div></td>
                                                                    <td bgcolor="FFFFFF"><div align="center"><b><font color="333333" size="2" face="Arial, Helvetica, sans-serif">21</font></b><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                    </font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><img src="imagenes/sin_horas2.gif" alt="" width="25" height="25" border="0" /></b></font></div></td>
                                                                    <td bgcolor="FFFFFF"><div align="center"><b><font color="333333" size="2" face="Arial, Helvetica, sans-serif">22</font></b><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                    </font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><img src="imagenes/sin_horas2.gif" alt="" width="25" height="25" border="0" /><a href="javascript:ajax_loadContent('detalle_man','DetalleMan.jsp?fecha=22/06/2012&amp;codigo=<%=pro%>&amp;turno=<%=turno%>');"></a></b></font></div></td>
                                                                  </tr>
                                                                  <tr>
                                                                    <td bgcolor="FFFFFF"><div align="center"><b><font color="333333" size="2" face="Arial, Helvetica, sans-serif">23</font></b><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                    </font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><img src="imagenes/sin_horas2.gif" alt="" width="25" height="25" border="0" /></b></font></div></td>
                                                                    <td bgcolor="FFFFFF"><div align="center"><b><font color="333333" size="2" face="Arial, Helvetica, sans-serif">24</font></b><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                    </font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><a href="javascript:ajax_loadContent('detalle_man','DetalleMan.jsp?fecha=24/06/2012&amp;codigo=<%=pro%>&amp;turno=<%=turno%>');"><img src="imagenes/ver_horas2.gif" alt="" width="25" height="25" border="0" /></a></b></font></div></td>
                                                                    <td bgcolor="FFFFFF"><div align="center"><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b>25</b></font><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                    </font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><a href="javascript:ajax_loadContent('detalle_man','DetalleMan.jsp?fecha=25/06/2012&amp;codigo=<%=pro%>&amp;turno=<%=turno%>');"><img src="imagenes/ver_horas2.gif" alt="" width="25" height="25" border="0" /></a><a href="javascript:ajax_loadContent('detalle_man','DetalleMan.jsp?fecha=20/09/2011&amp;codigo=<%=pro%>&amp;turno=<%=turno%>');"></a></b></font></div>
                                                                      <a href="javascript:envia_dia('25-05-2012 10:15:00','25','Mayo','1000000100200010020001001000100')" onmouseover="statusSetter('Revisar este horario'); return true"></a></td>
                                                                    <td bgcolor="FFFFFF"><div align="center"><strong><font color="333333" size="2" face="Arial, Helvetica, sans-serif">26</font></strong><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><img src="imagenes/sin_horas2.gif" alt="" width="25" height="25" border="0" /></b></font><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                    </font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><a href="javascript:ajax_loadContent('detalle_man','DetalleMan.jsp?fecha=26/07/2012&amp;codigo=<%=pro%>&amp;turno=<%=turno%>');"></a></b></font></div></td>
                                                                    <td bgcolor="FFFFFF"><div align="center"><strong><font color="333333" size="2" face="Arial, Helvetica, sans-serif">27</font></strong><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                    </font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><a href="javascript:ajax_loadContent('detalle_man','DetalleMan.jsp?fecha=27/06/2012&amp;codigo=<%=pro%>&amp;turno=<%=turno%>');"><img src="imagenes/ver_horas2.gif" alt="" width="25" height="25" border="0" /></a></b></font></div></td>
                                                                    <td bgcolor="FFFFFF"><div align="center"><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b>28<br />
                                                                      <img src="imagenes/sin_horas2.gif" alt="" width="25" height="25" border="0" /></b></font><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                      </font></div></td>
                                                                    <td bgcolor="FFFFFF"><div align="center"><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b>29</b></font><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                      </font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><a href="javascript:ajax_loadContent('detalle_man','DetalleMan.jsp?fecha=29/06/2012&amp;codigo=<%=pro%>&amp;turno=<%=turno%>');"><img src="imagenes/ver_horas2.gif" alt="" width="25" height="25" border="0" /></a></b></font><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                      </font></div></td>
                                                                  </tr>
                                                                  <tr>
                                                                    <td bgcolor="FFFFFF"><div align="center"><b><font color="333333" size="2" face="Arial, Helvetica, sans-serif">30</font></b><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                    </font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><img src="imagenes/sin_horas2.gif" alt="" width="25" height="25" border="0" /></b></font></div></td>
                                                                    <td bgcolor="FFFFFF">&nbsp;</td>
                                                                    <td bgcolor="FFFFFF"><a href="javascript:envia_dia('25-05-2012 10:15:00','25','Mayo','1000000100200010020001001000100')" onmouseover="statusSetter('Revisar este horario'); return true"></a></td>
                                                                    <td bgcolor="FFFFFF"><a href="javascript:envia_dia('25-05-2012 10:15:00','25','Mayo','1000000100200010020001001000100')" onmouseover="statusSetter('Revisar este horario'); return true"></a></td>
                                                                    <td bgcolor="FFFFFF"><a href="javascript:envia_dia('25-05-2012 10:15:00','25','Mayo','1000000100200010020001001000100')" onmouseover="statusSetter('Revisar este horario'); return true"></a></td>
                                                                    <td bgcolor="FFFFFF"><a href="javascript:envia_dia('25-05-2012 10:15:00','25','Mayo','1000000100200010020001001000100')" onmouseover="statusSetter('Revisar este horario'); return true"></a></td>
                                                                    <td bgcolor="FFFFFF">&nbsp;</td>
                                                                  </tr>
                                                                  <tr>
                                                                    <td height="20" colspan="7" bgcolor="FFFFFF"><div align="center"><b><font color="548fd5" size="2" face="Arial, Helvetica, sans-serif">Julio 2011</font></b></div></td>
                                                                  </tr>
                                                                  <tr>
                                                                    <td bgcolor="F5F5F5"><div align="center"><font color="496a7c" size="1"><font face="Arial, Helvetica, sans-serif">Dom</font></font></div></td>
                                                                    <td bgcolor="F5F5F5" height="20"><div align="center"><font color="496a7c" size="1"><font face="Arial, Helvetica, sans-serif">Lun</font></font></div></td>
                                                                    <td bgcolor="F5F5F5" height="20"><div align="center"><font color="496a7c" size="1"><font face="Arial, Helvetica, sans-serif">Mar</font></font></div></td>
                                                                    <td bgcolor="F5F5F5" height="20"><div align="center"><font color="496a7c" size="1"><font face="Arial, Helvetica, sans-serif">Mi&eacute;</font></font></div></td>
                                                                    <td bgcolor="F5F5F5" height="20"><div align="center"><font color="496a7c" size="1"><font face="Arial, Helvetica, sans-serif">Jue</font></font></div></td>
                                                                    <td bgcolor="F5F5F5" height="20"><div align="center"><font color="496a7c" size="1"><font face="Arial, Helvetica, sans-serif">Vie</font></font></div></td>
                                                                    <td bgcolor="F5F5F5" height="20"><div align="center"><font color="496a7c" size="1"><font face="Arial, Helvetica, sans-serif">S&aacute;b</font></font></div></td>
                                                                  </tr>
                                                                  <tr>
                                                                    <td bgcolor="FFFFFF"><div align="center"><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b>01</b></font><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                      </font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><img src="imagenes/sin_horas2.gif" alt="" width="25" height="25" border="0" /><a href="javascript:ajax_loadContent('detalle_man','DetalleMan.jsp?fecha=04/06/2011&amp;codigo=<%=pro%>&amp;turno=<%=turno%>');"></a></b></font><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                      </font></div></td>
                                                                    <td bgcolor="#FFFFFF"><div align="center"><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b>02</b></font><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                      </font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><a href="javascript:ajax_loadContent('detalle_man','DetalleMan.jsp?fecha=02/07/2012&amp;codigo=<%=pro%>&amp;turno=<%=turno%>');"><img src="imagenes/ver_horas2.gif" alt="" width="25" height="25" border="0" /></a></b></font><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                      </font></div></td>
                                                                    <td bgcolor="FFFFFF"><div align="center"><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b>03</b></font><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                      </font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><a href="javascript:ajax_loadContent('detalle_man','DetalleMan.jsp?fecha=03/07/2012&amp;codigo=<%=pro%>&amp;turno=<%=turno%>');"><img src="imagenes/ver_horas2.gif" alt="" width="25" height="25" border="0" /></a></b></font><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                      </font></div></td>
                                                                    <td bgcolor="#FFFFFF"><div align="center"><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b>04</b></font><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                      </font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><img src="imagenes/sin_horas2.gif" alt="" width="25" height="25" border="0" /><a href="javascript:ajax_loadContent('detalle_man','DetalleMan.jsp?fecha=04/06/2011&amp;codigo=<%=pro%>&amp;turno=<%=turno%>');"></a></b></font><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                      </font></div></td>
                                                                    <td bgcolor="FFFFFF"><div align="center"><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b>05</b></font><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                      </font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><img src="imagenes/sin_horas2.gif" alt="" width="25" height="25" border="0" /><a href="javascript:ajax_loadContent('detalle_man','DetalleMan.jsp?fecha=05/07/2012&amp;codigo=<%=pro%>&amp;turno=<%=turno%>');"></a></b></font><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                      </font></div></td>
                                                                    <td bgcolor="#FFFFFF"><div align="center"><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b>06</b></font><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                      </font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><a href="javascript:ajax_loadContent('detalle_man','DetalleMan.jsp?fecha=06/07/2012&amp;codigo=<%=pro%>&amp;turno=<%=turno%>');"><img src="imagenes/ver_horas2.gif" alt="" width="25" height="25" border="0" /></a></b></font><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                      </font></div></td>
                                                                    <td bgcolor="FFFFFF"><div align="center"><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b>07</b></font><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                      </font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><a href="javascript:ajax_loadContent('detalle_man','DetalleMan.jsp?fecha=07/07/2012&amp;codigo=<%=pro%>&amp;turno=<%=turno%>');"><img src="imagenes/ver_horas2.gif" alt="" width="25" height="25" border="0" /></a></b></font><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                      </font></div></td>
                                                                  </tr>
                                                                  <tr>
                                                                    <td bgcolor="FFFFFF"><div align="center"><b><font color="333333" size="2" face="Arial, Helvetica, sans-serif">08</font></b><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                    </font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><img src="imagenes/sin_horas2.gif" alt="" width="25" height="25" border="0" /></b></font></div></td>
                                                                    <td bgcolor="FFFFFF"><div align="center"><b><font color="333333" size="2" face="Arial, Helvetica, sans-serif">09</font></b><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                    </font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><a href="javascript:ajax_loadContent('detalle_man','DetalleMan.jsp?fecha=09/07/2011&amp;codigo=<%=pro%>&amp;turno=<%=turno%>');"><img src="imagenes/ver_horas2.gif" alt="" width="25" height="25" border="0" /></a></b></font></div></td>
                                                                    <td bgcolor="FFFFFF"><div align="center"><b><font color="333333" size="2" face="Arial, Helvetica, sans-serif">10</font></b><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                    </font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><img src="imagenes/sin_horas2.gif" alt="" width="25" height="25" border="0" /><a href="javascript:ajax_loadContent('detalle_man','DetalleMan.jsp?fecha=20/09/2011&amp;codigo=<%=pro%>&amp;turno=<%=turno%>');"></a></b></font></div>
                                                                      <a href="javascript:envia_dia('25-05-2012 10:15:00','25','Mayo','1000000100200010020001001000100')" onmouseover="statusSetter('Revisar este horario'); return true"></a></td>
                                                                    <td bgcolor="FFFFFF"><div align="center"><strong><font color="333333" size="2" face="Arial, Helvetica, sans-serif">11</font></strong><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                    </font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><a href="javascript:ajax_loadContent('detalle_man','DetalleMan.jsp?fecha=11/07/2012&amp;codigo=<%=pro%>&amp;turno=<%=turno%>');"><img src="imagenes/ver_horas2.gif" alt="" width="25" height="25" border="0" /></a></b></font></div></td>
                                                                    <td bgcolor="FFFFFF"><div align="center"><strong><font color="333333" size="2" face="Arial, Helvetica, sans-serif">12</font></strong><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                    </font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><img src="imagenes/sin_horas2.gif" alt="" width="25" height="25" border="0" /><a href="javascript:ajax_loadContent('detalle_man','DetalleMan.jsp?fecha=12/07/2012&amp;codigo=<%=pro%>&amp;turno=<%=turno%>');"></a></b></font></div></td>
                                                                    <td bgcolor="FFFFFF"><div align="center"><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b>13<br />
                                                                    </b></font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><a href="javascript:ajax_loadContent('detalle_man','DetalleMan.jsp?fecha=13/07/2011&amp;codigo=<%=pro%>&amp;turno=<%=turno%>');"><img src="imagenes/ver_horas2.gif" alt="" width="25" height="25" border="0" /></a></b></font><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                      </font></div></td>
                                                                    <td bgcolor="FFFFFF"><div align="center"><b><font color="333333" size="2" face="Arial, Helvetica, sans-serif">14</font></b><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                      </font><font size="2" face="Arial, Helvetica, sans-serif" color="333333"><b><a href="javascript:ajax_loadContent('detalle_man','DetalleMan.jsp?fecha=14/07/2012&amp;codigo=<%=pro%>&amp;turno=<%=turno%>');"><img src="imagenes/ver_horas2.gif" alt="" width="25" height="25" border="0" /></a></b></font><font size="2" face="Arial, Helvetica, sans-serif" color="496a7c"><br />
                                                                      </font></div></td>
                                                                  </tr>
                                                                </tbody>
                                                              </table></td>
                                                            </tr>
                                                          </tbody>
                                                        </table></td>
                                                      </tr>
                                                    </tbody>
                                                  </table>
                                                <!--fin funcion-->                                                </td>
                                                <td rowspan="2" valign="top" align="center">&nbsp;</td>
                                                <td rowspan="2" valign="top"><table width="190" border="0" cellspacing="0" cellpadding="1" align="center">
                                                    <tbody>
                                                      <tr bgcolor="cccccc">
                                                        <td><table width="227" height="370" border="0" align="right" cellpadding="3" cellspacing="0" class="style2">
                                                      <tbody>
                                                              <tr>
                                                                <td width="212" align="center" bgcolor="#F5F5F5"><div id="detalle_man">
                                                                    <p class="NClinks_titulo">Ayuda...</p>
                                                                  <p align="left" class="vacunatorio_txt_destacado">1. Seleccionar la fecha en el calendario</p>
                                                                  <p align="left" class="vacunatorio_txt_destacado">2. Se cargara el detalle de dicho dia</p>
                                                                  <p align="left" class="vacunatorio_txt_destacado">3. Seleccionar la hora.</p>
                                                                  <p align="center" class="vacunatorio_txt_destacado"><img src="iconos/Coquette help.png" width="128" height="128" /></p>
                                                                  <p align="justify">&nbsp;</p>
                                                                </div></td>
                                                              </tr>
                                                            </tbody>
                                                        </table></td>
                                                      </tr>
                                                    </tbody>
                                                </table></td>
                                              </tr>
                                              <tr> </tr>
                                            </tbody>
                                          </table>
                                        <p>
                                            <%}%>
                                            <% 
                        if("Noche".equals(request.getParameter("horario"))){
                        %>
                                          </p>
                                        <p align="center" class="endocrinologia_menu_patologias">Lo sentimos!! el especialista seleccionado no cuenta con un horario valido para realizar reservas.</p>
                                        <p align="center" class="endocrinologia_menu_patologias"><img src="imagenes/banner_ocupados.png" width="504" height="202" /></p>
                                        <table width="82" border="0" align="center">
                                            <tr>
                                              <td width="31"><span class="endocrinologia_menu_patologias"><a href="Reserva01.jsp"><img src="imagenes/volver.jpg" width="30" height="30" border="0" alt="Volver" /></a></span></td>
                                              <td width="151"><span class="endocrinologia_menu_patologias"><a href="Reserva01.jsp">Volver</a></span></td>
                                            </tr>
                                          </table>
                                        <p align="center" class="endocrinologia_menu_patologias">
                                          <%}%>
                                        </p></td>
                                    </tr>
                                  </tbody>
                              </table></td>
                          </tr>
                        </tbody>
                    </table></td>
                </tr>
                <tr>
                  <td valign="top">&nbsp;</td>
                </tr>
              </tbody>
            </table>
              <img 
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