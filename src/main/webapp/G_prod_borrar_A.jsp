<%-- 
    Document   : G_prod_borrar_A
    Created on : 21 may. 2022, 17:06:58
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
            
            int idprod = Integer.parseInt(request.getParameter("idprod"));         

            Base bd = new Base();

            try {
                bd.conectar();
                String strQry = "delete from producto where id_prod = '"+idprod+"' ;";
                
                bd.borrar(strQry);
                
                response.sendRedirect("G_gprod.jsp");
            
            } catch (Exception ex) {   
                out.print(ex.getMessage());
            }
        %>
    </body>
</html>
