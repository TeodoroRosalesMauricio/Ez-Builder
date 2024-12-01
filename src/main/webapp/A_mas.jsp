<%-- 
    Document   : A_mas
    Created on : 1 dic. 2021, 20:43:24
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
                String strQry = "update carrito "
                        + "set cantidad = cantidad + 1 "
                        + "where id_cli = '"+id+"' and id_prod = '"+idprod+"' ;";
                
                bd.edita(strQry);
                
                response.sendRedirect("carrito_list.jsp");
            
            } catch (Exception ex) {   
                out.print(ex.getMessage());
            }
        %>
    </body>
</html>
