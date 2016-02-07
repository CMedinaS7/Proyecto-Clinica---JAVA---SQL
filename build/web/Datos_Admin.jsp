<%
            HttpSession sesion = request.getSession(true);
            String Usuario = (String) sesion.getAttribute("nombre") + " " + (String) sesion.getAttribute("apellido");
            String Cargo = (String) sesion.getAttribute("cargo");
			String Foto = (String) sesion.getAttribute("foto");
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
   <script language="JavaScript" src="js/calendar_us.js"></script>
	<link rel="stylesheet" href="js/calendar.css">
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
            <td width="760" class="NClinks_titulo"><a href="Intranet.jsp"><strong>Home</strong></a><strong> | </strong><a href="consultas.jsp"><strong> Consultas</strong></a><strong> | </strong><a href="paginas/Index.html"><strong>Web Corporativa</strong></a><strong> |</strong></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td width="565" valign="top"><script src="js/AC_RunActiveContent.js" type="text/javascript"></script>
            <table width="100%" border="0" cellpadding="0" cellspacing="0" class="tabla-home">
              <tbody>
                <tr>
                  <td valign="top" class="busqTitulo">Perfil de Usuario</td>
                </tr>
              </tbody>
            </table>
      
            <div align="center"> </div>
            <table width="586" height="559" bgcolor="#EBEBEB">
              <tr>
                <td height="553"><form action="#" method="post" name="perfil">
                  <center>
                    </center>
                  <table width="415" height="429" align="center" background="imagenes/fondo_per.png">
              <tr>
                        <td width="31" height="37" class="vacunatorio_titulo_n2">&nbsp;</td>
                      <td width="139" class="vacunatorio_titulo_n2">&nbsp;</td>
                      <td width="207">&nbsp;</td>
                      <td width="18">&nbsp;</td>
                      </tr>
                      <tr>
                        <td class="vacunatorio_titulo_n2">&nbsp;</td>
                        <td class="vacunatorio_titulo_n2">Apellidos</td>
                        <td><input name="txtapellidos" type="text" id="txtapellidos" onkeyup="this.value = this.value.replace (/[^aA-zZ]/,'');" value="Medina Silvestre" size="25" />
                            <br /></td>
                        <td>&nbsp;</td>
                      </tr>

                      <tr>
                        <td class="vacunatorio_titulo_n2">&nbsp;</td>
                        <td class="vacunatorio_titulo_n2">Nombre</td>
                        <td><input type="text" name="txtnombre" value="Carlos Jhoel" size="25"  onkeyup="this.value = this.value.replace (/[^aA-zZ]/,'');" />
                            <br /></td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td class="vacunatorio_titulo_n2">&nbsp;</td>
                        <td class="vacunatorio_titulo_n2">DNI</td>
                        <td><input name="txtdni" type="text" id="txtdni"  onkeyup="this.value = this.value.replace (/[^0-9]/,'');" value="19030102" size="15" maxlength="9"/>
                                                      <br /></td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td class="vacunatorio_titulo_n2">&nbsp;</td>
                        <td class="vacunatorio_titulo_n2">Fecha de Nacimiento</td>
                        <td><input name="txtfechanac" type="text" id="txtfechanac" value="11/11/1991" readonly="readonly" />
                        <script language="JavaScript">
		new tcal ({
		'formname': 'perfil',

		'controlname': 'txtfechanac'
		});
		</script>
                        <br /></td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td class="vacunatorio_titulo_n2">&nbsp;</td>
                        <td class="vacunatorio_titulo_n2">Telefono</td>
                        <td><input name="txttel" type="text" id="txttel"  onkeyup="this.value = this.value.replace (/[^0-9]/,'');" value="793742" size="10" maxlength="9"/></td>
                        <td>&nbsp;</td>
                      </tr>

                      <tr>
                        <td class="vacunatorio_titulo_n2">&nbsp;</td>
                        <td class="vacunatorio_titulo_n2">Direccion</td>
                        <td><input type="text" name="txtdireccion" value="Av. Los Cipreces Mz.18 Lt.04" size="25" style="width:200px;" />
                            <br /></td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td class="vacunatorio_titulo_n2">&nbsp;</td>
                        <td class="vacunatorio_titulo_n2">Telefono</td>
                        <td><input type="text" name="txttelf" value="793742" size="10" maxlength="9"  onkeyup="this.value = this.value.replace (/[^0-9]/,'');"/>
                        <br /></td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td class="vacunatorio_titulo_n2">&nbsp;</td>
                        <td class="vacunatorio_titulo_n2">Fecha de Ingreso</td>
                        <td><input type="text" name="txtfechareg" value="05/06/1999" readonly="readonly" />
<script language="JavaScript">
		new tcal ({
		'formname': 'perfil',

		'controlname': 'txtfechareg'
		});
		</script>
                                            <br /></td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td class="vacunatorio_titulo_n2">&nbsp;</td>
                        <td class="vacunatorio_titulo_n2">Observacion</td>
                        <td><input type="text" name="txtobservacion" value="I'm PorTa" style="width:200px;" /></td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td height="21" class="vacunatorio_titulo_n2">&nbsp;</td>
                        <td class="vacunatorio_titulo_n2">Cargo</td>
                        <td><input name="txtcargo" type="text" id="txtcargo"  onkeyup="this.value = this.value.replace (/[^aA-zZ]/,'');" value="Administrador" size="25" /></td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td height="21" class="vacunatorio_titulo_n2">&nbsp;</td>
                        <td class="vacunatorio_titulo_n2">Horario</td>
                        <td><input name="txthorario" type="text" id="txthorario"  onkeyup="this.value = this.value.replace (/[^aA-zZ]/,'');" value="Tarde" size="25" /></td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td height="21" class="vacunatorio_titulo_n2">&nbsp;</td>
                        <td class="vacunatorio_titulo_n2">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                      </tr>
                    </table>
            <br />
                    <center>
                      <fieldset style=" background-color:#CCCCCC; width:380px;">
                      <div align="center">
                        <legend class="busqTitulo">
                       <input type="submit" class="boton"  value="Modificar"  border="2"/>
                         <input name="Restablecer" type="reset" class="boton"  value="Cancelar"  border="2"/>
                        </legend>
                      </div>
                      </fieldset>
                    </center>
                </form>
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
                      <tr>
                        <td><img 
                                src="imagenes/flecha_horizontal.jpg" alt="" 
                                width="24" height="23" /></td>
                        <td bgcolor="#FFFFFF">&nbsp; <a href="Datos_Admin.jsp">Perfil</a></td>
                        <td>&nbsp;</td>
                      </tr>
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
                        <%         
    if ("Especialista".equals(Cargo)) {
    %>
                        <% } else { %>
                        <td><img 
                                src="imagenes/flecha_horizontal.jpg" alt="" 
                                width="24" height="23" /></td>
                        <td bgcolor="#FFFFFF">&nbsp; <a href="Man_Especialista.jsp">Especialista</a></td>
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
                        <td bgcolor="#FFFFFF">&nbsp; <a href="ReportePacientes.jsp" target="_blank">Paciente</a></td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td><img src="iconos/Coquette  folder_accept.png" width="28" height="28" /></td>
                        <td bgcolor="#FFFFFF">&nbsp; <a href="ReporteUsuarios.jsp" target="_blank">Personal</a></td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td><img src="iconos/Coquette  folder_accept.png" width="28" height="28" /></td>
                        <td bgcolor="#FFFFFF">&nbsp; <a href="ReporteEspecialistas.jsp" target="_blank">Especialista</a></td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td><img src="iconos/Coquette  folder_accept.png" width="28" height="28" /></td>
                        <td bgcolor="#FFFFFF">&nbsp; <a href="ReporteReservas.jsp" target="_blank">Reserva</a></td>
                        <td>&nbsp;</td>
                      </tr>
                    </tbody>
                  </table></td>
                </tr>
                <tr>
                  <td class="tablaTitulo"><span class="busqTitulo">Mis Citas</span></td>
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
                <td bgcolor="#FFFFFF">&nbsp; <a href="ReportePacientes.jsp" target="_blank">Todas</a></td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><p><img src="iconos/lassists.png" width="32" height="32" /></p></td>
                <td bgcolor="#FFFFFF">&nbsp; <a href="JavaScript:PopWindow()" target="_blank">Hoy</a></td>
                <td>&nbsp;</td>
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
        </table>        </td>
      </tr>
    </tbody>
  </table>
</div>
</body>
</html>
