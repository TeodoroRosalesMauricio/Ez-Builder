<%-- 
    Document   : pasa_build
    Created on : 19 mar. 2022, 15:31:47
    Author     : Mauricio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>PC-Builder</title>
        <link rel="stylesheet" type="text/css" href="estilos/dropdown/default.css" />
        <link rel="stylesheet" type="text/css" href="estilos/dropdown/component.css" />
        <script src="scripts/dropdown/modernizr.custom.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
        <link rel="stylesheet" href="estilos/barra.css">
        <link rel="stylesheet" href="estilos/footer.css">
        <link rel="stylesheet" href="estilos/pc_build.css">
        <link rel="shortcut icon" href="imgs/gabinete_white.png">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    </head>
    <script src="https://kit.fontawesome.com/40eeeaf3f3.js" crossorigin="anonymous"></script>
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


        <!-- Contenido -->
        <div class="pcbuild">

            <!-- Div donde va el titulo de la pagina -->
            <div class="titulo">
                <div class="img_div">
                    <img src="iconos\configuracion.png" alt="Configuración" />
                </div>
                <div class="img_div">
                    <img src="iconos\gabinete.png" alt="Gabinete" />
                </div>
                <div class="centrartextito">
                    <p class="letratit">
                        PC - Builder
                    </p><br>                    
                    <p class="letranorm">
                        "Configuración de computadoras"
                    </p>
                </div>
            </div>

            <div class="indicacion">
                Instrucciones:
            </div>

            <div class="indicacion">
                1. Selecciona tus componentes
            </div>

            <div class="imagenes">
                <div class="cuadrito">
                    <div class="letrasmasnorm">Procesador</div>
                    <div class="img_div">
                        <img src="iconos\cpu.png" alt="CPU" />
                    </div>  
                </div>

                <div class="cuadrito">
                    <div class="letrasmasnorm">Disipador</div>
                    <div class="img_div">
                        <img src="iconos\cooler1.png" alt="Disipador" />
                    </div>
                </div>

                <div class="cuadrito">
                    <div class="letrasmasnorm">Motherboard</div>
                    <div class="img_div">
                        <img src="iconos\motherboard.png" alt="Motherboard" />
                    </div>
                </div>
                <div class="cuadrito">
                    <div class="letrasmasnorm">Tarjeta Gráfica</div>
                    <div class="img_div">
                        <img src="iconos\gpu.png" alt="GPU" />
                    </div> 
                </div>
                <div class="cuadrito">
                    <div class="letrasmasnorm">Memoria RAM</div>
                    <div class="img_div">
                        <img src="iconos\ram.png" alt="RAM" />
                    </div>
                </div>
                <div class="cuadrito">
                    <div class="letrasmasnorm">Fuente de Poder</div>
                    <div class="img_div">
                        <img src="iconos\pws.png" alt="Fuente" />
                    </div>
                </div>
                <div class="cuadrito">
                    <div class="letrasmasnorm">Disco Duro HDD</div>
                    <div class="img_div">
                        <img src="iconos\hdd.png" alt="HDD" />
                    </div> 
                </div>
                <div class="cuadrito">
                    <div class="letrasmasnorm">Unidad de Estado Sólido</div>
                    <div class="img_div">
                        <img src="iconos\ssd.png" alt="SSD" />
                    </div> 
                </div>

                <div class="cuadrito">
                    <div class="letrasmasnorm">Gabinete</div>
                    <div class="img_div">
                        <img src="iconos\gabinete2.png" alt="Gabinete" />
                    </div>
                </div>
            </div>

            <div class="indicacion">
                2. Checa el precio y guarda tu ensamblaje
            </div>

            <a style="text-decoration: none" href="info_armar.jsp">
                <div class="recomendacion">
                    <div class="img_div">
                        <img src="iconos\pc_3.png" alt="pc3" />
                    </div>
                    <div class="centrartextito">
                        <p class="letranorm">Antes de comenzar</p>
                        <p class="letranorm">te recomendamos seguir la guía:</p>
                        <p class="letranorm">¿Cómo armar una PC desde 0?</p>
                    </div>
                </div>
            </a>

            <div class="empezar">
                <br>
                <br> 
                <p class="letrafea">¿Estas listo?</p>
                <br>
                <br>
                <a href="pcb_marca.jsp">
                    <input type="button" class="botoncito" value="¡Configura tu PC!">  
                </a>
            </div>
        </div>
    </body>
</html>
