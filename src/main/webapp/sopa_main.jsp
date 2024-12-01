<%-- 
    Document   : sopa_main
    Created on : 21 abr. 2022, 03:24:12
    Author     : usuario1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Ing. de Soporte</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
        <link rel="stylesheet" href="estilos/barra.css">
        <link rel="shortcut icon" href="iconos\soporte_tec2.png">
        <link rel="stylesheet" type="text/css" href="estilos/dropdown/default.css" />
        <link rel="stylesheet" type="text/css" href="estilos/dropdown/component.css" />
        <link rel="stylesheet" type="text/css" href="estilos/soporte/main.css" />
        <link rel="stylesheet" type="text/css" href="estilos/soporte/asesor.css" />
        <link rel="stylesheet" href="estilos/mtto.css">
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
                        <a href="sopa_main.jsp">Inicio</a>
                        <a href="sopa_reportes.jsp">Ver Reportes</a>
                        <a href="sopa_eventos.jsp">Ver Eventos</a>
                        <a href="sopa_fevento.jsp">Nuevo Evento</a>
                        <a href="soporte_main.jsp">Cerrar Sesión</a>
                    </div>
                </div>
            </div>
        </header>


        <!-- Banner -->
        <img src="imgs\soporte\banner_sopa.png" alt="Asesor de Soporte" class="banner_main" />

        <!-- Div para las imágenes -->
        <div id="div2">

            <a href="sopa_eventos.jsp" title="Ver evento de mtto" alt="Ver evento de mtto" ><img src="imgs\soporte\sopa_vereventosmtto.png" alt="Ver evento de mtto" class="perfiles"/></a>
            <a href="sopa_reportes.jsp" title="Ver reportes asignados" alt="Ver reportes asignados"> <img src="imgs\soporte\sopa_reportes.png" alt="Ver reportes asignados" class="perfiles"/></a>

        </div>

        <div id="div2">

            <a href="sopa_fevento.jsp" title="Nuevo evento de mtto" alt="Nuevo evento de mtto"><img src="imgs\soporte\sopa_eventosmtto.png" alt="Nuevo evento de mtto" class="perfiles"/></a>
            <a href="sopa_faqs.jsp" title="Editor de Faqs" alt="Editor de Faqs"> <img src="imgs\soporte\editor_faqs.png" alt="Editor de Faqs" class="perfiles2"/></a>

        </div>

    </body>
</html>