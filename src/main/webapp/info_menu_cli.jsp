<%-- 
    Document   : info_menu
    Created on : 23 mar. 2022, 12:05:37
    Author     : omarc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://fonts.googleapis.com/css?family=Oswald" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Merriweather:300:italic" rel="stylesheet"><link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
        <link rel="stylesheet" href="estilos/info_menu.css">
        <%-- Dropdown y barra --%>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
        <link rel="stylesheet" href="estilos/barra.css">
        <link rel="shortcut icon" href="imgs/gabinete_white.png">
        <link rel="stylesheet" type="text/css" href="estilos/dropdown/default.css" />
        <link rel="stylesheet" type="text/css" href="estilos/dropdown/component.css" />
        <script src="scripts/dropdown/modernizr.custom.js"></script>
        <script src="https://kit.fontawesome.com/40eeeaf3f3.js" crossorigin="anonymous"></script>
        <%-- Banner --%>
        <link rel="stylesheet" type="text/css" href="estilos/info_apoyo.css" />
    </head>


    <%
        HttpSession miSessiondelUsuario = (HttpSession) request.getSession();
        int id = (int) (miSessiondelUsuario.getAttribute("id") == null ? 0 : miSessiondelUsuario.getAttribute("id"));

    %>

    <body>

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


        <!-- Div de banner principal-->
        <div class="banner" id="banner_main">

            <img src="iconos\info_1.png" alt="Información de apoyo" />            

            <div class="text_banner" id="txt_main">

                <label class="tit_banner">Información de apoyo</label><br><br>

                <label class="subtext_banner">¡Bienvenido! En esta sección podrás encontrar todo tipo de información relevante para ayudarte a elegir tu computadora ideal.</label>

            </div>
        </div>

        <!-- Div de banner secundario-->

        <div class="banner" id="banner_sub">

            <div class="text_banner" id="txt_sub">

                <label class="tit_banner_white">¡Adelante! Escoge un tema:</label><br><br>

            </div>
        </div>


        <!-- Carrusel de información relevante -->
        <div class="carousel">
            <div class="carousel__control">
            </div>
            <div class="carousel__stage">
                <div class="spinner spinner--left">
                    <div class="spinner__face js-active" data-bg="#27323c">
                        <div class="content" data-type="iceland">
                            <a title="Inicio" href="info_escoger_cli.jsp">   
                                <div class="content__left">
                                    <h1>Cómo escoger correctamente una laptop<br><span>Sin morir en el intento</span></h1>
                                </div></a>
                            <div class="content__right">
                                <div class="content__main">
                                    <p>
                                        En esta guía aprenderás a escoger la computadora que mejor se ajuste a tu presupuesto y necesidades.</p>

                                    <p> Contenido:
                                    </p>

                                    <ul>

                                        <li> ¿Laptop o PC de escritorio?</li><br>
                                        <li> ¿Windows, Mac o Linux? </li><br>
                                        <li>Partes de una computadora <br>(para principiantes)</li><br>
                                    </ul>

                                </div>

                            </div>
                        </div>
                    </div>

                    <div class="spinner__face" data-bg="#19304a">
                        <div class="content" data-type="china">
                            <a title="Inicio" href="info_comparm_cli.jsp"><div class="content__left">
                                    <h1>¿Comprar una computadora, ó armarla por partes?<br><span>La respuesta definitiva</span></h1>
                                </div></a>
                            <div class="content__right">
                                <div class="content__main">
                                    <p>
                                        Ultimamente se ha puesto muy de moda armar una PC, en vez de comprarla ya ensamblada. </p> 

                                    <p> Pero, ¿Por qué? ¿Qué ventajas trae consigo ensamblar una computadora? Y ¿Cómo saber cuál opción es mejor? </p> 

                                    <p>Contenido:</p>

                                    <ul>
                                        <li> Ventajas y desventajas de ensamblar una computadora.</li><br>
                                        <li> Ventajas desventajas de comprar una computadora ya ensamblada.</li><br>
                                        <li>¿Cuál opción es mejor?</li><br>
                                    </ul>

                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="spinner__face" data-bg="#2b2533">
                        <div class="content" data-type="usa">
                            <a title="Inicio" href="info_armar_cli.jsp"><div class="content__left">
                                    <h1>Como armar una computadora<br><span>Para principiantes</span></h1>
                                </div></a>
                            <div class="content__right">
                                <div class="content__main">
                                    <p>
                                        ¿Estás interesado en armar una PC Gamer? ¿O simplemente buscas una computadora que realmente se ajuste a tus necesidades?
                                    </p>            

                                    <p>
                                        ¡No importa! Armar tu propia computadora, siempre es la mejor opción. Y aquí te enseñamos cómo...                              
                                    </p>

                                    <p>Contenido:</p>

                                    <li>Arende a escoger los componentes de una computadora</li><br>

                                    <li>Guía de compra</li><br>

                                    <li>Arma tu computadora (Próximamente)</li><br>

                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!--  Poor man's preloader -->
        <div style="height: 0; width: 0; overflow: hidden">
            <img src="">
            <img src=""><img src=""><img src=""><img src=""></div>
        <!-- partial -->
        <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js'></script><script  src="scripts/info_menu.js"></script>
    </body>
</html>
</html>
