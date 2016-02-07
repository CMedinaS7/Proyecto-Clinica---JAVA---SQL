<%
            HttpSession sesion = request.getSession(true);
            String Usuario = (String) sesion.getAttribute("nombre") + " " + (String) sesion.getAttribute("apellido");
            String Cargo = (String) sesion.getAttribute("cargo");
	    String Foto = (String) sesion.getAttribute("foto");
	    String ape = (String) sesion.getAttribute("apellido");
	    if ((String) sesion.getAttribute("nombre") == null) {
                response.sendRedirect("Intranet.jsp?error=!!!!Necesita Loguearse!!!!!!!!!!!");
            }
%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Clinica Salud Medical</title>


<LINK href="estilos/css.css" rel="stylesheet" type="text/css">
<LINK href="estilos/estilos.css" rel="stylesheet" type="text/css">
 <link rel="icon" type="image/png" href="iconos/saludmedical.png" />

<script language="JavaScript" type="text/javascript">
<!--
function PopWindow()
{
window.open('CitasDiarias.jsp','360','width=930,height=550,menubar=no,scrollbars=yes,toolbar=no,location=no,directories=no,resizable=no,top=0,left=0');
}
//-->
</script>


<script language="JavaScript" type="text/javascript">
<!--
function PopWindow0()
{
window.open('PruebaGraficos0.jsp','','width=860,height=500,menubar=no,scrollbars=yes,toolbar=no,location=no,directories=no,resizable=no,top=0,left=0');
}
//-->
</script>


<script language="JavaScript" type="text/javascript">
<!--
function PopWindow1()
{
window.open('PruebaGaficos1.jsp','','width=940,height=800,menubar=no,scrollbars=yes,toolbar=no,location=no,directories=no,resizable=no,top=0,left=0');
}
//-->
</script>


<script language="JavaScript" type="text/javascript">
<!--
function PopWindow2()
{
window.open('PruebaGaficos2.jsp','','width=980,height=800,menubar=no,scrollbars=yes,toolbar=no,location=no,directories=no,resizable=no,top=0,left=0');
}
//-->
</script>


<script language="JavaScript" type="text/javascript">
<!--
function PopWindow3()
{
window.open('PruebaGaficos3.jsp','','width=1000,height=800,menubar=no,scrollbars=yes,toolbar=no,location=no,directories=no,resizable=no,top=0,left=0');
}
//-->
</script>

<script language="JavaScript" type="text/javascript">
function obtiene_fecha() {  
      
    var fecha_actual = new Date()  
  
    var dia = fecha_actual.getDate()  
    var mes = fecha_actual.getMonth() + 1  
    var anio = fecha_actual.getFullYear()  
  
    if (mes < 10)  
        mes = '0' + mes  
  
    if (dia < 10)  
        dia = '0' + dia  
  
    return (dia + "⁄" + mes + "⁄" + anio)  
}  
</script>


</head>

  <%         
    if ("Especialista".equals(Cargo)) {
    %>
<body onload="PopWindow()">
<% } else { %>
 <body>
  <%         
    }
    %>

<div id="contenido">
  <table width="761" border="0" align="center" cellpadding="0" cellspacing="0" class="alinea">
    <tbody>
      <tr>
        <td colspan="2"><script src="js/AC_RunActiveContent.js" type="text/javascript"></script>
            <table width="785" height="70" border="0" cellpadding="0" cellspacing="0" class="tabla-cabecera">
              <tbody>
                <tr>
                  <td width="453" align="center" background="imagenes/bannerPersona.jpg" class="td-bannerpersona">&nbsp;</td>
                  <td width="332" bgcolor="#2E75B3" class="login"><div align="center">
                    <table width="330" border="0">
                      <tr>
                        <td width="154">&nbsp;</td>
                        <td width="36" rowspan="3"><a href="logout"><img src="iconos/exit.png"  border="0" width="36" height="36" /></a></td>
                      </tr>
                      <tr>
                        <td><div align="right"><a href="logout"><%=Cargo + ": " + Usuario%></a></div></td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                      </tr>
                    </table>
                    </div></td>
                </tr>
              </tbody>
            </table></td>
      </tr>
      <tr>
        <td colspan="2"><table width="785" border="0" background="imagenes/f1.jpg">
          <tr>
            <td width="760"><span class="NClinks_titulo"><a href="Intranet.jsp"><strong>Home</strong></a><strong> | </strong>
            
                    
                       <%         
    if ("Administrador".equals(Cargo)) {
	
    %>
    <a href="JavaScript:PopWindow1()"><strong> Consultas</strong></a>
     <% } else { %>
                        
         <% }%>   
                        
            <strong> | </strong><a href="paginas/Index.html"><strong>Web Corporativa</strong></a><strong> |</strong></span></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td width="589" valign="top"><script src="js/AC_RunActiveContent.js" type="text/javascript"></script>
          <div align="center"> </div>
          <div align="center"> <a href="#"><img border="0" src="imagenes/home.jpg" /></a><br />
          </div>
          <table width="550" height="268" border="0">
            <tr>
              <td height="23"><div align="center" class="tablaTitulo"><strong>TERMINOS DE USO</strong></div></td>
            </tr>
            <tr>
              <td height="26" class="oncolinks"> <p>&nbsp;</p>
              <div align="justify">Estas condiciones de uso regulan la utilización de los contenidos de esta Intranet por parte de los trabajadores de la Clinica Salud medical. Esta Intranet puede ser visitada libremente por los trabajadores de esta Compañía para propósitos propios dentro del desempeño de sus funciones en el entorno laboral en esta Compañía. </div></td>
            </tr>
            <tr>
              <td height="173"> <p class="oncologia_noticia_tit">El usuario se compromete a: </p>
                <ul class="textoGeneral">
                  <li>
                    <div align="justify">No utilizar los contenidos de esta Intranet con una finalidad contraria a los propósitos de la Compañía.</div>
                  </li>
                  <li>
                    <div align="justify">No reproducir o copiar, no distribuir los contenidos de esta Intranet.</div>
                  </li>
                  <li>
                    <div align="justify">No permitir el acceso a personas ajenas a la Compañía.</div>
                  </li>
                  <li>
                    <div align="justify">No modificar ningún tipo de contenido, sin autorización de la Compañía.</div>
                  </li>
              </ul>                
              <p align="center"><img src="imagenes/banner_ocupados.png" width="504" height="202" /></p></td>
            </tr>
          </table>          
        </td>
<td width="196" valign="top" class="columnaDerecha"><script src="js/AC_RunActiveContent.js" type="text/javascript"></script>
            
              <table width="100%" border="0" cellpadding="0" cellspacing="0">
                <tbody>
                  <tr>
                      <%
                      String filtro=String.valueOf(ape);
                              %>
                    <td class="busqTitulo"><div align="center">
                                       <%         
    if ("Especialista".equals(Cargo)) {
    %>
    <a href="ModifyEspecialista?filtro=<%=filtro%>">
     
	  <% } else { %>
    
<a href="ModifyPersonal?filtro=<%=filtro%>">
	  <% } %>
    
    <img src="imagenes/modificar.png" width="146" height="30" border="0" /></a></div></td>
                  </tr>
                  <tr>
                    <td nowrap="nowrap" align="right" class="busqContenido"><div align="center">
                      <p><img src="<%=Foto%>" alt="perfil" /><br />
                      </p>
                      </div></td>
                  </tr>
                </tbody>
              </table>

        <table width="100%" border="0" cellpadding="0" cellspacing="0">
              <tbody>
                <tr>
                  <td class="busqTitulo">Consultas</td>
                </tr>
                <tr>
                  <td><table width="165" border="0" align="center" 
                              cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" class="NCcapitular">
                    <tbody>
                      <tr>
                        <td width="23"><img 
                                src="imagenes/flecha_horizontal.jpg" 
                                width="24" height="23" /></td>
                        <td bgcolor="#FFFFFF">&nbsp; <a href="Man_Paciente.jsp">Paciente</a></td>
                        <td>&nbsp;</td>
                      </tr>
                      
                       <%         
    if ("Especialista".equals(Cargo)) {
    %>
                      
     <% } else { %>
                      <tr>
                        <td><img 
                                src="imagenes/flecha_horizontal.jpg" alt="" 
                                width="24" height="23" /></td>
                        <td bgcolor="#FFFFFF"> &nbsp; <a href="Man_Personal.jsp">Personal</a></td>
                        <td>&nbsp;</td>
                      </tr>
                      
                      <% } %>
                      <tr>
                        
                        
                        
                        
                          <%         
    if ("Especialista".equals(Cargo)) {
    %>
    
      <% } else { %>
      <td><img 
                                src="imagenes/flecha_horizontal.jpg" alt="" 
                                width="24" height="23" /></td><td bgcolor="#FFFFFF">&nbsp; <a href="Man_Especialista.jsp">Especialista</a></td>
<% } %>
                      </tr>
                      <tr>
                        <td><img 
                                src="imagenes/flecha_horizontal.jpg" alt="" 
                                width="24" height="23" /></td>
                        <td bgcolor="#FFFFFF">&nbsp; <a href="Man_Reserva.jsp">Reserva</a></td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td><img 
                                src="imagenes/flecha_horizontal.jpg" alt="" 
                                width="24" height="23" /></td>
                        <td bgcolor="#FFFFFF">&nbsp; <a href="Man_Servicio.jsp">Servicio</a></td>
                        <td>&nbsp;</td>
                      </tr>
                      
    <%         
    if ("Especialista".equals(Cargo)) {
    %>
     <% } else { %>
                      <tr>
                        <td><img 
                                src="imagenes/flecha_horizontal.jpg" alt="" 
                                width="24" height="23" /></td>
                        <td bgcolor="#FFFFFF">&nbsp; <a href="Man_Especialidad.jsp">Especialidad</a></td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td><img 
                                src="imagenes/flecha_horizontal.jpg" alt="" 
                                width="24" height="23" /></td>
                        <td bgcolor="#FFFFFF">&nbsp; <a href="Man_Horario.jsp">Horario</a></td>
                        <td>&nbsp;</td>
                      </tr>
                      
   
                      <tr>
                        <td><img 
                                src="imagenes/flecha_horizontal.jpg" alt="" 
                                width="24" height="23" /></td>
                        <td bgcolor="#FFFFFF">&nbsp; <a href="Man_Cargo.jsp">Cargo</a></td>
                        <td>&nbsp;</td>
                      </tr>
      
	  <% } %>
                    </tbody>
                  </table>                  </td>
                </tr>
                <tr>
                  <td class="busqTitulo">Reportes</td>
                </tr>
                <tr>
                  <td><table width="173" border="0" align="center" 
                              cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" class="NCcapitular">
                    <tbody>
                      <tr>
                        <td width="23"><img src="iconos/Coquette  folder_accept.png" width="28" height="28" /></td>
                        <td bgcolor="#FFFFFF">&nbsp; <a href="RepPac.jsp" target="_self">Paciente</a></td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td><img src="iconos/Coquette  folder_accept.png" width="28" height="28" /></td>
                        <td bgcolor="#FFFFFF">&nbsp; <a href="RepPer.jsp" target="_self">Personal</a></td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td><img src="iconos/Coquette  folder_accept.png" width="28" height="28" /></td>
                        <td bgcolor="#FFFFFF">&nbsp; <a href="RepEsp.jsp" target="_self">Especialista</a></td>
                        <td>&nbsp;</td>
                      </tr>
                    </tbody>
                  </table></td>
                </tr>
                <tr>
                  <td class="tablaTitulo"><span class="busqTitulo">Citas</span></td>
                </tr>
              </tbody>
        </table>
          <table width="178" border="0" align="center" 
                              cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" class="NCcapitular">
            <tbody>
              <tr>
                <td width="23"><img 
                                src="iconos/kexi.png" 
                                width="30" height="30" /></td>
                <td bgcolor="#FFFFFF">&nbsp; <a href="RepRes.jsp" target="_self">Todas</a></td>
                <td>&nbsp;</td>
              </tr>
              <%         
    if ("Especialista".equals(Cargo)) {
    %>
     
              <tr>
                <td><p><img src="iconos/lassists.png" width="32" height="32" /></p></td>
                <td bgcolor="#FFFFFF">&nbsp; <a href="JavaScript:PopWindow()" target="_blank">Hoy</a></td>
                <td>&nbsp;</td>
              </tr>
              <% } else { }%>
              
            </tbody>
          </table>
          <table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tbody>
              <tr>
                <td class="busqTitulo">Estadísticas</td>
              </tr>
              <tr>
                <td><table width="186" border="0" align="center" 
                              cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" class="NCcapitular">
                    <tbody>
                      <tr>
                        <td width="23"><img src="iconos/chart.png" width="34" height="34" /></td>
                        <td bgcolor="#FFFFFF"><a href="JavaScript:PopWindow1()" target="_blank">Record de Reservas ...</a></td>
                        <td>&nbsp;</td>
                      </tr>
  
                      <tr>
                        <td><img src="iconos/chart_pie.png" width="34" height="34" /></td>
                        <td bgcolor="#FFFFFF"><a href="JavaScript:PopWindow2()" target="_blank">Cantidad de Reservas ...</a></td>
                        <td>&nbsp;</td>
                      </tr>
            
                      <tr>
                        <td><img src="iconos/date.png" width="34" height="34" /></td>
                        <td bgcolor="#FFFFFF"><a href="JavaScript:PopWindow3()" target="_blank">Total de Ingresos ..</a></td>
                        <td>&nbsp;</td>
                      </tr>
              
                      <tr>
  
                        <td><img src="iconos/kivio.png" width="34" height="34" /></td>
                        <td bgcolor="#FFFFFF">&nbsp;<a href="JavaScript:PopWindow0()" target="_blank">Historial de Reservas ...</a></td>
                
                      </tr>
                          </tbody>
                </table></td>
              </tr>
            </tbody>
          </table>
          </td>
      </tr>
      <tr>
        <td colspan="2"><table  background="imagenes/f2.jpg" width="785" border="0" cellpadding="0" cellspacing="0">
          <tbody>
            <tr>
              <td height="23"><div align="center"><span class="barrafondo">&copy; Copyright 2012 Cl&iacute;nica Salud 
                Medical S.A. -  Mz. A11 Lt. 01 - Urb.Manuel Ar&eacute;valo - Trujillo .</span></div></td>
            </tr>
          </tbody>
        </table>
            
        </td>
      </tr>
    </tbody>
  </table>
</div>
</body>
</html>
