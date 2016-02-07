<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Clinica Salud Medical</title>


<LINK href="estilos/css.css" rel="stylesheet" type="text/css">
<LINK href="estilos/estilos.css" rel="stylesheet" type="text/css">
 <link rel="icon" type="image/png" href="iconos/saludmedical.png" />

<script>
function limpia(elemento)
{
elemento.value = "";
}

function verifica(elemento)
{
if(elemento.value == "")
elemento.value = "usuario";
}
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
                <tr>
                  <td width="565" align="center" background="imagenes/bannerPersona.jpg" class="td-bannerpersona"><a href="#"><img src="imagenes/shim.gif" alt="Trabajando.com" width="12" height="11" border="0" /></a></td>
                  <td width="200" bgcolor="#2E75B3" class="login">&nbsp;</td>
                </tr>
              </tbody>
            </table></td>
      </tr>
      <tr>
        <td colspan="2"><table width="785" border="0" background="imagenes/f1.jpg">
          <tr>
            <td width="760"><span class="NClinks_titulo"><a href="Intranet.jsp"><strong>Home</strong></a><strong> | </strong><a href="chat.jsp"><strong> Consultas</strong></a><strong> | </strong><a href="paginas/Index.html"><strong>Web Corporativa</strong></a><strong> |</strong></span></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td width="565" valign="top"><script src="js/AC_RunActiveContent.js" type="text/javascript"></script>
            <table width="100%" border="0" cellpadding="0" cellspacing="0" class="tabla-home">
              <tbody>
                <tr>
                  <td valign="top">&nbsp;</td>
                </tr>
              </tbody>
            </table>
      
            <div align="center"> </div>
          <div align="center"> <a href="#"><img border="0" src="imagenes/home.jpg" /></a><br />
            </div>
          <table width="559" height="268" border="0">
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
              </ul>                </td>
            </tr>
          </table>          
        </td>
        <td width="194" valign="top" class="columnaDerecha"><script src="js/AC_RunActiveContent.js" type="text/javascript"></script>
            
              <table width="100%" border="0" cellpadding="0" cellspacing="0">
                <tbody>
                  <tr>
                    <td class="busqTitulo">Ingresar </td>
                    <%
    if (request.getParameter("error")!=null) {
        out.println("<center><font color=red >"+request.getParameter("error")+"</font></center>");
        }
                %>
                  </tr>
                  <tr>
                    <td nowrap="nowrap" align="right" class="busqContenido"><div align="left"><br />
           <form action="validar" method="post">
                 <table width="151">
              <tr>
                    	<td width="49" class="oncologia_vermas">Usuario :</td>
                        <td width="90"><input name="usuario" type="text" value="usuario" size="20" style="width: 100px;" onclick="javascript: limpia(this);" onBlur="javascript: verifica(this);" />
                        <br /></td>
                  </tr>
                    <tr>
                    	<td class="oncologia_vermas">Clave :</td>
                      <td><input name="clave" type="password" value="123456" size="20" style="width: 100px;"  onclick="javascript: limpia(this);" onBlur="javascript: verifica(this);" />
                      <br /></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <div align="right">
                              <label>
                              <input type="image" style="border:0" name="cmdingresa" id="cmdingresa" src="imagenes/btn_enviar.jpg" />
                              </label>
                          </div></td>
                  </tr>
                   </table>
        </form>
        
        
           
        
                    </div></td>
                  </tr>
                  <tr>
                    <td class="busqContenido"><ul class="noticias">
                    </ul></td>
                  </tr>
                </tbody>
              </table>

          <table width="100%" border="0" cellpadding="0" cellspacing="0">
              <tbody>
                <tr>
                  <td class="busqTitulo">Consultas</td>
                </tr>
                <tr>
                  <td><div align="center"><a href="chat.jsp"><img src="imagenes/accesocv.jpg" border="0" /></a> </div></td>
                </tr>
                <tr>
                  <td class="busqTitulo"> Web Corporativa </td>
                </tr>
                <tr>
                  <td><div align="center"><a href="paginas/Index.html"><img src="imagenes/accesoempresa.jpg" border="0" /></a> </div></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td class="tablaTitulo"><span class="busqTitulo">Web Master</span></td>
                </tr>
                <tr bgcolor="#FFFFFF" class="footer">
                  <td><div align="center"><img src="imagenes/codeprofessional.png" width="198" height="57" /></div></td>
                </tr>
              </tbody>
        </table></td>
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
