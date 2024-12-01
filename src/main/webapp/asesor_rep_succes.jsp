<%-- 
    Document   : asesor_rep_succes
    Created on : 19 abr. 2022, 23:12:17
    Author     : omarc
--%>

<%@page import="java.sql.Date"%>
<%@page import="fecha_sql.fecha"%>
<%@page import="conexion.Base"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Asesor de Soporte</title>
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
        HttpSession miSessiondelUsuario = (HttpSession) request.getSession();
        int id = (int) (miSessiondelUsuario.getAttribute("id") == null ? 0 : miSessiondelUsuario.getAttribute("id"));

    %>
    <%        String usuario = request.getParameter("usuario");
        String id_usr = request.getParameter("id_usuario");
        String desc = request.getParameter("descripcion");
        String sol = request.getParameter("solucion");
        String id_ing = request.getParameter("id_inge");

        // Se establece el status en Abierto
        String status = "Abierto";

        // Se genera la fecha actual
        long millis = System.currentTimeMillis();
        java.sql.Date date = new java.sql.Date(millis);
        Date fecha_actual = date;

        // Inicializamos la variable
        String strQry1 = " ";

        // Se checa de que usuario se trata
        if (usuario.equals("cliente")) {

            String id_cli = id_usr;

            strQry1 = "insert into reporte (fec_in, des_rep, stat_rep, sol_rep, id_cli, id_sopa)"
                    + "values('" + fecha_actual + "' , '" + desc + "', '" + status + "' , '" + sol + "' , '" + id_cli + "' , '" + id_ing + "');";

        } else if (usuario.equals("vendedor")) {

            String id_ven = id_usr;
            strQry1 = "insert into reporte (fec_in, des_rep, stat_rep, sol_rep, id_ven, id_sopa)"
                    + "values('" + fecha_actual + "' , '" + desc + "', '" + status + "' , '" + sol + "' , '" + id_ven + "' , '" + id_ing + "');";
        }

        // Se verifica que no hayan espacios en blanco
        if (!usuario.equals("") && !id_usr.equals("") && !desc.equals("")
                && !id_ing.equals("")) {

            Base bd = new Base();

            try {
                bd.conectar();

                int resultadoInsert = bd.insertar(strQry1);
                //out.print("checar resultado de la base " + resultadoInsert);


    %>


    <body>
        <header>

            <!-- Barra superior -->
            <div class="div_header">

                <!-- partial:index.partial.html -->
                <header class="barra_sip">

                    <div id="img_sopa">
                        <img src="iconos\soporte_tec2.png" align="left" alt="Inicio" />
                        <label>Soporte técnico</label>
                    </div>

            </div>


            <!-- Dorpdown de Mi cuenta -->
            <div class="dropdown2" id="drop_sopa" >
                <div class="dropdown">
                    <button title="Mi cuenta Cliente" class="dropbtn"></button>
                    <div class="dropdown-content">

                        <a href="asesor_main.jsp">Inicio</a>
                        <a href="asesor_reportes.jsp">Ver Reportes</a>
                        <a href="asesor_new_rep.jsp">Nuevo Reporte</a>
                        <a href="soporte_main.jsp">Cerrar Sesión</a>
                    </div>
                </div>
            </div>
        </header>

        <!-- Banner -->
        <img src="imgs\soporte\reporte_succes.png" alt="Asesor de Soporte" class="banner_main" />

        <!-- Div para imágenes -->
        <div id="div2">

            <a href="asesor_reportes.jsp" title="Ver Reportes" alt="Ver Reportes" ><img src="imgs\soporte\ver_reportes.png" alt="Asesor de Soporte" class="reportes" id="asesor" /></a>
            <a href="asesor_new_rep.jsp" title="Nuevo Reporte" alt="Nuevo Reporte"> <img src="imgs\soporte\nuevo_reporte.png" alt="Ingeniero de Soporte" class="reportes" id="ing_soporte"/></a>

        </div>

        <%                } catch (Exception juan) {
                    out.print(juan.getMessage());
                }
            }
        %>
    </body>
</html>