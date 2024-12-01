<%-- 
    Document   : principal
    Created on : 4 nov. 2021, 12:45:52
    Author     : omarc
--%>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>EZ-builder</title>

        <link rel="stylesheet" type="text/css" href="estilos/dropdown/default.css" />
        <link rel="stylesheet" type="text/css" href="estilos/dropdown/component.css" />
        <script src="scripts/dropdown/modernizr.custom.js"></script>
        <script src="https://kit.fontawesome.com/40eeeaf3f3.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
        <link rel="stylesheet" href="estilos/barra.css">
        <link rel="stylesheet" href="estilos/footer.css">
        <link rel="stylesheet" href="estilos/slider_p.css">
        <link rel="stylesheet" href="estilos/principal.css">
        <link rel="stylesheet" type="text/css" href="estilos/fondo/fondo.css" />
        <link rel="shortcut icon" href="imgs/gabinete_white.png">
    </head>
    <body>

        <%
            HttpSession miSessiondelUsuario = (HttpSession) request.getSession();
            int id = (int) (miSessiondelUsuario.getAttribute("id") == null ? 0 : miSessiondelUsuario.getAttribute("id"));

        %>

        <!-- Barra superior -->
        <header>

            <!-- Barra superior -->
            <div class="div_header">

                <!-- partial:index.partial.html -->
                <header class="barra_sip">

                    <!-- Logo -->
                    <div class="logo">
                        <a title="Inicio" href="principal_cli.jsp"><img src="iconos\logo_blanco.png" alt="Inicio" /></a>
                    </div>

                    <!-- Barra de búsqueda -->
                    <div class="div_barra">
                        <form name="barra" method="post" action="busqueda_cli.jsp">
                            <div class="div_barra2">
                                <input type="search" name="busqueda" id="search" class="barra_busqueda" placeholder="¿Qué vamos a comprar hoy?">
                                <button type="submit" class="boton_barra">
                                    <i class="fa fa-search"></i>
                                </button>
                            </div>
                        </form>
                    </div>

                    <div id="categ_menu">
                        <div class="main">
                            <nav class="cbp-hsmenu-wrapper" id="cbp-hsmenu-wrapper">
                                <div class="cbp-hsinner">
                                    <ul class="cbp-hsmenu">

                                        <li>
                                            <a href="#">Componentes</a>
                                            <ul class="cbp-hssubmenu cbp-hssub-rows">
                                                <li><a href="busqueda_cpu_cli.jsp"><img src="iconos\cpu.png" alt="xd"/><span>Procesadores</span></a></li>
                                                <li><a href="busqueda_gpu_cli.jsp"><img src="iconos\gpu.png" alt="xd"/><span>Tarjetas Gráficas</span></a></li>
                                                <li><a href="busqueda_ram_cli.jsp"><img src="iconos\ram.png" alt="xd"/><span>Memorias RAM</span></a></li>
                                                <li><a href="busqueda_mobo_cli.jsp"><img src="iconos\motherboard.png" alt="xd"/><span>Tarjetas Madre</span></a></li>
                                                <li><a href="busqueda_hdd_cli.jsp"><img src="iconos\hdd.png" alt="xd"/><span>Discos Duros</span></a></li>
                                                <li><a href="busqueda_ssd_cli.jsp"><img src="iconos\ssd.png" alt="xd"/><span>Unidades de Estado Sólido</span></a></li>
                                                <li><a href="busqueda_psu_cli.jsp"><img src="iconos\pws.png" alt="xd"/><span>Fuentes de Poder</span></a></li>
                                            </ul>
                                        </li>

                                        <li><a href="busqueda_pc_cli.jsp">PC's de escritorio</a></li>

                                        <li><a href="busqueda_laptop_cli.jsp">Laptops</a></li>

                                        <li>
                                            <a href="#">Periféricos</a>
                                            <ul class="cbp-hssubmenu cbp-hssub-rows">
                                                <li><a href="busqueda_case_cli.jsp"><img src="iconos\gabinete2.png" alt="xd"/><span>Gabinetes</span></a></li>
                                                <li><a href="busqueda_cooler_cli.jsp"><img src="iconos\cooler_2.png" alt="xd"/><span>Disipadores</span></a></li>
                                            </ul>
                                        </li>

                                    </ul>
                                </div>
                            </nav>
                        </div>
                    </div>
                    <script src="scripts/dropdown/cbpHorizontalSlideOutMenu.min.js"></script>
                    <script>
                        var menu = new cbpHorizontalSlideOutMenu(document.getElementById('cbp-hsmenu-wrapper'));
                    </script>

            </div>


            <!-- Dorpdown de Mi cuenta -->
            <div class="dropdown2">
                <div class="dropdown">
                    <button title="Mi cuenta Cliente" class="dropbtn"></button>
                    <div class="dropdown-content">
                        <a href="gestion_cli.jsp">Mi cuenta</a>
                        <a href="pasa_build.jsp">PC-Builder</a>
                        <a href="mis_ensamblajes.jsp">Mis ensamblajes</a>
                        <a href="cerrar_sesion.jsp">Cerrar Sesión</a>
                    </div>
                </div>
            </div>

            <!-- Botón del carrito -->
            <div class="carrito"><a title="Carrito" href="carrito.jsp"><img src="iconos\carrito.png" alt="Inicio" /></a></div>

        </header>
        <!-- Slider -->
        <div class="div_slider">

            <div class="slider">
                <ul>
                    <li><img src="imgs/slider/slider1.jpg" alt=""></li>
                    <li><img src="imgs/slider/slider2.jpg" alt=""></li>
                    <li><img src="imgs/slider/slider3.jpg" alt=""></li>
                    <li><img src="imgs/slider/slider5.jpg" alt=""></li>
                    <li><img src="imgs/slider/slider5.jpg" alt=""></li>
                </ul>
            </div>
        </div>


        <!-- Contenido principal -->
        <div class="principal">

            <a title="Aprende a escoger una laptop" href="info_menu_cli.jsp"><img src="imgs\escoger.jpg" class="btn_prin" id="escoger" alt="Aprende a escoger una laptop" /></a>

            <a title="Cómo armar una PC-Gamer" href="info_menu_cli.jsp"><img src="imgs\armar.jpg" class="btn_prin" id="armar" alt="Cómo armar una PC-Gamer" /></a>

            <a title="Vende tus productos" href="inicios_ven.jsp"><img src="imgs\vendedor.jpg" class="btn_prin" id="vendedor" alt="Vende tus productos" /></a>

        </div>
        <footer>
            <div class="footer">
                <div id="foot1" float="left">
                    <center>
                        <label>
                            Síguenos en nuestras redes sociales
                        </label>
                        <br>
                        <a href="https://www.facebook.com/EZ-Home-102654408700633"><img  id="face" src="imgs/logos/facebook.png" alt="facebook"></a>
                        <a href="https://www.instagram.com/ez_home_mex/"> <img src="imgs/logos/instagram.png" id="insta" alt="insta"></a>
                        <a href="https://twitter.com/vg_andy"> <img src="imgs/logos/twitter.png"  id="twit" alt="twitter"></a>
                    </center>
                </div>

                <div id="foot2" float="left">
                    <center>
                        <label>
                            ¿Quiénes somos?
                        </label>
                        <br>
                        <a href="Conocenos.jsp"><img  id="empresa" src="iconos/logoez.png" alt="conocenos"></a>
                    </center>
                </div>

                <div id="foot3" float="left">
                    <center>
                        <label>
                            <a href="faq_cli.jsp" class="blancont">  Preguntas frecuentes </a>
                        </label>
                    </center>
                </div>

            </div>
        </footer>

    </body>
</html>