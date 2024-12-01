<%-- 
    Document   : visD_fags
    Created on : 31/05/2022, 10:16:03 AM
    Author     : Alumno
--%>

<%@page import="conexion.Base"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
        <Button href="visD_fags">
            
        </Button>
         <%
            HttpSession miSessiondelUsuario = (HttpSession) request.getSession();
            int id = (int) (miSessiondelUsuario.getAttribute("id") == null ? 0 : miSessiondelUsuario.getAttribute("id"));

            int fak = Integer.parseInt(request.getParameter("fak"));

            Base bd = new Base();

            try {
                bd.conectar();
                String strQry = "delete from fak where fak = '"+fak+"' ;";

                bd.borrar(strQry);

                response.sendRedirect("pagina de Omar :D.jsp");

            } catch (Exception ex) {
                out.print(ex.getMessage());
            }
        %>
    </body>
</html>
