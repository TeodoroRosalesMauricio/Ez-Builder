<%-- 
    Document   : mtto_newfaq
    Created on : 29 may. 2022, 16:25:52
    Author     : Mauricio
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="conexion.Base"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>EZ-builder</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
        <link rel="stylesheet" href="estilos/barra.css">
        <link rel="shortcut icon" href="iconos\soporte_tec2.png">
        <link rel="stylesheet" type="text/css" href="estilos/dropdown/default.css" />
        <link rel="stylesheet" type="text/css" href="estilos/dropdown/component.css" />
        <link rel="stylesheet" type="text/css" href="estilos/soporte/main.css" />
        <link rel="stylesheet" href="estilos/mtto.css">
        <script src="scripts/dropdown/modernizr.custom.js"></script>
        <script src="https://kit.fontawesome.com/40eeeaf3f3.js" crossorigin="anonymous"></script>
    </head>
    <body>
        <%
            HttpSession miSessiondelUsuario = (HttpSession) request.getSession();
            int id = (int) (miSessiondelUsuario.getAttribute("id") == null ? 0 : miSessiondelUsuario.getAttribute("id"));
            //int id = 1;
        %>
        <%
            String id_rep = request.getParameter("id_rep");

            Base bd = new Base();

            try {
                bd.conectar();

                String strQry2 = "select des_rep,sol_rep from reporte where id_rep = '" + id_rep + "';";
                ResultSet rs2 = null;
                rs2 = bd.consulta(strQry2);
                rs2.next();

                String strQry1 = "insert into fak "
                        + "values(default, '" + id_rep + "', null, null , '" + rs2.getString(1) + "' , '" + rs2.getString(2) + "' );";

                int resultadoInsert = bd.insertar(strQry1);

            } catch (Exception juan) {
                out.print(juan.getMessage());
            }

            response.sendRedirect("asesor_faq_succes.jsp");

        %>


    </body>
</html>
