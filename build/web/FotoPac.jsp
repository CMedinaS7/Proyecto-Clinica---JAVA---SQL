<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" session="true"%>

<%
            HttpSession sesion = request.getSession(true);
			String foto =request.getParameter("foto");
			String ruta = (String) sesion.getAttribute(foto);
   
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">


<HTML 
xmlns="http://www.w3.org/1999/xhtml"><HEAD><TITLE>Cl&iacute;nica Salud Medical</TITLE>
<META content="text/html; charset=iso-8859-1" http-equiv=Content-Type>
<META name=keywords 
content="clinica, cl�nica, salud, medical, medical, salud, urolog�a, urologia, maternidad, oncolog�a, oncologia, cardiolog�a, cardiologia, endocrinolog�a, endocrinologia, medicos, m�dicos, medicina, convenios, enfermedades, tratamiento, diagnostico, diagn�stico, cancer, coraz�n, corazon, urgencia, seguros">

<SCRIPT language=javascript> AC_FL_RunContent = 0; </SCRIPT>

<SCRIPT language=javascript> DetectFlashVer = 0; </SCRIPT>

<SCRIPT language=javascript 
src="js/AC_RunActiveContent.js"></SCRIPT>

<script language="JavaScript" type="text/javascript">
<!--
function PopWindow()
{
window.open('panorama.html','360','width=820,height=530,menubar=no,scrollbars=no,toolbar=no,location=no,directories=no,resizable=no,top=0,left=0');
}
//-->
</script>

<LINK rel=stylesheet type=text/css 
href="estilos/estilos.css">

 <script language="JavaScript" src="js/calendar_us.js"></script>
	<link rel="stylesheet" href="js/calendar.css">
    
     <link rel="icon" type="image/png" href="iconos/saludmedical.png" />
     <style type="text/css">
<!--
#apDiv1 {
	position:absolute;
	left:855px;
	top:323px;
	width:217px;
	height:83px;
	z-index:1;
}
-->
     </style>
<head/>
     
<body>
<form action="SubirFotoPaciente.jsp" enctype="multipart/form-data" method="post">
  <div align="center"><strong class="cardiologia_titulo_n3">Seleccione su foto (tama&ntilde;o preferible 102 x 102):</strong>
      <table width="355" border="0" bgcolor="#CCCCCC">
        <tr>
          <td width="86" rowspan="2">

              <%
              
		           					   
              if (foto != null){
									  %>
              <img src="paciente/<%=foto%>" width="102" height="102"/>
              <%
                                      }else{
									  %>
              <img src="iconos/kuser.png" width="102" height="102" />
              <%
                                      }
									  %>
          </td>
          <td width="42">&nbsp;</td>
          <td width="205" rowspan="2"><input type="file" name="file" />
              <br/>
              <input type="submit" value="Subir" /></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table>
  </div>
</form>
</BODY></HTML>