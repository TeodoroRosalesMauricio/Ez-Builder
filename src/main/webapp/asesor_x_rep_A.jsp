<%-- 
    Document   : asesor_x_rep
    Created on : 19 abr. 2022, 10:30:08
    Author     : omarc
--%>

<%@page import="java.sql.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="conexion.Base"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Ver Reporte</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
        <link rel="stylesheet" href="estilos/barra.css">
        <link rel="shortcut icon" href="iconos\soporte_tec2.png">
        <link rel="stylesheet" type="text/css" href="estilos/dropdown/default.css" />
        <link rel="stylesheet" type="text/css" href="estilos/dropdown/component.css" />
        <link rel="stylesheet" type="text/css" href="estilos/soporte/asesor.css" />
        <script src="scripts/dropdown/modernizr.custom.js"></script>
        <script src="https://kit.fontawesome.com/40eeeaf3f3.js" crossorigin="anonymous"></script>
    </head>

    <%
        String id_rep = request.getParameter("id_rep");

        // Se establece el status en Abierto
        String status = "Cerrado";

        // Se genera la fecha actual
        long millis = System.currentTimeMillis();
        java.sql.Date date = new java.sql.Date(millis);
        Date fecha_actual = date;

        // Inicializamos la variable
        String strQry1 = " ";

        // Se verifica que no hayan espacios en blanco
        if (!id_rep.equals("")) {

            Base bd = new Base();

            try {

                bd.conectar();

                strQry1 = "update reporte set fec_fi = '" + fecha_actual + "' , stat_rep = '" + status + "' where id_rep = '" + id_rep + "';";

                int resultadoInsert = bd.edita(strQry1);
                //out.print("checar resultado de la base " + resultadoInsert);

            } catch (Exception XD) {
                out.print(XD.getMessage());
            }
        }
        response.sendRedirect("asesor_reportes.jsp");
    %>

    <%        HttpSession miSessiondelUsuario = (HttpSession) request.getSession();
        int id = (int) (miSessiondelUsuario.getAttribute("id") == null ? 0 : miSessiondelUsuario.getAttribute("id"));
    %>

</body>