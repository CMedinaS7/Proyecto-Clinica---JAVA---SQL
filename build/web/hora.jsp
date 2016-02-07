<%-- 
    Document   : hora
    Created on : 29/10/2012, 11:05:50 AM
    Author     : Carlos Medina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.Calendar"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">



<html>
  <head>
<script language="javascript" type="text/javascript">
function obtiene_fecha() {
    var fecha_actual = new Date()
    var dia = fecha_actual.getDate()
    var mes = fecha_actual.getMonth() + 1
    var anio = fecha_actual.getFullYear()

    if (mes < 10)
        mes = '0' + mes

    if (dia < 10)
        dia = '0' + dia
    return (dia + "/" + mes + "/" + anio)
}

function MostrarFecha() {
   document.form1.Fecha_actu.value = obtiene_fecha();
}
</script>
<title>Documento sin t&iacute;tulo</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<form name="form1" method="post" action="">
  <input name="Fecha_actu" type="text" id="Fecha_actu" >
</form>
<!-- Para que muestre la fecha -->
<script language="JavaScript" type="text/javascript">
MostrarFecha();
</script>

</body>
</html>