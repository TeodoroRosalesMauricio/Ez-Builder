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
                        <a href="asesor_reportes_faq.jsp">Nueva FAQ</a>
                        <a href="asesor_new_faq2.jsp">Nueva FAQ sin evento</a>
                        <a href="asesor_ges_faqs.jsp">Gestionar FAQs</a>
                        <a href="asesor_main.jsp">Volver</a>
                        <a href="soporte_main.jsp">Cerrar Sesión</a>
                    </div>
                </div>
            </div>
        </header>

        <!-- Banner -->
        <img src="imgs\soporte\faq_new.png" alt="Asesor de Soporte" class="banner_main" />

        <!-- Div para imágenes -->
        <div id="div2">

            <a href="asesor_ges_faqs.jsp" title="Ver Reportes" alt="Ver Reportes" ><img src="imgs\soporte\ges_faq.png" alt="Asesor de Soporte" class="reportes" id="asesor" /></a>
            <a href="asesor_faqs_main.jsp" title="Ver Reportes" alt="Ver Reportes" ><img src="iconos\ir_atras.png" alt="Asesor de Soporte" class="reportes" id="asesor" /></a>

    </body>
</html>