<%-- 
    Document   : A_mtto_cerrar
    Created on : 21 abr. 2022, 14:48:22
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
        <%            String idmtto = request.getParameter("idmtto");

            Base bd = new Base();

            long millis = System.currentTimeMillis();
            java.sql.Date date = new java.sql.Date(millis);

            try {
                bd.conectar();
                String strQry = "update evento_sopa set stat_sopa = 'Cerrado' where id_mtto = '" + idmtto + "' and id_ingmt = '" + id + "';";
                bd.edita(strQry);

                String strQry2 = "update evento_sopa set fec_fi = '" + date + "' where id_mtto = '" + idmtto + "' and id_ingmt = '" + id + "';";
                bd.edita(strQry2);

                response.sendRedirect("mtto_sopalist.jsp");

            } catch (Exception ex) {
                out.print(ex.getMessage());
            }
        %>
    </body>
</html>
