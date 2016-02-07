<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Clínica Salud Medical</title>
<LINK rel=stylesheet type=text/css 
href="estilos/estilos.css">
 <link rel="icon" type="image/png" href="iconos/saludmedical.png" />
</head>

<body>
<%String resp = request.getParameter("resp");%>
<table width="516" border="0">
  <tr>
    <td width="506" bordercolor="0"><table width="505" border="0" cellspacing="0" cellpadding="0">
      <tbody>
        <tr>
          <td colspan="2"><table width="65%" border="0" align="center" cellpadding="0" cellspacing="0" class="TituloNC">
              <tbody>
                <tr>
                  <td class="TituloPS">Actualizaci&oacute;n de Datos</td>
                </tr>
              </tbody>
          </table></td>
        </tr>
        <tr>
          <td colspan="2"><img src="./Clínica Santa María_files/1x1.gif" width="1" height="1" /></td>
        </tr>
        <tr>
          <td><img src="imagenes/1x1(1).gif" width="10" height="1" /></td>
          <td bordercolor="0"><img src="imagenes/barratitulos.jpg" width="496" height="1" /></td>
        </tr>
        <tr>
          <td height="20" colspan="2">&nbsp;</td>
        </tr>
      </tbody>
    </table></td>
  </tr>
</table>
<table width="393" height="468" bgcolor="#EBEBEB">
  <tr>
    <td height="462"><form action="ModifyPaciente" method="post"  name="pacientes" id="pacientes">
      <table width="387" height="365" align="center" background="imagenes/fondo_pac.png">
        <tr>
          <td width="21" height="41" class="vacunatorio_titulo_n2">&nbsp;</td>
          <td width="133" class="vacunatorio_titulo_n2">&nbsp;</td>
          <td width="202"><span class="maternidad_txt_destacado">
            <input name="txtcodigo" type="hidden" value="<%=request.getParameter("codigo")%>" size="15" maxlength="15"/>
          </span></td>
          <td width="11">&nbsp;</td>
        </tr>
        <tr>
          <td height="31" class="vacunatorio_titulo_n2">&nbsp;</td>
          <td class="vacunatorio_titulo_n2">Apellido Paterno</td>
          <td><input name="txtapepaterno" type="text" id="txtapepaterno" onkeyup="this.value = this.value.replace (/[^aA-zZ]/,'');" value="<%=request.getParameter("apepat")%>" size="25" /></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td height="31" class="vacunatorio_titulo_n2">&nbsp;</td>
          <td class="vacunatorio_titulo_n2">Apellido Materno</td>
          <td><input name="txtapematerno" type="text" id="txtapematerno" onkeyup="this.value = this.value.replace (/[^aA-zZ]/,'');" value="<%=request.getParameter("apemat")%>" size="25" />            <br /></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td height="31" class="vacunatorio_titulo_n2">&nbsp;</td>
          <td class="vacunatorio_titulo_n2">Nombre</td>
          <td><input type="text" name="txtnombre" value="<%=request.getParameter("nombres")%>" size="25"  onkeyup="this.value = this.value.replace (/[^aA-zZ]/,'');" />            <br /></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td height="31" class="vacunatorio_titulo_n2">&nbsp;</td>
          <td class="vacunatorio_titulo_n2">Fecha Nacimiento</td>
          <td><input type="text" name="txtfechanac" value="<%=request.getParameter("fechanac")%>" readonly="readonly" />
            <span class="maternidad_txt_destacado">
                <script language="JavaScript" type="text/javascript">
		new tcal ({
		'formname': 'pacientes',

		'controlname': 'txtfechanac'
		});
		                      </script>
                <span class="maternidad_txt_destacado">
                <script language="JavaScript" type="text/javascript">
		new tcal ({
		'formname': 'pacientes',

		'controlname': 'txtfechanac'
		});
		                      </script>
              </span><br /></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td height="31" class="vacunatorio_titulo_n2">&nbsp;</td>
          <td class="vacunatorio_titulo_n2">Lugar de Nacimiento</td>
          <td><input name="txtlugarnac" type="text" onkeyup="this.value = this.value.replace (/[^aA-zZ]/,'');" value="<%=request.getParameter("lugarnac")%>" size="20" />            <br /></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td height="23" class="vacunatorio_titulo_n2">&nbsp;</td>
          <td class="vacunatorio_titulo_n2">Sexo</td>
          <td><span class="textoGeneral">Masculino</span>
                <input type="radio" name="txtsexo" value="M"/>
                <span class="textoGeneral">Femenino</span>
                <input type="radio" name="txtsexo" value="F"/></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td height="26" class="vacunatorio_titulo_n2">&nbsp;</td>
          <td class="vacunatorio_titulo_n2">Estado Civil</td>
          <td><select name="txtestado">
            <option value="S">Soltero(a)</option>
            <option value="C">Casado(a)</option>
            <option value="V" selected="selected">Viudo(a)</option>
            <option value="D">Divorciado(a)</option>
          </select>
                <br />          </td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td height="31" class="vacunatorio_titulo_n2">&nbsp;</td>
          <td class="vacunatorio_titulo_n2">E-mail</td>
          <td><input name="txtemail" type="text" id="txtemail" style="width:200px;" value="<%=request.getParameter("email")%>" size="25" /></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td height="31" class="vacunatorio_titulo_n2">&nbsp;</td>
          <td class="vacunatorio_titulo_n2">Direccion</td>
          <td><input type="text" name="txtdireccion" value="<%=request.getParameter("direccion")%>" size="25" style="width:200px;" /></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td class="vacunatorio_titulo_n2">&nbsp;</td>
          <td class="vacunatorio_titulo_n2">Telefono</td>
          <td><input name="txttelf" type="text" id="txttelf"  onkeyup="this.value = this.value.replace (/[^0-9]/,'');" value="<%=request.getParameter("telefono")%>" size="10" maxlength="9"/>
              <input name="txtobservacion" type="hidden" id="txtobservacion" style="width:200px;" value="<%=request.getParameter("observacion")%>" size="25" />
              <input name="txtfechareg" type="hidden" id="txtfechareg" style="width:200px;" value="<%=request.getParameter("fechareg")%>" size="25" />
            <br /></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td class="vacunatorio_titulo_n2">&nbsp;</td>
          <td class="vacunatorio_titulo_n2">Foto</td>
          <td><label>
            <input type="file" name="txtfoto" id="txtfoto" />
          </label>
            <br /></td>
          <td>&nbsp;</td>
        </tr>
      </table>
      <center>
        <fieldset style=" background-color:#CCCCCC; width:380px;">
          <div align="center">
            <legend></legend>
            <input name="mod" type="submit" class="boton" id="mod"  value="Modificar"  border="2"/>
            <input name="Restablecer" type="reset" class="boton"  value="Cancelar"  border="2"/>
          </div>
          </fieldset>
      </center>
    </form>
    </td>
  </tr>
</table>
 <% 
                        if("1".equals(resp)){
                        %>
<script language='javaScript' >
                            alert("Paciente Modificado correctamente!");
							window.close()
                        </script>
<% } %>
                        
                        <% 
                        if("2".equals(resp)){
                        %>
<script language='javaScript' >
                            alert("Error al Modificar Paciente!");
							window.close()
                        </script>
                      	<% } %>
</body>
</html>
