<%-- 
    Document   : asesor_main
    Created on : 18 abr. 2022, 15:47:53
    Author     : omarc
--%>

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
                        <a href="asesor_new_rep.jsp">Nuevo Reporte</a>
                        <a href="asesor_reportes.jsp">Ver Reportes</a>
                        <a href="asesor_faqs_main.jsp">FAQs</a>
                        <a href="soporte_main.jsp">Cerrar Sesión</a>
                    </div>
                </div>
            </div>
        </header>

        <!-- Banner -->
        <img src="imgs\soporte\banner_asesor.png" alt="Asesor de Soporte" class="banner_main" />

        <!-- Div para imágenes -->
        <div id="div2">

            <a href="asesor_reportes.jsp" title="Ver Reportes" alt="Ver Reportes" ><img src="imgs\soporte\ver_reportes.png" alt="Asesor de Soporte" class="reportes" id="asesor" /></a>
            <a href="asesor_new_rep.jsp" title="Nuevo Reporte" alt="Nuevo Reporte"> <img src="imgs\soporte\nuevo_reporte.png" alt="Ingeniero de Soporte" class="reportes" id="ing_soporte"/></a>
            <a href="asesor_faqs_main.jsp" title="Ver Reportes" alt="Ver Reportes" ><img src="imgs\soporte\editor_faqs.png" alt="Asesor de Soporte" class="reportes" id="editor" /></a>
        </div>

    </body>
</html>
