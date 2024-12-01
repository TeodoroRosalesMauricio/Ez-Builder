<%-- 
    Document   : A_carrito
    Created on : 1 dic. 2021, 17:55:21
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
        <%
        
            HttpSession miSessiondelUsuario = (HttpSession) request.getSession();
            int id = (int) (miSessiondelUsuario.getAttribute("id") == null ? 0 : miSessiondelUsuario.getAttribute("id"));
            
            int idprod = Integer.parseInt(request.getParameter("idprod"));

            Base bd = new Base();

            try{
                    bd.conectar();
                    
                    String strQry1 = "insert into carrito (id_cli, id_prod, cantidad)"
                                + "values('"+id+"' , '"+idprod+"' , 1 );";

                        int resultadoInsert = bd.insertar(strQry1);
                        out.print("checar resultado de la base " + resultadoInsert);
                    
                        response.sendRedirect("carrito.jsp");
            }
            catch(Exception XD){
                out.print(XD.getMessage());
            }
        %>
    </body>
</html>
