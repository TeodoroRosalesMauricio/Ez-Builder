<%-- 
    Document   : cerrar_sesion
    Created on : 1 dic. 2021, 21:15:58
    Author     : Mauricio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
    HttpSession miSessiondelUsuario = (HttpSession) request.getSession();
    miSessiondelUsuario.invalidate();
    response.sendRedirect("principal.jsp"); 
%>
    </body>
</html>
