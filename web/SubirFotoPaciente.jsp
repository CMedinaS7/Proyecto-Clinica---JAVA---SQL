<%@ page import="java.util.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@ page import="org.apache.commons.io.*" %>
<%@ page import="java.io.*" %>
 
<%
	 
        //String apepaterno=request.getParameter("txtapepaterno");
        //String apematerno=request.getParameter("txtapematerno");
        //String nombre=request.getParameter("txtnombre");
        //String fechanac=request.getParameter("txtfechanac");
        //String lugarnac=request.getParameter("txtlugarnac");
        //String sexo=request.getParameter("txtsexo");
        //String estado=request.getParameter("txtestado");
        //String direccion=request.getParameter("txtdireccion");
        //String telefono=request.getParameter("txttelf");
        //String fechareg=request.getParameter("txtfechareg");
      
	   	/*FileItemFactory es una interfaz para crear FileItem*/
        FileItemFactory file_factory = new DiskFileItemFactory();
		
		/*ServletFileUpload esta clase convierte los input file a FileItem*/
        ServletFileUpload servlet_up = new ServletFileUpload(file_factory);
		/*sacando los FileItem del ServletFileUpload en una lista */
        List items = servlet_up.parseRequest(request);
		
        for(int i=0;i<items.size();i++){
			/*FileItem representa un archivo en memoria que puede ser pasado al disco duro*/
            FileItem item = (FileItem) items.get(0);
			/*item.isFormField() false=input file; true=text field*/
            if (! item.isFormField()){
				/*cual sera la ruta al archivo en el servidor*/
				File archivo_server = new File("H:/Proyecto Final Java- Web/Clinica Salud Medical/Porta - CSM/web/paciente/"+item.getName());
				/*y lo escribimos en el servidor*/
				item.write(archivo_server);
        // response.sendRedirect("Registro03.jsp?foto=" + item.getName() + "&apepaterno=" + apepaterno + "&apematerno=" + apematerno + "&nombre=" + nombre + "&fechanac=" + fechanac + "&lugarnac=" + lugarnac + "&sexo=" + sexo + "&estado=" + estado + "&direccion=" + direccion + "&telefono=" + telefono + "&fechareg=" + fechareg);
   response.sendRedirect("Registro02.jsp?foto=" + item.getName());
                out.print("Nombre --> " + item.getName() );
                out.print("<br> Tipo --> " + item.getContentType());
                out.print("<br> tamaño --> " + (item.getSize()/1240)+ "KB");
		//out.print("<br> apepaterno -->" + apepaterno);
            }
        }
%>