<%-- 
    Document   : AddHistorialMedico
    Created on : 18/10/2012, 07:25:46 PM
    Author     : Carlos Medina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import=" Dao.conexion,java.sql.*,java.util.Date"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%
				String usuario = request.getParameter("usuario");
                                String paciente = request.getParameter("paciente");
                             			
		        java.util.Calendar f = java.util.Calendar.getInstance();

                                String dia=String.valueOf(f.get(java.util.Calendar.DATE));
                                int mes=Integer.parseInt(String.valueOf(f.get(java.util.Calendar.MONTH))) + 1;
                                String ano=String.valueOf(f.get(java.util.Calendar.YEAR));

                        String fecha=dia + "/" + mes + "/" + ano;
				String foto="";
				String apellidos="";
				String nombre="";
				String especialidad="";
			
%>

   <%
                    Connection cn;
                    conexion con = new conexion();
                    try {
                		
		        	    cn = con.conectar();
						
                        Statement stmt = cn.createStatement();
																				
						String a="SELECT dbo.Especialista.Nombre, dbo.Especialidad.NombreEspecialidad, dbo.Especialista.Apellidos, dbo.Usuario.Foto FROM dbo.Especialidad INNER JOIN dbo.Especialista ON dbo.Especialidad.IDEspecialidad = dbo.Especialista.IDEspecialidad INNER JOIN dbo.Usuario ON dbo.Especialista.Apellidos = dbo.Usuario.Apellidos where dbo.Especialista.Apellidos='"+usuario+"'";
						
						ResultSet rs = stmt.executeQuery(a);
											
                          			while (rs.next()) {

	    						nombre=String.valueOf(rs.getString(1));
                                                        especialidad=String.valueOf(rs.getString(2));
                                                        apellidos=String.valueOf(rs.getString(3));
                                                        foto=String.valueOf(rs.getString(4));

					
						     }
							
					     %>
<%
                    } catch (SQLException ex) {
                        System.out.println(ex.toString());
                    }

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Clínica Salud Medical</title>
        <LINK rel=stylesheet type="text/css"
href="estilos/estilos.css">
 <link rel="icon" type="image/png" href="iconos/saludmedical.png" />
    </head>
    <body>
        <form action="InsertHistorial"  method="post">
          <table width="397" border="0" align="center" cellpadding="0" cellspacing="0" background="imagenes/fondo_observacion.png">
          <tbody>
            <tr bgcolor="#EBEBEB">
              <td height="20" colspan="2" bgcolor="#EBEBEB">
                  <table width="381" height="332" align="center" background="imagenes/fondo_dethismed.png">
                    <tr>
                      <td width="1" class="vacunatorio_titulo_n2">&nbsp;</td>
                      <td width="119" height="21" class="vacunatorio_titulo_n2">&nbsp;</td>
                      <td width="74" class="vacunatorio_titulo_n2">&nbsp;</td>
                      <td width="164">&nbsp;</td>
                      <td width="10">&nbsp;</td>
                    </tr>
                    <tr>
                      <td rowspan="4" class="vacunatorio_titulo_n2">&nbsp;</td>
                      <td rowspan="4" class="vacunatorio_titulo_n2"><img src="<%=foto%>" width="102" height="102"></td>
                      <td height="25" class="vacunatorio_titulo_n2"><span class="textoGeneral">Apellidos: </span></td>
                      <td><b class="textoGeneral"><b><strong><%=apellidos%></strong></b></b></td>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td height="23" class="vacunatorio_titulo_n2"><span class="textoGeneral">Nombre: </span></td>
                      <td><b class="textoGeneral"><b><strong><%=nombre%></strong></b></b></td>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td height="26" class="vacunatorio_titulo_n2"><span class="textoGeneral">Especialidad:</span></td>
                      <td><b class="textoGeneral"><b class="textoGeneral"><b><strong><%=especialidad%></strong></b></b></b><br /></td>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td height="21" class="vacunatorio_titulo_n2"><span class="textoGeneral">Fecha:</span></td>
                      <td><b class="textoGeneral"><b class="textoGeneral"><b><strong><%=fecha%></strong></b></b></b><br /></td>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td class="vacunatorio_titulo_n2">&nbsp;</td>
                      <td height="21" class="vacunatorio_titulo_n2"><span class="textoGeneral">Descricion:</span></td>
                      <td class="vacunatorio_titulo_n2"><input type="hidden" name="txtpaciente" id="txtpaciente" value="<%=paciente%>"></td>
                      <td><span class="vacunatorio_titulo_n2">
                              <input type="hidden" name="txtusuario" id="txtusuario" value="<%=usuario%>">
                      </span><span class="vacunatorio_titulo_n2">
                      <input type="hidden" name="txtfecha" id="txtfecha" value="<%=fecha%>">
                      </span><span class="maternidad_txt_destacado"> <br /></td>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td class="vacunatorio_titulo_n2">&nbsp;</td>
                      <td height="69" colspan="3" class="vacunatorio_titulo_n2"><label>
                        <textarea name="txtdescripcion" id="txtdescripcion" cols="42" rows="5"></textarea>
                      </label></td>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td class="vacunatorio_titulo_n2">&nbsp;</td>
                      <td height="21" class="vacunatorio_titulo_n2" ><span class="textoGeneral">Receta:</span></td>
                      <td class="vacunatorio_titulo_n2">&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td class="vacunatorio_titulo_n2">&nbsp;</td>
                      <td height="37" colspan="3" class="vacunatorio_titulo_n2"><textarea  name="txtreceta" id="txtreceta" cols="42" rows="2"></textarea></td>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td class="vacunatorio_titulo_n2">&nbsp;</td>
                      <td height="21" colspan="3" class="vacunatorio_titulo_n2">&nbsp;</td>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td class="vacunatorio_titulo_n2">&nbsp;</td>
                      <td height="21" colspan="3" class="vacunatorio_titulo_n2"><div align="center">
                        <label>
                        <input type="submit" name="agregar" id="agregar" value="Agregar +">
                        </label>
                         <input type="reset" name="button2" id="button2" value="Limpiar -">
                      </div></td>
                      <td>&nbsp;</td>
                    </tr>
                  </table>
 
              </td>
            </tr>
          </tbody>
        </table></form>
        <% String msg=request.getParameter("msg");
                        if("Ok".equals(msg)){
                        %>
                        <script language='javaScript' >
                            alert("Se Guardo Exitosamente!");
							window.close()
                        </script>
        <% }%>
    </body>
</html>
