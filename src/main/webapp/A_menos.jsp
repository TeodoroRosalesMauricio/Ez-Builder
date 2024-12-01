<%-- 
    Document   : A_menos
    Created on : 1 dic. 2021, 20:43:41
    Author     : Mauricio
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="conexion.Base"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <%--Queda expresamente prohibida la reproducción total o parcial de este
    fragmento de código ni de cualquiera de sus contenidos sin el permiso 
    expreso y por escrito de EZ-Software. --%>

        <%
            HttpSession miSessiondelUsuario = (HttpSession) request.getSession();
            int id = (int) (miSessiondelUsuario.getAttribute("id") == null ? 0
                    : miSessiondelUsuario.getAttribute("id"));

            int idprod = Integer.parseInt(request.getParameter("idprod"));

            Base bd = new Base();

            try {
                bd.conectar();
                
                String strQry1 = "select cantidad from carrito "
                        + "where id_cli = '"+id+"' and id_prod = '"+idprod+"' ;";
                    
                    ResultSet rs1 = null;
                    rs1 = bd.consulta(strQry1);
                
                    rs1.next();
                
                if (Integer.parseInt(rs1.getString(1)) != 1) {
                    String strQry = "update carrito "
                            + "set cantidad = cantidad - 1 "
                            + "where id_cli = '" + id + "' and id_prod = '" + idprod + "' ;";

                    bd.edita(strQry);
                }
                response.sendRedirect("carrito_list.jsp");

            } catch (Exception ex) {
                out.print(ex.getMessage());
            }
        %>
    </body>
</html>
