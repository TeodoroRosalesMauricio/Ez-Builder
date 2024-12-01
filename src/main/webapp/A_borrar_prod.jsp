<%-- 
    Document   : A_borrar_prod
    Created on : 25 ene. 2022, 15:43:41
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
                String strQry = "delete from carrito where id_cli = '"+id+"' and id_prod = '"+idprod+"' ;";
                
                bd.borrar(strQry);
                
                response.sendRedirect("carrito_list.jsp");
            
            } catch (Exception ex) {   
                out.print(ex.getMessage());
            }
        %>
    </body>
</html>
