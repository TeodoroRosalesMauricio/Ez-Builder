<%-- 
    Document   : sopa_del_faq
    Created on : 2 jun. 2022, 09:44:53
    Author     : usuario1
--%>

<%@page import="conexion.Base"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FAQ Eliminada</title>
    </head>
    <body>
        <%        HttpSession miSessiondelUsuario = (HttpSession) request.getSession();
            int id = (int) (miSessiondelUsuario.getAttribute("id") == null ? 0 : miSessiondelUsuario.getAttribute("id"));
        %>

        <%
            String id_fak = request.getParameter("id_fak");

            // Inicializamos la variable
            String strQry1 = " ";

            Base bd = new Base();

            try {

                bd.conectar();

                strQry1 = "delete from fak where fak = '" + id_fak + "';";

                int resultadoInsert = bd.borrar(strQry1);
                // out.print("checar resultado de la base " + resultadoInsert);

            } catch (Exception XD) {
                out.print(XD.getMessage());
            }
            response.sendRedirect("sopa_bajafaq.jsp");

        %>
    </body>
</html>
