<%-- 
    Document   : soporte_main
    Created on : 18 abr. 2022, 07:38:05
    Author     : omarc
--%>


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
        <script src="scripts/dropdown/modernizr.custom.js"></script>
        <script src="https://kit.fontawesome.com/40eeeaf3f3.js" crossorigin="anonymous"></script>
    </head>

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
                        <a href="inicio_ase.jsp">Asesor de Soporte</a>
                        <a href="sopa_inicio.jsp">Ingeniero de Soporte</a>
                        <a href="inicio_mtto.jsp">Ingeniero de Mtto</a>
                        <a href="principal.jsp">Ir a EZ-Builder</a>
                    </div>
                </div>
            </div>

        </header>
        <!-- Div "Selecciona tu perfil" -->
        <div id="div1">Selecciona tu perfil</div>

        <!-- Div para las imágenes -->
        <div id="div2">

            <a href="inicio_ase.jsp" title="Asesor de Soporte" alt="Asesor de Soporte" ><img src="imgs\soporte\asesor_sopa.png" alt="Asesor de Soporte" class="perfiles" id="asesor" /></a>
            <a href="sopa_inicio.jsp" title="Ingeniero de Soporte" alt="Ingeniero de Soporte"> <img src="imgs\soporte\ing_sopa.png" alt="Ingeniero de Soporte" class="perfiles" id="ing_soporte"/></a>
            <a href="inicio_mtto.jsp" title="Ingeniero de Mantenimiento" alt="Ingeniero de Mantenimiento"><img src="imgs\soporte\ing_mtto.png" alt="Ingeniero de Mantenimiento" class="perfiles" id="ing_mtto"/></a>

        </div>
    </body>
</html>
