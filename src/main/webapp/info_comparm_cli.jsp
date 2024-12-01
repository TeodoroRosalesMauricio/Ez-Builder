<%-- 
    Document   : info_escoger
    Created on : 24 mar. 2022, 18:50:33
    Author     : omarc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

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
    </body>

    <!-- Div de banner principal-->
    <div class="banner" id="banner_main">

        <img src="iconos\logo_comparm.png" alt="Información de apoyo" />            

        <div class="text_banner" id="txt_main_escoger">

            <label class="tit_banner" id="tit_2">¿Comprar una computadora, o armarla por partes?</label><br><br>

        </div>
    </div>

    <div class="info_escoger">

        <div class=WordSection1>

            <p class=MsoNormal style='line-height:115%'><b><span style='font-size:24.0pt;
                                                                 line-height:115%;font-family:"Work Sans";color:windowtext'>¿Por qué ensamblar
                        una computadora, en lugar de comprarla?</span></b></p>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><span
                    style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'>Decidir
                    ensamblar tu propia PC para juegos es la opción más desafiante, especialmente
                    si no tienes experiencia con componentes de hardware. Necesitas tener
                    suficiente tiempo libre para poder dedicarte a investigar y buscar los
                    componentes específicos. También necesitarás al menos unas horas para ensamblar
                    la PC y esperes encontrarte con algunos problemas imprevisibles. Sin embargo,
                    es mucho más fácil de lo que solía ser, ya que hoy en día puede encontrar
                    muchos artículos útiles e información en línea para guiarlo a través del
                    proceso. Aunque la perspectiva de tomar las riendas y ensamblar su propio
                    equipo se ve desalentadora, ¡Existen algunas grandes ventajas!</span></p>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><span
                    style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'>&nbsp;</span></p>

            <p class=MsoNormal style='line-height:115%'><b><span style='font-size:20.0pt;
                                                                 line-height:115%;font-family:"Work Sans"'>Personalización:</span></b><span
                    style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'>&nbsp;</span></p>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><img width=282
                                                                                height=282 src="imgs/info/info_comparm1.png" align=right hspace=12
                                                                                alt="Icono&#10;&#10;Descripción generada automáticamente"><span
                                                                                style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'>Con una PC preensamblada,
                    estás limitado a los diseños y piezas que están disponibles en ese momento o a
                    lo que te ofrece la empresa. Considerando que, con tu propio ensamblaje
                    personalizado, puedes elegir exactamente qué partes van a tu sistema y diseñar
                    así la PC para tus necesidades específicas. El ensamblaje te brinda mucha más libertad
                    para ajustar realmente tu construcción y personalizarla según tus preferencias
                    específicas. Aunque tomará más tiempo y será más un desafío, el resultado será
                    una construcción que es única para ti y algo de lo que puedes estar orgulloso.</span></p>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><span
                    style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'>&nbsp;</span></p>

            <p class=MsoNormal style='line-height:115%'><b><span style='font-size:20.0pt;
                                                                 line-height:115%;font-family:"Work Sans"'>&nbsp;</span></b></p>

            <p class=MsoNormal style='line-height:115%'><b><span style='font-size:20.0pt;
                                                                 line-height:115%;font-family:"Work Sans"'>Costo:</span></b></p>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><img width=276
                                                                                height=276 src="imgs/info/info_comparm2.png" align=left hspace=12
                                                                                alt="Icono&#10;&#10;Descripción generada automáticamente"><span
                                                                                style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'>Si tienes un
                    presupuesto limitado y busca ahorrar algo de dinero, ensamblar tu propia PC
                    puede ser una gran ventaja. Al elegir tus propias piezas, puedes comparar
                    costos para encontrar los mejores precios y evitar el costo adicional de pagar
                    piezas caras que no necesitas. Al ensamblar la PC tú mismo, también ahorras en
                    el costo de mano de obra superior que conlleva la compra de un sistema
                    prediseñado. Si realmente estás amarrado a tu presupuesto, puedes incluso
                    comprar piezas usadas y ¡construir una potencia de bajo costo!</span></p>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><span
                    style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'>&nbsp;</span></p>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><span
                    style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'>&nbsp;</span></p>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><b><span
                        style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'>Conociendo tu
                        propio sistema:&nbsp;</span></b></p>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><img width=264
                                                                                height=264 src="imgs/info/info_comparm3.png" align=right hspace=12
                                                                                alt="Icono&#10;&#10;Descripción generada automáticamente"><span
                                                                                style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'>Ensamblar tu
                    propia PC aumentará tu conocimiento de todos los conceptos básicos del hardware
                    de la computadora, lo cual es una gran habilidad. También significa que conoces
                    el sistema a la perfección, por lo tanto, si algo sale mal, no será necesario
                    que levantes el teléfono para llamar al soporte técnico ya que puedes
                    identificar el problema tú mismo. Tener ese conocimiento sobre tu propio
                    sistema resultará invaluable si un componente deja de funcionar o si deseas
                    actualizar tu sistema.</span></p>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><span
                    style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'>&nbsp;</span></p>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><span
                    style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'>Sin embargo,
                    es importante recordar que el ensamblaje de tu PC viene con sus propios
                    desafíos. Armar tu propia PC para gaming te llevará unas pocas horas en el
                    mejor de los casos, incluso más si cuentas con las horas que has dedicado a
                    investigar y esperar tus piezas. También existe la posibilidad de que tengas
                    problemas durante el ensamblaje y debas dedicar más tiempo a solucionar lo que
                    salió mal. La garantía será otro desafío, ya que obtener los componentes tú
                    mismo significa que todas sus piezas tendrán garantías diferentes y es posible
                    que tenga problemas en el futuro. Si compras usado, existe la posibilidad de
                    que no tengas garantía alguna. Sin embargo, si tienes el tiempo y la paciencia
                    para dedicarte realmente a ensamblar tu propia PC, esto te dará una sensación
                    de orgullo por una construcción completamente hecha por ti, para ti.</span></p>

            <p class=MsoNormal style='text-align:justify'><span style='font-size:20.0pt;
                                                                line-height:107%;font-family:"Work Sans"'>&nbsp;</span></p>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><b><span
                        style='font-size:24.0pt;line-height:115%;font-family:"Work Sans"'>¿Podría optar
                        por comprar una PC ya armada? </span></b></p>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><span
                    style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'>Si eres
                    alguien que no tiene tiempo extra para sentarte y construir tu propia PC para
                    gaming, no te sientas mal por comprar. Comprar una PC no debe considerarse una
                    salida fácil. Depende de lo que consideres que es el mejor uso de tu dinero y
                    tiempo. Aunque puede costarte más dinero, ¡comprar una PC para gaming preensamblada
                    tiene grandes beneficios!</span></p>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><span
                    style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'>&nbsp;</span></p>

            <p class=MsoNormal><b><span style='font-size:20.0pt;line-height:107%;
                                        font-family:"Work Sans"'>Ya está hecho para ti:</span></b><span
                    style='font-size:20.0pt;line-height:107%;font-family:"Work Sans"'>&nbsp;</span></p>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><img width=246
                                                                                height=246 src="imgs/info/info_comparm4.png" align=right hspace=12
                                                                                alt="Icono&#10;&#10;Descripción generada automáticamente"><span
                                                                                style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'>Cuando
                    compras un sistema preensamblado, todo lo han hecho por ti Desde encontrar los componentes,
                    verificar su compatibilidad, hasta encender la PC y asegurarse de que todo
                    funcione, todo lo hace la empresa. Para las personas que no saben mucho sobre
                    partes de computadoras, comprar una PC para gaming elimina el estrés y las
                    posibilidades de que algo salga mal. Además, las personas con horarios ocupados
                    se ahorran mucho tiempo comprando un sistema preensamblado.</span></p>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><span
                    style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'>&nbsp;</span></p>

            <p class=MsoNormal><b><span style='font-size:20.0pt;line-height:107%;
                                        font-family:"Work Sans"'>Garantía:</span></b><span style='font-size:20.0pt;
                                            line-height:107%;font-family:"Work Sans"'>&nbsp;</span></p>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><img width=209
                                                                                height=209 src="imgs/info/info_comparm5.png" align=left hspace=12
                                                                                alt="Icono&#10;&#10;Descripción generada automáticamente"><span
                                                                                style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'>El costo de
                    comprar una PC es más que solo piezas. Gastar ese dinero extra también
                    significa que obtienes el beneficio adicional de una garantía en toda la
                    construcción. Esto significa que, si alguna vez tienes algún problema, la
                    empresa podrá repararlo por ti. Para las personas que no están familiarizadas
                    con el funcionamiento de una PC, esta garantía y confiabilidad serán vitales si
                    tu PC alguna vez deja de funcionar. </span></p>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><span
                    style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'>&nbsp;</span></p>

            <p class=MsoNormal style='text-align:justify'><span style='font-size:20.0pt;
                                                                line-height:107%;font-family:"Work Sans"'>Sin embargo, es probable que el costo
                    de un sistema preensamblado sea más alto que el costo de ensamblar tu propia
                    PC. Estás pagando por la mano de obra de quienes ensamblan tu sistema y por
                    alguien que haga todas las comprobaciones y pruebas de compatibilidad por ti.
                    También es mucho más difícil personalizar tu sistema, ya que el fabricante
                    utilizará las piezas disponibles. Si estás buscando una apariencia específica o
                    que te proporcionen un componente específico, comprar una PC probablemente no
                    sea la ruta para ti. Pero si tienes dinero extra para gastar, te ahorrarás
                    tiempo y tendrás la seguridad de que tu equipo funcionará y estará listo para
                    arrancar.</span></p>

            <p class=MsoNormal style='text-align:justify'><span style='font-size:20.0pt;
                                                                line-height:107%;font-family:"Work Sans"'>&nbsp;</span></p>

            <p class=MsoNormal style='text-align:justify'><span style='font-size:20.0pt;
                                                                line-height:107%;font-family:"Work Sans"'>&nbsp;</span></p>

            <p class=MsoNormal style='text-align:justify'><b><span style='font-size:24.0pt;
                                                                   line-height:107%;font-family:"Work Sans"'>Conclusión </span></b></p>

            <p class=MsoNormal style='text-align:justify'><span style='font-size:20.0pt;
                                                                line-height:107%;font-family:"Work Sans"'>La conclusión es que depende
                    completamente de ti si ensamblas o compras tu PC para gaming. ¿Preferirías un
                    sistema que tu ensamblaste y personalizaste o un sistema que ensambló otra
                    persona pero que está garantizado para funcionar? Ambos métodos logran el mismo
                    objetivo, pero toman caminos diferentes para llegar allí. Es una decisión muy
                    personal, por lo que debes decidir qué funciona mejor para ti. En estos días,
                    muchos gamers eligen ensamblar su propia PC para poder asegurarse de tener los
                    mejores componentes y la mejor plataforma de rendimiento para su experiencia de
                    juego. Pero también puedes obtener algunos sistemas preensamblados de alto
                    rendimiento por un gran valor con la opción de personalizarlos o actualizarlos
                    más adelante.</span></p>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><span
                    style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'>&nbsp;</span></p>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><span
                    style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'>&nbsp;</span></p>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><span
                    style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'>&nbsp;</span></p>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><span
                    style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'>&nbsp;</span></p>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><span
                    style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'>&nbsp;</span></p>

            <p class=MsoNormal style='line-height:115%'><span style='font-size:20.0pt;
                                                              line-height:115%;font-family:"Work Sans"'>&nbsp;</span></p>

            <p class=MsoNormal style='line-height:115%'><span style='font-size:20.0pt;
                                                              line-height:115%;font-family:"Work Sans"'>&nbsp;</span></p>

        </div>


    </div>

</html>
