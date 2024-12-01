<%-- 
    Document   : A_limpiar_car
    Created on : 1 dic. 2021, 21:12:59
    Author     : Mauricio
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
        <%
            HttpSession miSessiondelUsuario = (HttpSession) request.getSession();
            int id = (int) (miSessiondelUsuario.getAttribute("id") == null ? 0 : miSessiondelUsuario.getAttribute("id"));
        %>
        <%
            Base bd = new Base();

            try {
                bd.conectar();
                String strQry = "delete from carrito where id_cli = '" + id + "' ;";

                bd.borrar(strQry);

                response.sendRedirect("carrito.jsp");

            } catch (Exception e) {
                out.print(e.getMessage());
            }

        %>
    </body>
</html>
