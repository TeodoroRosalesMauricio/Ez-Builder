<%-- 
    Document   : sopa_fak_editada
    Created on : 2 jun. 2022, 09:40:57
    Author     : usuario1
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


        <%        HttpSession miSessiondelUsuario = (HttpSession) request.getSession();
            int id = (int) (miSessiondelUsuario.getAttribute("id") == null ? 0 : miSessiondelUsuario.getAttribute("id"));
        %>

        <% 
            
            
            String id_fak = request.getParameter("id_faq");
            String pregunta = request.getParameter("pregunta");
            String respuesta = request.getParameter("respuesta");
            
            
            
                       // Inicializamos la variable
            String strQry1 = " ";

            // Se verifica que no hayan espacios en blanco
            if (!pregunta.equals("")) {

                Base bd = new Base();

                try {

                    bd.conectar();

                    strQry1 = "update fak set preg_fak = '" + pregunta + "' , res_fak = '" + respuesta + "' where fak = '" + id_fak + "';";

                    int resultadoInsert = bd.edita(strQry1);
                    // out.print("checar resultado de la base " + resultadoInsert);

                } catch (Exception XD) {
                    out.print(XD.getMessage());
                }
            }
            response.sendRedirect("sopa_gestionarfaq.jsp");
        %>

    </body>
</html>
