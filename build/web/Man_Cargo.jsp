<%
            HttpSession sesion = request.getSession(true);
            String Usuario = (String) sesion.getAttribute("nombre") + " " + (String) sesion.getAttribute("apellido");
            String Cargo = (String) sesion.getAttribute("cargo");
			String resp = request.getParameter("resp");
			String msg=request.getParameter("msg");
			String codigo = request.getParameter("codigo");
			String Foto = (String) sesion.getAttribute("foto");

            String filtro=String.valueOf(codigo);
            if ((String) sesion.getAttribute("nombre") == null) {
                response.sendRedirect("Intranet.jsp?error=!!!!Necesita Loguearse!!!!!!!!!!!");
            }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"  language="java" import="java.util.*, Beans.cargo"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Clinica Salud Medical</title>


<LINK href="estilos/css.css" rel="stylesheet" type="text/css">
<LINK href="estilos/estilos.css" rel="stylesheet" type="text/css">
 <link rel="icon" type="image/png" href="iconos/saludmedical.png" />
<style type="text/css">
<!--
.Estilo1 {color: #3366CC}
.Estilo2 {color: #FFFFFF}
-->
</style>

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

</head>

<body>


<div id="contenido">
  <table width="761" border="0" align="center" cellpadding="0" cellspacing="0" class="alinea">
    <tbody>
      <tr>
        <td colspan="2"><script src="js/AC_RunActiveContent.js" type="text/javascript"></script>
            <table width="785" height="70" border="0" cellpadding="0" cellspacing="0" class="tabla-cabecera">
              <tbody>
                <tr class="alinea">
                  <td><script src="js/AC_RunActiveContent.js" type="text/javascript"></script>
                      <table width="785" height="70" border="0" cellpadding="0" cellspacing="0" class="tabla-cabecera">
                        <tbody>
                          <tr>
                            <td width="453" align="center" background="imagenes/bannerPersona.jpg" class="td-bannerpersona"><a href="#"><img src="imagenes/shim.gif"  width="12" height="11" border="0" /></a></td>
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
              </tbody>
        </table></td>
      </tr>
      <tr>
        <td colspan="2"><table width="785" border="0" background="imagenes/f1.jpg">
          <tr>
            <td><span class="NClinks_titulo"><a href="Intranet.jsp"><strong>Home</strong></a><strong> | </strong>
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
        <td width="565" valign="top"><script src="js/AC_RunActiveContent.js" type="text/javascript"></script>
            <table width="100%" border="0" cellpadding="0" cellspacing="0" class="tabla-home">
              <tbody>
                <tr>
                  <td valign="top" class="busqTitulo">Mantenimiento del Cargo</td>
                </tr>
              </tbody>
            </table>
      
            <div align="center"> </div>
            <table width="586" height="559" bgcolor="#EBEBEB">
            <tr>
              <td height="553"><form action="ModifyCargo" method="post" name="cargo">
                <center><fieldset style=" background-color:#CCCCCC; width:380px;">
<div align="left">
    
    <div align="center">
      <span class="maternidad_txt_destacado">Ingrese IdCargo:
      <%         
    if ("3".equals(resp)) {
    %>
      <input name="txtcodigo" type="text" value="<%=request.getParameter("codigo")%>" style="width:200px;" id="busca"/>
      <% } else { %>
      <input type="text" name="txtcodigo" size="25" id="busca"/>
      <% } %>
      <input type="submit" class="boton"   onclick="buscar()" value="Buscar"  name="buscar" border="2" id="buscar"/>
</span></div>
</div>
</fieldset></center>
                </p>
                <br />
                <br />
                <table width="367" align="center" background="imagenes/fondo_car.png">
<tr>
  <td width="45" height="26" class="vacunatorio_titulo_n2">&nbsp;</td>
                      <td width="67" class="vacunatorio_titulo_n2">&nbsp;</td>
                      <td width="218">&nbsp;</td>
                      <td width="17">&nbsp;</td>
</tr>
                            <tr>
                              <td class="vacunatorio_titulo_n2">&nbsp;</td>
                                <td class="vacunatorio_titulo_n2">Nombre:</td>
                                <td><%         
    if ("3".equals(resp)) {
    %>
                                  <input type="text" name="txtnombre" value="<%=request.getParameter("nombre")%>" size="25"  onkeyup="this.value = this.value.replace (/[^aA-zZ]/,'');"/>
                                  <% } else { %>
                                  <input type="text" name="txtnombre" value="" size="25"  onkeyup="this.value = this.value.replace (/[^aA-zZ]/,'');"/>
                                  <% } %><br /></td>
                              <td>&nbsp;</td>
                            </tr>
                            <tr>
                              <td class="vacunatorio_titulo_n2">&nbsp;</td>
                              <td class="vacunatorio_titulo_n2">&nbsp;</td>
                              <td>&nbsp;</td>
                              <td>&nbsp;</td>
                            </tr>
                        </table>
                        
                <br />
                <br />
<center>
  <fieldset style=" background-color:#CCCCCC; width:380px;">

    
    <div align="center">
      <legend>

</legend>
    </div>
      <input name="nuevo" type="submit" class="boton" id="nuevo"  value="Nuevo"  border="2"/>
      <input name="grabar" type="submit" class="boton" id="grabar"  value="Grabar"  border="2"/>
      <input name="modificar" type="submit" class="boton" id="modificar"  value="Modificar"  border="2"/>
      <input name="eliminar" type="submit" class="boton" id="eliminar"  value="Eliminar"  border="2"/>
      <input name="Restablecer" type="reset" class="boton"  value="Cancelar"  border="2"/>
</fieldset>
</center>
</form>
		
 						<% 
                        if("Ok".equals(msg)){
                        %>
                        <script language='javaScript' >
                            alert("Cargo registrado correctamente!");
                        </script>
                      	<% } %>
                        
                        <% 
                        if("1".equals(resp)){
                        %>
                        <script language='javaScript' >
                            alert("Cargo Modificado correctamente!");
                        </script>
                      	<% } %>
                        
                        <% 
                        if("2".equals(resp)){
                        %>
                        <script language='javaScript' >
                            alert("Error al Modificar cargo!");
                        </script>
                      	<% } %>
                        
                        <% 
                        if("3".equals(resp)){
                        %>
                        <script language='javaScript' >
                            alert("Cargo encontrado!");
                        </script>
                      	<% } %>
                        
                        <% 
                        if("4".equals(resp)){
                        %>
                        <script language='javaScript' >
                            alert("Cargo no Existe!");
                        </script>
                      	<% } %>
                        
                         <% 
                        if("5".equals(resp)){
                        %>
                        <script language='javaScript' >
                            alert("Cargo Eliminado!");
                        </script>
                      	<% } %>
                          <% 
                        if("6".equals(resp)){
                        %>
                        <script language='javaScript' >
                            alert("Error al Eliminar!");
                        </script>
                      	<% } %>
                        
                       
                <p align="center" class="links_titulos_proveedores">&nbsp;</p>
              <p align="center" class="links_titulos_proveedores"><img src="imagenes/especialidades.png" width="535" height="191" /></p></td>
            </tr>
          </table>          
        </td>
        <td width="194" valign="top" class="columnaDerecha"><script src="js/AC_RunActiveContent.js" type="text/javascript"></script>
            
              <table width="100%" border="0" cellpadding="0" cellspacing="0">
                <tbody>
                  <tr>
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
                    <td nowrap="nowrap" align="right" class="busqContenido"><div align="center"><img src="<%=Foto%>" alt="perfil" /></div></td>
                  </tr>
                  <tr>
                    <td class="busqContenido">&nbsp;</td>
                  </tr>
                </tbody>
              </table>

          <table width="100%" border="0" cellpadding="0" cellspacing="0">
              <tbody>
                <tr>
                  <td class="busqTitulo">Consultas</td>
                </tr>
                <tr>
                  <td><table width="185" border="0" align="center" 
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
                        <td bgcolor="#FFFFFF">&nbsp; <a href="Man_Personal.jsp">Personal</a></td>
                        <td>&nbsp;</td>
                      </tr>
                      <% } %>
                      <tr>
                        <td><img 
                                src="imagenes/flecha_horizontal.jpg" alt="" 
                                width="24" height="23" /></td>
                                           
                        <td bgcolor="#FFFFFF">&nbsp; <a href="Man_Especialista.jsp">Especialista</a></td>
                    
                        <td>&nbsp;</td>
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
                  </table></td>
                </tr>
                <tr>
                  <td class="busqTitulo">Reportes</td>
                </tr>
                <tr>
                  <td><table width="185" border="0" align="center" 
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
          <table width="185" border="0" align="center" 
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
          </table></td>
      </tr>
      <tr>
        <td colspan="2"><table  background="imagenes/f2.jpg" width="785" border="0" cellpadding="0" cellspacing="0">
          <tbody>
            <tr>
              <td height="23"><div align="center" class="barrafondo">&copy; Copyright 2012 Cl&iacute;nica Salud 
                Medical S.A. -  Mz. A11 Lt. 01 - Urb.Manuel Ar&eacute;valo - Trujillo .</div></td>
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
