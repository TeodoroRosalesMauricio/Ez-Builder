<%-- 
    Document   : G_fgpu
    Created on : 22 may. 2022, 16:23:49
    Author     : usuario1
--%>

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                <%@page import="java.sql.ResultSet"%>
<%@page import="conexion.Base"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Publicar</title>
        <link rel="stylesheet" type="text/css" href="estilos/dropdown/default.css" />
        <link rel="stylesheet" type="text/css" href="estilos/dropdown/component.css" />
        <script src="scripts/dropdown/modernizr.custom.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
        <link rel="stylesheet" href="estilos/barra.css">
        <link rel="stylesheet" href="estilos/principal.css">
        <link rel="stylesheet" href="estilos/gestion_f.css">
        <link rel="shortcut icon" href="imgs/gabinete_white.png">
        <script src="scripts/validaciones.js"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
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
                        <a title="Inicio" href="principal_ven.jsp"><img src="iconos\logo_blanco.png" alt="Inicio" /></a>
                    </div>

                    <!-- Barra de búsqueda -->
                    <div class="div_barra">
                        <form name="barra" method="post" action="busqueda_ven.jsp">
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
                                                <li><a href="busqueda_cpu_ven.jsp"><img src="iconos\cpu.png" alt="xd"/><span>Procesadores</span></a></li>
                                                <li><a href="busqueda_gpu_ven.jsp"><img src="iconos\gpu.png" alt="xd"/><span>Tarjetas Gráficas</span></a></li>
                                                <li><a href="busqueda_ram_ven.jsp"><img src="iconos\ram.png" alt="xd"/><span>Memorias RAM</span></a></li>
                                                <li><a href="busqueda_mobo_ven.jsp"><img src="iconos\motherboard.png" alt="xd"/><span>Tarjetas Madre</span></a></li>
                                                <li><a href="busqueda_hdd_ven.jsp"><img src="iconos\hdd.png" alt="xd"/><span>Discos Duros</span></a></li>
                                                <li><a href="busqueda_ssd_ven.jsp"><img src="iconos\ssd.png" alt="xd"/><span>Unidades de Estado Sólido</span></a></li>
                                                <li><a href="busqueda_psu_ven.jsp"><img src="iconos\pws.png" alt="xd"/><span>Fuentes de Poder</span></a></li>
                                            </ul>
                                        </li>

                                        <li><a href="busqueda_pc_ven.jsp">PC's de escritorio</a></li>

                                        <li><a href="busqueda_laptop_ven.jsp">Laptops</a></li>

                                        <li>
                                            <a href="#">Periféricos</a>
                                            <ul class="cbp-hssubmenu cbp-hssub-rows">
                                                <li><a href="busqueda_case_ven.jsp"><img src="iconos\gabinete2.png" alt="xd"/><span>Gabinetes</span></a></li>
                                                <li><a href="busqueda_cooler_ven.jsp"><img src="iconos\cooler_2.png" alt="xd"/><span>Disipadores</span></a></li>
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
                    <button title="Mi cuenta Vendedor" class="dropbtn"></button>
                    <div class="dropdown-content">
                        <a href="gestion_ven.jsp">Mi cuenta</a>
                        <a href="GestionP_ven.jsp">Gestión de productos</a>
                        <a href="cerrar_sesion.jsp">Cerrar Sesión</a>
                    </div>
                </div>
            </div>

        </header>



        <!-- Div General-->
        <div class="basegpu">

            <!-- Div Titulo-->
            <div class="espaciocpu"></div>
            <center>
                Publicar nueva Tarjeta Gráfica
            </center>
            <!-- Div Formulario-->
            <div class="formulariocpu">

                <div class="espaciocpu"></div>
                <div class="espaciocpu"></div>

                <center>
                    Información específica
                </center>
                <br>

                <form action="G_fgpu_A.jsp" method="post" name="f2">



                    <div class="espaciocpu"></div>
                    <div class="rectangulo">

                        <div class="texto">
                            <label for="Marca">Marca</label>
                        </div>

                        <div class="barra">
                            <input type="text" id="Marca" name="marca"
                                   maxlength="20" required class="input" style="width: 90%"> 
                        </div>
                    </div>



                    <div class="espaciocpu"></div>
                    <div class="rectangulo">

                        <div class="texto">
                            <label for="Serie">Serie</label>
                        </div>

                        <div class="barra">
                            <input type="text" id="Serie" name="serie"
                                   maxlength="20" required class="input" style="width: 90%">
                        </div>
                    </div>



                    <div class="espaciocpu"></div>
                    <div class="rectangulo">

                        <div class="texto">
                            <label for="gpu">Procesador gráfico</label>
                        </div>

                        <div class="barra">
                            <input type="text" id="gpu" name="gpu"
                                   maxlength="20" required class="input" style="width: 90%">
                        </div>
                    </div>



                    <div class="espaciocpu"></div>
                    <div class="rectangulo">

                        <div class="texto">
                            <label for="cuda">Cantidad de núcleos CUDA</label>
                        </div>

                        <div class="barra">
                            <input type="text" id="cuda" name="cuda"
                                   maxlength="20" required class="input" style="width: 50%">
                        </div>
                    </div>



                    <div class="espaciocpu"></div>
                    <div class="rectangulo" style="margin-top: 20px">

                        <div class="texto">
                            <label for="fboost">Aumento de la velocidad de reloj del procesador</label>
                        </div>

                        <div class="barra">
                            <input type="text" id="fboost" name="fboost"
                                   maxlength="10" required class="input" style="width: 70%">
                        </div>
                    </div>



                    <div class="espaciocpu"></div>
                    <div class="rectangulo" style="margin-top: 40px">

                        <div class="texto">
                            <label for="memoria">Cantidad de memoria vram</label>
                        </div>

                        <div class="barra">
                            <input type="text" id="memoria" name="memoria" 
                                   maxlength="20" required class="input" style="width: 30%">
                        </div>
                    </div>



                    <div class="espaciocpu"></div>
                    <div class="rectangulo" style="margin-top: 20px">

                        <div class="texto">
                            <label for="tmem">Tipo de memoria vram</label>
                        </div>

                        <div class="barra">
                            <input type="text" id="tmem" name="tmem"
                                   maxlength="20" required class="input" style="width: 60%">
                        </div>
                    </div>



                    <div class="espaciocpu"></div>
                    <div class="rectangulo">

                        <div class="texto">
                            <label for="interfaz">Interfaz</label>
                        </div>

                        <div class="barra">
                            <input type="text" id="interfaz" name="interfaz"
                                   maxlength="20" required class="input" style="width: 70%"> 
                        </div>
                    </div>



                    <div class="espaciocpu"></div>
                    <div class="rectangulo">

                        <div class="texto">
                            <label for="res">Resolución máxima</label>
                        </div>

                        <div class="barra">
                            <input type="text" id="res" name="res"
                                   maxlength="20" required class="input" style="width: 30%">
                        </div>
                    </div>



                    <div class="espaciocpu"></div>
                    <div class="rectangulo">

                        <div class="texto">
                            <label for="energ">Consumo energético</label>
                        </div>

                        <div class="barra">
                            <input type="text" id="energ" name="energ"
                                   maxlength="20" required class="input" style="width: 30%">
                        </div>
                    </div>



                    <div class="espaciocpu"></div>
                    <div class="rectangulo">

                        <div class="texto">
                            <label for="psu">Suministro de energía mínimo</label>
                        </div>

                        <div class="barra">
                            <input type="text" id="psu" name="psu"
                                   maxlength="20" required class="input" style="width: 20%">
                        </div>
                    </div>



                    <div class="espaciocpu"></div>
                    <div class="rectangulo" style="margin-top: 20px">

                        <div class="texto">
                            <label for="Fmaxima">Cantidad de puertos HDMI</label>
                        </div>

                        <div class="barra">
                            <input type="text" id="Fmaxima" name="fmaxima" onkeypress="return numeros(event)"
                                   maxlength="3" required class="input" style="width: 20%">
                        </div>
                    </div>



                    <div class="espaciocpu"></div>
                    <div class="rectangulo" style="margin-top: 20px">

                        <div class="texto">
                            <label for="dport">Cantidad de puertos Display Port</label>
                        </div>

                        <div class="barra">

                            <input type="text" id="dport" name="dport" onkeypress="return numeros(event)"
                                   maxlength="3" required class="input" style="width: 20%">

                        </div>
                    </div>

                    <br>
                    <div class="espaciocpu"></div>


                    <!-- Div Boton-->

                    <div class="botonc">
                        <input type="submit" class="carritob" value="Continuar">                       
                    </div>

                </form>

            </div>

        </div>

    </body>
</html>

