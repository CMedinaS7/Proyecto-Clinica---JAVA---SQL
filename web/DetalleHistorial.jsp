<%-- 
    Document   : DetalleHistorial
    Created on : 18/10/2012, 10:34:36 AM
    Author     : Carlos Medina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import=" Dao.conexion,java.sql.*,java.util.Date" session="true"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Clínica Salud Medical</title>
        <LINK rel=stylesheet type="text/css"
href="estilos/estilos.css">
 <link rel="icon" type="image/png" href="iconos/saludmedical.png" />
    </head>
    <body>
        <table width="397" border="0" align="center" cellpadding="0" cellspacing="0" background="imagenes/fondo_observacion.png">
          <tbody>
            <tr bgcolor="#EBEBEB">
              <td height="20" colspan="2" bgcolor="#EBEBEB">


                  <%

                    HttpSession sesion = request.getSession(true);
                    String pac = request.getParameter("paciente");
                 
			                String apellidosesp ="";
					String nombreesp ="";
					String especialidad ="";
					String fecha ="";
					String descripcion ="";
					String receta ="";
					String fotoesp ="";
		  %>

<%
                    Connection cn;
                    conexion con = new conexion();
                    try {

                          cn = con.conectar();
                          Statement stmt = cn.createStatement();
                          String a="mostrarhistorial '"+pac+"'";
			  ResultSet rs = stmt.executeQuery(a);

                            while (rs.next()) {

                            apellidosesp=String.valueOf(rs.getString(1));
                            nombreesp=String.valueOf(rs.getString(2));
                            fotoesp=String.valueOf(rs.getString(3));
                            especialidad=String.valueOf(rs.getString(4));
                            fecha=String.valueOf(rs.getString(5));
                            descripcion=String.valueOf(rs.getString(6));
                            receta=String.valueOf(rs.getString(7));
%>
                  <table width="381" height="312" align="center" background="imagenes/fondo_dethismed.png">
<tr>
                    <td width="1" class="vacunatorio_titulo_n2">&nbsp;</td>
            <td width="119" height="21" class="vacunatorio_titulo_n2">&nbsp;</td>
            <td width="74" class="vacunatorio_titulo_n2">&nbsp;</td>
            <td width="164">&nbsp;</td>
            <td width="10">&nbsp;</td>
                </tr>
                  <tr>
                    <td rowspan="4" class="vacunatorio_titulo_n2">&nbsp;</td>
                    <td rowspan="4" class="vacunatorio_titulo_n2"><img src="<%=fotoesp%>" width="102" height="102"></td>
                    <td height="25" class="vacunatorio_titulo_n2"><span class="textoGeneral">Apellidos: </span></td>
                    <td><b class="textoGeneral"><b><strong><%=apellidosesp%></strong></b></b></td>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td height="23" class="vacunatorio_titulo_n2"><span class="textoGeneral">Nombre: </span></td>
                    <td><b class="textoGeneral"><b><strong><%=nombreesp%></strong></b></b></td>
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
                    <td class="vacunatorio_titulo_n2">&nbsp;</td>
                    <td><span class="maternidad_txt_destacado"> <br /></td>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td class="vacunatorio_titulo_n2">&nbsp;</td>
                    <td height="69" colspan="3" class="vacunatorio_titulo_n2"><label>
                            <textarea name="textarea" id="textarea" cols="42"  disabled="disabled" rows="5"><%=descripcion%></textarea>
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
                    <td height="37" colspan="3" class="vacunatorio_titulo_n2"><textarea  disabled="disabled" name="textarea2" id="textarea2" cols="42" rows="2"><%=receta%></textarea></td>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td class="vacunatorio_titulo_n2">&nbsp;</td>
                    <td height="21" colspan="3" class="vacunatorio_titulo_n2">&nbsp;</td>
                    <td>&nbsp;</td>
                  </tr>
              </table>

<%                            }

					     %>

                    <%
                    } catch (SQLException ex) {
                        System.out.println(ex.toString());
                    }

%>


              </td>
            </tr>
          </tbody>
        </table>
    <h1>&nbsp;</h1>
</body>
</html>
