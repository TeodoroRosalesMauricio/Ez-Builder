<%-- 
    Document   : A_borrar_ensamblaje
    Created on : 22 may. 2022, 18:04:57
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

            int id_build = Integer.parseInt(request.getParameter("id_build"));

            Base bd = new Base();

            try {
                bd.conectar();
                String strQry = "delete from pc_builder where id_build = '" + id_build + "' and id_cli = '" + id + "' ;";

                bd.borrar(strQry);

                response.sendRedirect("mis_ensamblajes.jsp");

            } catch (Exception ex) {
                out.print(ex.getMessage());
            }
        %>
    </body>
</html>
