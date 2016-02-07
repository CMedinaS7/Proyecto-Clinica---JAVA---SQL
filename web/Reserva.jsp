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
<%@page contentType="text/html" pageEncoding="UTF-8" import="Util.LlenarCombo1,java.util.Vector"%>
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
<script language="JavaScript" src="js/calendar_us.js"></script>
<link rel="stylesheet" href="js/calendar.css">
<style type="text/css">
<!--
.Estilo1 {color: #3366CC}
.Estilo2 {color: #FFFFFF}
-->
</style>

<script language="JavaScript"> 
function mueveReloj(){
	momentoActual = new Date()
	hora = momentoActual.getHours()
	minuto = momentoActual.getMinutes()
	segundo = momentoActual.getSeconds()
	
	str_segundo = new String (segundo)
	if (str_segundo.length == 1) 
		segundo = "0" + segundo
		
	str_minuto = new String (minuto)
	if (str_minuto.length == 1) 
		minuto = "0" + minuto
 
	str_hora = new String (hora)
	if (str_hora.length == 1) 
		hora = "0" + hora
		
	horaImprimible = hora + " : " + minuto + " : " + segundo
	
	document.reserva.reloj.value = horaImprimible
	
	setTimeout("mueveReloj()",1000)
}
</script> 
 <link rel="icon" type="image/png" href="iconos/saludmedical.png" />

</head>

<body onload="mueveReloj()"> 


<div id="contenido">
  <table width="761" border="0" align="center" cellpadding="0" cellspacing="0" class="alinea">
    <tbody>
      <tr>
        <td colspan="2"><script src="js/AC_RunActiveContent.js" type="text/javascript"></script>
            <table width="785" height="70" border="0" cellpadding="0" cellspacing="0" class="tabla-cabecera">
              <tbody>
                <tr>
                  <td width="565" align="center" background="imagenes/bannerPersona.jpg" class="td-bannerpersona"><a href="#"><img src="imagenes/shim.gif" alt="Trabajando.com" width="12" height="11" border="0" /></a></td>
                  <td width="200" bgcolor="#2E75B3" class="login"><div align="center">
                    <table width="261" border="0">
                      <tr>
                        <td width="154">&nbsp;</td>
                        <td width="36" rowspan="3"><a href="logout"><img src="iconos/exit.png" alt="" width="36" height="36"  border="0" /></a></td>
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
            <td width="760" class="NClinks_titulo"><a href="Intranet.jsp"><strong>Home</strong></a><strong> | </strong><a href="consultas.jsp"><strong> Consultas</strong></a><strong> | </strong><a href="paginas/Index.html"><strong>Web Corporativa</strong></a><strong> |</strong></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td width="565" valign="top"><script src="js/AC_RunActiveContent.js" type="text/javascript"></script>
            <table width="100%" border="0" cellpadding="0" cellspacing="0" class="tabla-home">
              <tbody>
                <tr>
                  <td valign="top" class="busqTitulo">Mantenimiento de las Reservas</td>
                </tr>
              </tbody>
            </table>
      
            <div align="center"> </div>
            <table width="586" height="559" bgcolor="#EBEBEB">
            <tr>
              <td height="553"><form action="ModifyReserva" method="post" name="reserva">
                <center><fieldset style=" background-color:#CCCCCC; width:380px;">
<div align="left">
  <legend class="busqTitulo Estilo1"></legend>
  
    <div align="center">
      <legend><span class="maternidad_txt_destacado">Ingrese Numero: 
      
      </span><span class="maternidad_txt_destacado">
      <%         
    if ("3".equals(resp)) {
    %>
      <input name="txtcodigo" type="text" value="<%=request.getParameter("codigo")%>" style="width:200px;"/>
      <% } else { %>
      <input type="text" name="txtcodigo" size="25"/>
      <% } %>
      <input type="submit" class="boton"  value="Buscar"  name="buscar" border="2"/>
      </span></legend>
    </div>
</div>
</fieldset></center>
</p>
<table width="337"align="center"  background="imagenes/fondo_esp.png" class="vacunatorio_titulo_n2">
  <tr>
    <td width="10">&nbsp;</td>
    <td width="87">&nbsp;</td>
    <td width="7">&nbsp;</td>
    <td width="213">&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td width="87">Fecha</td>
    <td width="7">&nbsp;</td>
    <td width="213"><span class="maternidad_txt_destacado">
      <%         
    if ("3".equals(resp)) {
    %>
      </span>
      <input name="txtfecha" type="text" id="txtfecha" value="<%=request.getParameter("fecha")%>" readonly="readonly" />
    <script language="JavaScript" type="text/javascript">
		new tcal ({
		'formname': 'reserva',

		'controlname': 'txtfecha'
		});
		                      </script>
        <span class="maternidad_txt_destacado">
        <% } else { %>
        </span>
        <input name="txtfecha" type="text" id="txtfecha" readonly="readonly" />
          <script language="JavaScript" type="text/javascript">
		new tcal ({
		'formname': 'reserva',

		'controlname': 'txtfecha'
		});
		                      </script>
        <span class="maternidad_txt_destacado">
        <% } %>
        </span><br /></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>Hora</td>
    <td>&nbsp;</td>
    <td><span class="maternidad_txt_destacado">
      <%         
    if ("3".equals(resp)) {
    %>
      </span>
      <input name="reloj" type="text" onfocus="window.document.form_reloj.reloj.blur()" value="<%=request.getParameter("hora")%>" size="10">  
      <span class="maternidad_txt_destacado">
      <% } else { %>
      </span>
      <input name="reloj" type="text" id="reloj" onfocus="window.document.form_reloj.reloj.blur()" size="10" />
      <span class="maternidad_txt_destacado">
      <% } %>
      </span><br /></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>DNI Paciente</td>
    <td>&nbsp;</td>
    <td><span class="maternidad_txt_destacado">
      <%         
    if ("3".equals(resp)) {
    %>
      </span>
      <input name="txtpaciente" type="text" id="txtpaciente" value="<%=request.getParameter("paciente")%>"  size="10" maxlength="8"/>
      <span class="maternidad_txt_destacado">
      <% } else { %>
      </span>
      <input name="txtpaciente" type="text" id="txtpaciente"  size="10" maxlength="8"/>
      <span class="maternidad_txt_destacado">
      <% } %>
      </span><br /></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>Servicio</td>
    <td>&nbsp;</td>
    <td><select name="cboservicio" id="cboservicio">
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
      <br /></td></tr>
  <tr>
    <td>&nbsp;</td>
    <td>Especialista</td>
    <td>&nbsp;</td>
    <td><select name="cboespecialista" id="cboespecialista">
      <%
           Aux = combo.llenarEspecialista();
           String[] datos=new String[2];
           for(int i=0; i<Aux.size();i++){
               datos=(String[])Aux.elementAt(i);        
%>
      <option value="<%=datos[0] %>"><%=datos[1] %></option>
      <%
  }
%>
    </select></td></tr>
  <tr>
    <td>&nbsp;</td>
    <td>Descripcion</td>
    <td>&nbsp;</td>
    <td><span class="maternidad_txt_destacado">
      <%         
    if ("3".equals(resp)) {
    %>
      </span>
      <input name="txtdescripcion" type="text" id="txtdescripcion" style="width:200px;" value="<%=request.getParameter("descripcion")%>" />
      <span class="maternidad_txt_destacado">
      <% } else { %>
      <input name="txtdescripcion" type="text" id="txtdescripcion" style="width:200px;" />
      <% } %>
      </span></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>Precio</td>
    <td>&nbsp;</td>
    <td><span class="maternidad_txt_destacado">
      <%         
    if ("3".equals(resp)) {
    %>
      </span>
      <input name="txtprecio" type="text" id="txtprecio"  onkeyup="this.value = this.value.replace (/[^0-9]/,'');" value="<%=request.getParameter("precio")%>" />
      <span class="maternidad_txt_destacado">
      <% } else { %>
      <input name="txtprecio" type="text" id="txtprecio"  onkeyup="this.value = this.value.replace (/[^0-9]/,'');" />
      <% } %>
      </span></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<br />
<center>
  <fieldset style=" background-color:#CCCCCC; width:380px;">

    
    <div align="center">
      <legend class="busqTitulo">
        <input name="nuevo" type="submit" class="boton" id="nuevo"  value="Nuevo"  border="2"/>
        <input name="grabar" type="submit" class="boton" id="grabar"  value="Grabar"  border="2"/>
        <input name="modificar" type="submit" class="boton" id="modificar"  value="Modificar"  border="2"/>
        <input name="eliminar" type="submit" class="boton" id="eliminar"  value="Eliminar"  border="2"/>
        <input name="Restablecer" type="reset" class="boton"  value="Cancelar"  border="2"/>
        </legend>
    </div>

</fieldset>
</center>
</form>
 <% String msg=request.getParameter("msg");
                        if("Ok".equals(msg)){
                        %>
                        <script language='javaScript' >
                            alert("Reserva registrada correctamente!");
                        </script>
                      <% }else{
                            if(msg=="No"){
                      %>
                        <script language='javaScript'>
                           alert("Error al registrar Reserva");
                        </script>
                       <% }} %>

						
                                    <% 
                        if("1".equals(resp)){
                        %>
                        <script language='javaScript' >
                            alert("Resrva Modificada correctamente!");
                        </script>
                      	<% } %>
                        
                        <% 
                        if("2".equals(resp)){
                        %>
                        <script language='javaScript' >
                            alert("Error al Modificar Reserva!");
                        </script>
                      	<% } %>
                        
                        <% 
                        if("3".equals(resp)){
                        %>
                        <script language='javaScript' >
                            alert("Reserva encontrada!");
                        </script>
                      	<% } %>
                        
                        <% 
                        if("4".equals(resp)){
                        %>
                        <script language='javaScript' >
                            alert("Reserva no Existe!");
                        </script>
                      	<% } %>
                       
			            <% 
                        if("5".equals(resp)){
                        %>
                        <script language='javaScript' >
                            alert("Reserva Eliminada!");
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
          </table>          
        </td>
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
                        <td width="23"><img 
                                src="iconos/reporte.png" 
                                width="30" height="30" /></td>
                        <td bgcolor="#FFFFFF">&nbsp; <a href="ReportePacientes.jsp" target="_blank">Paciente</a></td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td><img 
                                src="iconos/reporte.png" alt="" 
                                width="30" height="30" /></td>
                        <td bgcolor="#FFFFFF">&nbsp; <a href="ReporteUsuarios.jsp" target="_blank">Personal</a></td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td><img 
                                src="iconos/reporte.png" alt="" 
                                width="30" height="30" /></td>
                        <td bgcolor="#FFFFFF">&nbsp; <a href="ReporteEspecialistas.jsp" target="_blank">Especialista</a></td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td><img 
                                src="iconos/reporte.png" alt="" 
                                width="30" height="30" /></td>
                        <td bgcolor="#FFFFFF">&nbsp; <a href="ReporteReservas.jsp" target="_blank">Reserva</a></td>
                        <td>&nbsp;</td>
                      </tr>
                    </tbody>
                  </table></td>
                </tr>
                <tr>
                  <td class="tablaTitulo">&nbsp;</td>
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
