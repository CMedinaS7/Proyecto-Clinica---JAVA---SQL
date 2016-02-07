<%-- 
    Document   : index
    Created on : 06-mar-2012, 15:23:07
    Author     : CarlosM
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

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body

        <%
            Connection cn = null;
            conexion con = new conexion();
            String pac=request.getParameter("paciente");
            cn = con.conectar();
            File reporte = new File(application.getRealPath("Reportes/Historial Medico.jasper"));
            Map parametro = new HashMap();
            parametro.put("paciente", pac);
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
