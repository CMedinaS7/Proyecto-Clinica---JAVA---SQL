<%--
    Document   : PacienteApeCod
    Created on : 22-may-2012, 1:01:34
    Author     : Carlos Medina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@page  import="Dao.conexion"%>


<%@page  import="java.io.*"%>
<%@page  import="java.sql.Connection"%>
<%@page  import="java.sql.DriverManager"%>
<%@page  import="java.util.HashMap"%>
<%@page  import="java.util.Map"%>
<%@page  import="net.sf.jasperreports.engine.*"%>
<%@page import="java.io.*, java.sql.*, java.util.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <%
            Connection cn = null;
            conexion con = new conexion();
            String cod=request.getParameter("codigo");
            cn = con.conectar();
            File reporte = new File(application.getRealPath("Reportes/Reservas Esp-Ser-Cod.jasper"));
            Map parametro = new HashMap();
            parametro.put("cod", cod);
            byte[] bytes = JasperRunManager.runReportToPdf(reporte.getPath(), parametro, cn);
            response.setContentType("application/pdf");
            response.setContentLength(bytes.length);
            ServletOutputStream salida = response.getOutputStream();
            salida.write(bytes, 0, bytes.length);
            salida.flush();
            salida.close();
        %>
    </body>
</html>