<%
            HttpSession sesion = request.getSession(true);
            String Usuario = (String) sesion.getAttribute("nombre") + " " + (String) sesion.getAttribute("apellido");
            String Cargo = (String) sesion.getAttribute("cargo");
			String resp = request.getParameter("resp");
			String codigo = request.getParameter("codigo");
			String Foto = (String) sesion.getAttribute("foto");
            if ((String) sesion.getAttribute("nombre") == null) {
                response.sendRedirect("Intranet.jsp?error=!!!!Necesita Loguearse!!!!!!!!!!!");
            }
%>


<%@page contentType="text/html" pageEncoding="UTF-8" import="Util.LlenarCombo1,java.util.Vector,Beans.especialista" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%
            LlenarCombo1 combo = new LlenarCombo1();
            Vector Aux = new Vector();
%>

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
</head>

<body>


<div id="contenido">
  <table width="761" border="0" align="center" cellpadding="0" cellspacing="0" class="alinea">
    <tbody>
      <tr>
        <td colspan="2"><script src="js/AC_RunActiveContent.js" type="text/javascript"></script>
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
                  <td valign="top" class="busqTitulo">Mantenimiento del Especialista</td>
                </tr>
              </tbody>
            </table>
      
            <div align="center"> </div>
            <table width="586" height="559" bgcolor="#EBEBEB">
            <tr>
              <td height="553"><form action="AddUser" method="post">
               
</p>
<table width="336"align="center"  background="imagenes/fondo_esp.png" class="vacunatorio_titulo_n2">
    <tr>
                              <td width="12">&nbsp;</td>
                                <td width="78">&nbsp;</td>
                                <td width="16">&nbsp;</td>
                      <td width="202">&nbsp;</td>
                      <td width="4">&nbsp;</td>
                    </tr>
                            <tr>
                              <td>&nbsp;</td>
                                <td width="78">Apellidos</td>
                                <td width="16">&nbsp;</td>
                        <td width="202"><input name="txtapellidos" type="text" id="txtapellidos"   value="<%=request.getParameter("apellidos")%>" size="25" />                        <br /></td>
                              <td width="4">&nbsp;</td>
                    </tr>
                            <tr>
                              <td>&nbsp;</td>
                                <td>Nombre</td>
                                <td>&nbsp;</td>
                                <td><input type="text" name="txtnombre" value="<%=request.getParameter("nombre")%>" size="25" onkeyup="this.value = this.value.replace (/[^A-ZÑa-zñ 32]/, '');" />                                <br /></td>
                              <td>&nbsp;</td>
                    </tr>
                            <tr>
                              <td>&nbsp;</td>
                                <td>Cargo</td>
                                <td>&nbsp;</td>
                                <td><input name="txtcargo" type="text" id="txtdni" value="Especialista" size="25" maxlength="25"/>
                                <br /></td>
                              <td>&nbsp;</td>
                    </tr>
                            <tr>
                              <td colspan="5">------------------------------------------------------<br /></td>
                    </tr>
                            <tr>
                              <td>&nbsp;</td>
                                <td>Usuario</td>
                              <td>&nbsp;</td>
                                <td><label>
                                  <input type="text" name="usuario" id="usuario" />
                                </label>
                              <br /></td>
                              <td>&nbsp;</td>
                          </tr>
                            <tr>
                              <td>&nbsp;</td>
                                <td>Clave</td>
                                <td>&nbsp;</td>
                                <td><input type="password" name="clave" id="clave" />
                              <td>                                
                            <tr>
                              <td>&nbsp;</td>
                              <td>Foto:</td>
                              <td>&nbsp;</td>
                              <td><label>
                                <input type="file" name="txtfoto" id="txtfoto" />
                              </label>
                    <td>                            </tr>
                            <tr>
                              <td height="18">&nbsp;</td>
                              <td>&nbsp;</td>
                              <td>&nbsp;</td>
                              <td>&nbsp;</td>
                              <td>&nbsp;</td>
                            </tr>
                            <tr>
                              <td height="18">&nbsp;</td>
                              <td>&nbsp;</td>
                              <td>&nbsp;</td>
                              <td>&nbsp;</td>
                              <td>&nbsp;</td>
                            </tr>
                            <tr>
                              <td height="18">&nbsp;</td>
                              <td>&nbsp;</td>
                              <td>&nbsp;</td>
                              <td>&nbsp;</td>
                              <td>&nbsp;</td>
                            </tr>
                  </table>
<br />
<center>
  <fieldset style=" background-color:#CCCCCC; width:380px;">
<div align="left">
 
  
    <div align="center">
      <legend>
     
      </legend>
    </div>
</div>
 <input name="asignar" type="submit" class="boton" id="asignar"  value="Asignar +"  border="2"/>
  </fieldset>
</center>
</form>
          
          <% String msg=request.getParameter("msg");
                        if("ok".equals(msg)){
                        %>
                        <script language='javaScript' >
                            alert("Especialista registrado correctamente!");
                        </script>
                      <% }else{
                            if(msg=="falso"){
                      %>
                <script language='javaScript'>
                           alert("Error al registrar Especialista");
                        </script>
               <% }} %>
                       
                       
                                                
                        <% 
                        if("1".equals(resp)){
                        %>
                        <script language='javaScript' >
                            alert("Especialista Modificado correctamente!");
                        </script>
                      	<% } %>
                        
                        <% 
                        if("2".equals(resp)){
                        %>
                        <script language='javaScript' >
                            alert("Error al Modificar Especialista!");
                        </script>
                      	<% } %>
                        
                        <% 
                        if("3".equals(resp)){
                        %>
                        <script language='javaScript' >
                            alert("Especialista encontrado!");
                        </script>
                      	<% } %>
                        
                <% 
                        if("4".equals(resp)){
                        %>
                        <script language='javaScript' >
                            alert("Especialista no Existe!");
                        </script>
               	<% } %>
                       
			            <% 
                        if("5".equals(resp)){
                        %>
                        <script language='javaScript' >
                            alert("Especialista Eliminado!");
                        </script>
                      	<% } %>
                          <% 
                        if("6".equals(resp)){
                        %>
                        <script language='javaScript' >
                            alert("Error al Eliminar!");
                        </script>
                      	<% } %>
          
          
                <p align="center" class="links_titulos_proveedores"><img src="imagenes/especialidades.png" width="535" height="191" /></p></td>
            </tr>
          </table>        </td>
        <td width="194" valign="top" class="columnaDerecha"><script src="js/AC_RunActiveContent.js" type="text/javascript"></script>
            
              <table width="100%" border="0" cellpadding="0" cellspacing="0">
                <tbody>
                  <tr>
                    <td class="busqTitulo">Bienvenido:  </td>
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
                        <%         
    if ("Especialista".equals(Cargo)) {
    %>
                        <td bgcolor="#FFFFFF">&nbsp; <a href="Datos_Admin.jsp">Perfil</a></td>
                        <% } else { %>
                        <td bgcolor="#FFFFFF">&nbsp; <a href="Man_Especialista.jsp">Especialista</a></td>
                        <% } %>
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
        </table>        </td>
      </tr>
    </tbody>
  </table>
</div>
</body>
</html>
