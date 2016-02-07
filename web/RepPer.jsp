<%
            HttpSession sesion = request.getSession(true);
            String Usuario = (String) sesion.getAttribute("nombre") + " " + (String) sesion.getAttribute("apellido");
            String Cargo = (String) sesion.getAttribute("cargo");
			String resp = request.getParameter("resp");
			String codigo = request.getParameter("codigo");
			String Foto = (String) sesion.getAttribute("foto");
                         String filtro=String.valueOf(codigo);
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
            <td width="760" class="NClinks_titulo"><a href="Intranet.jsp"><strong>Home</strong></a><strong> | </strong><a href="consultas.jsp"><strong> Consultas</strong></a><strong> | </strong><a href="paginas/Index.html"><strong>Web Corporativa</strong></a><strong> |</strong></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td width="565" valign="top"><script src="js/AC_RunActiveContent.js" type="text/javascript"></script>
            <table width="100%" border="0" cellpadding="0" cellspacing="0" class="tabla-home">
              <tbody>
                <tr>
                  <td valign="top" class="busqTitulo">Reportes - Personal</td>
                </tr>
              </tbody>
            </table>
      
            <div align="center"> </div>
            <table width="586" height="559" bgcolor="#EBEBEB">
            <tr>
                <td height="553"><table width="444" align="center" bordercolor="#003333" bgcolor="#CCCCCC">
<tr>
  <td colspan="3" class="vacunatorio_titulo_n2"><div align="center" class="vacunatorio_titulo_n2">REPORTES PARA MOSTRAR</div></td>
                      <td width="17">&nbsp;</td>
</tr>
                            <tr>
                              <td width="32" class="vacunatorio_titulo_n2">&nbsp;</td>
                                <td width="114" class="urologia_txt_destacado">Personal Activo:</td>
                                <td width="261"><label></label>
                                  <label></label>
                                  <form action="Report/PersonalTodos.jsp" method="post" name="form2" target="_blank" id="form2">
                                    <input type="submit" name="button" id="button" value="Mostrar" />
                                    <br />
                                  </form>                              </td>
                              <td>&nbsp;</td>
                            </tr>
                            <tr>
                              <td height="22" class="vacunatorio_titulo_n2">&nbsp;</td>
                              <td class="vacunatorio_titulo_n2"><span class="urologia_txt_destacado">Ingrese Codigo:</span></td>
                              <td><form action="Report/PersonalCodDNI.jsp" method="post" name="form1" target="_blank" id="form1">
                                <label>
                                <input type="text" name="codigo" id="codigo" />
                                </label>
                                                            <label>
                                                            <input type="submit" name="button2" id="button2" value="Buscar" />
                                </label>
                              </form>                              </td>
                              <td>&nbsp;</td>
                            </tr>
                            <tr>
                              <td height="22" class="vacunatorio_titulo_n2">&nbsp;</td>
                              <td class="vacunatorio_titulo_n2"><span class="urologia_txt_destacado">Ingrese DNI:</span></td>
                              <td><form action="Report/PersonalCodDNI.jsp" method="post" name="form1" target="_blank" id="form3">
                                  <label>
                                  <input type="text" name="codigo" id="codigo" />
                                  </label>
                                  <label>
                                  <input type="submit" name="button2" id="button2" value="Buscar" />
                                  </label>
                                  <br />
                              </form>                                  </td>
                              <td>&nbsp;</td>
                            </tr>
                            <tr>
                              <td class="vacunatorio_titulo_n2">&nbsp;</td>
                                <td class="vacunatorio_titulo_n2">&nbsp;</td>
                              <td><br /></td>
                              <td>&nbsp;</td>
                            </tr>
                            <tr>
                              <td height="21" colspan="4" class="vacunatorio_titulo_n2"><div align="center" class="vacunatorio_titulo_n2">REPORTE PARA IMPRIMIR</div></td>
                            </tr>
                            <tr>
                              <td class="vacunatorio_titulo_n2">&nbsp;</td>
                              <td class="urologia_txt_destacado">Personal Activo:</td>
                              <td><label></label>
                                  <label></label>
                                  <form action="Report/PacienteTodos_1.jsp" method="post" name="form2" target="_blank" id="form6">
                                    <input type="submit" name="button3" id="button5" value="Mostrar" />
                                    <br />
                                </form></td>
                              <td>&nbsp;</td>
                            </tr>
                            <tr>
                              <td class="vacunatorio_titulo_n2">&nbsp;</td>
                              <td class="urologia_txt_destacado">&nbsp;</td>
                              <td>&nbsp;</td>
                              <td>&nbsp;</td>
                            </tr>
                            
                            <tr>
                              <td height="21" colspan="4" class="textoGeneral"><div align="center" class="medicina_preventiva_noticia_texto"><strong>*Nota:</strong> Para imprimir los reportes es necesario tener el papel membretado, si no tiene uno haga <a href="membrete/membrete.pdf" target="_blank"><strong>click aqui</strong></a></div></td>
                            </tr>
                        </table>
                        
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
