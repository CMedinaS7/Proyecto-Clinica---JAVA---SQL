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
<table width="512" border="0">
  <tr>
    <td width="506" bordercolor="0"><table width="505" border="0" cellspacing="0" cellpadding="0">
      <tbody>
        <tr>
          <td colspan="2"><table width="65%" border="0" align="center" cellpadding="0" cellspacing="0" class="TituloNC">
              <tbody>
                <tr>
                  <td class="TituloPS"> Cambiar Clave</td>
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
          <td height="20" colspan="2" class="convescolar">Para modificar su clave debe llenar los siguientes datos.</td>
        </tr>
      </tbody>
    </table></td>
  </tr>
</table>
<table width="393" height="187" bgcolor="#EBEBEB">
  <tr>
    <td height="181"><form action="ModificarClave" method="post" name="pacientes" id="pacientes">
      <table width="367" height="149" align="center" background="imagenes/fondo_hor.png">
        <tr>
          <td width="44" height="21" class="vacunatorio_titulo_n2">&nbsp;</td>
          <td width="108" class="vacunatorio_titulo_n2">&nbsp;</td>
          <td width="184"><span class="maternidad_txt_destacado">
            <input name="txtcodigo" type="hidden" value="<%=request.getParameter("codigo")%>" size="15" maxlength="15"/>
          </span></td>
          <td width="11">&nbsp;</td>
        </tr>
        <tr>
          <td class="vacunatorio_titulo_n2">&nbsp;</td>
          <td class="vacunatorio_titulo_n2">Usuario</td>
          <td><input name="usuario" type="text" id="usuario" size="25" /></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td class="vacunatorio_titulo_n2">&nbsp;</td>
          <td class="vacunatorio_titulo_n2">Clave Actual</td>
          <td><input name="clave" type="password" id="clave" size="25" />            <br /></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td class="vacunatorio_titulo_n2">&nbsp;</td>
          <td class="vacunatorio_titulo_n2">Clave Nueva</td>
          <td><input name="clave1" type="password" id="clave1" size="25" />            <br /></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td class="vacunatorio_titulo_n2">&nbsp;</td>
          <td class="vacunatorio_titulo_n2">&nbsp;</td>
          <td><span class="maternidad_txt_destacado">
            <script language="JavaScript" type="text/javascript">
		new tcal ({
		'formname': 'pacientes',

		'controlname': 'txtfechareg'
		});
		                      </script>
            <script language="JavaScript" type="text/javascript">
		new tcal ({
		'formname': 'pacientes',

		'controlname': 'txtfechareg'
		});
		                      </script>              <br /></td>
          <td>&nbsp;</td>
        </tr>
      </table>
      <center>
        <fieldset style=" background-color:#CCCCCC; width:380px;">
          <div align="center">
            <legend></legend>
            <input name="cambiar" type="submit" class="boton" id="cambiar"  value="Cambiar"  border="2"/>
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
                            alert("Clave de Paciente Modificada Correctamente!");
							window.close()
                        </script>
                      	<% } %>
                        
                        <% 
                        if("2".equals(resp)){
                        %>
                        <script language='javaScript' >
                            alert("Error al Modificar Clave de Paciente!");
							window.close()
                        </script>
                      	<% } %>
</body>
</html>