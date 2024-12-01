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

        <img src="iconos\logo_armar.png" alt="Información de apoyo" />            

        <div class="text_banner" id="txt_main_escoger">

            <label class="tit_banner" id="tit_2">Como armar una computadora</label><br><br>

        </div>
    </div>

    <div class="info_escoger">

        <div class=WordSection1>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><span
                    style='font-size:20.0pt;line-height:115%;font-family:"Work Sans";color:black;
                    mso-color-alt:windowtext;background:white'>Nunca ha habido un mejor momento
                    para armar su propia PC, pero ¿cuál es el mejor punto de inicio? Determinar qué
                    quiere conseguir con su nueva computadora es el primer paso que lo guiará
                    durante el resto del proceso. Cuando sepa qué quiere de su computadora, sabrá
                    qué necesita de su hardware, cual es el origen del desempeño de su computadora.
                    Obtenga el máximo desempeño por menos, invirtiendo en los componentes correctos
                    desde el inicio. Ahí es cuando puede comenzar a armar.</span></span><span
                    style='font-size:20.0pt;line-height:115%;font-family:"Work Sans";color:windowtext;
                    mso-color-alt:windowtext;background:white'><o:p></o:p></span></p>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><span
                    style='font-size:20.0pt;line-height:115%;font-family:"Work Sans";color:windowtext;
                    mso-color-alt:windowtext;background:white'><o:p>&nbsp;</o:p></span></p>

            <p class=MsoNormal style='line-height:115%'><b><span style='font-size:20.0pt;
                                                                 line-height:115%;font-family:"Work Sans"'>¿Para qué se requiere la PC? <o:p></o:p></span></b></p>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><span
                    style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'>Es fácil
                    abrumarse con todas las posibles variables en el armado de una PC. ¿Quiere
                    armar una PC para ahorrar dinero? ¿O quiere alcanzar los más altos niveles de
                    desempeño? El punto en común en cada uno de estos escenarios es el hardware, es
                    decir, la <span class=SpellE>motherboard</span>, el procesador (CPU), el
                    almacenamiento (unidad de disco duro o SSD) y la memoria (RAM). Las “vísceras”
                    de la computadora tienen más impacto en el desempeño de su sistema, mientras
                    que los otros componentes, como la carcasa, el sistema operativo (SO), el
                    monitor, el mouse, la fuente de alimentación y el teclado tienen mucho menor
                    impacto en cómo se ejecuta la computadora, pero aun así son importantes.<o:p></o:p></span></p>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><span
                    style='font-size:20.0pt;line-height:115%;font-family:"Work Sans";color:windowtext'><o:p>&nbsp;</o:p></span></p>

            <h2 style='line-height:115%;background:white'><span style='font-size:20.0pt;
                                                                line-height:115%;font-family:"Work Sans";color:black;mso-color-alt:windowtext'>Componentes
                    claves</span><span style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'><o:p></o:p></span></h2>

            <p style='line-height:115%;background:white;box-sizing: inherit;margin:1.5rem;
               font-size:inherit;text-rendering: optimizelegibility'><span style='font-size:
                    20.0pt;line-height:115%;font-family:"Work Sans";color:black;mso-color-alt:windowtext'>Una
                    vez que haya decidido qué tipo de PC quiere armar, puede comenzar a buscar y
                    comprar el hardware que necesita para completar su plan. Aquí están las partes
                    esenciales:&nbsp;</span><span style='font-size:20.0pt;line-height:115%;
                                              font-family:"Work Sans"'><o:p></o:p></span></p>

            <p style='line-height:115%;background:white'><span style='font-size:20.0pt;
                                                               line-height:115%;font-family:"Work Sans"'><o:p>&nbsp;</o:p></span></p>

            <p class=MsoListParagraph style='text-indent:-18.0pt;line-height:115%;
               mso-list:l0 level1 lfo1'><![if !supportLists]><span style='font-size:20.0pt;
                                         line-height:115%;font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
                                         Symbol;mso-bidi-font-weight:bold'><span style='mso-list:Ignore'>·<span
                            style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><b><span
                        style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'>Tarjeta Madre
                        (<span class=SpellE>Motherboard</span>)<o:p></o:p></span></b></p>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><!--[if gte vml 1]><v:shapetype
             id="_x0000_t75" coordsize="21600,21600" o:spt="75" o:preferrelative="t"
             path="m@4@5l@4@11@9@11@9@5xe" filled="f" stroked="f">
             <v:stroke joinstyle="miter"/>
             <v:formulas>
              <v:f eqn="if lineDrawn pixelLineWidth 0"/>
              <v:f eqn="sum @0 1 0"/>
              <v:f eqn="sum 0 0 @1"/>
              <v:f eqn="prod @2 1 2"/>
              <v:f eqn="prod @3 21600 pixelWidth"/>
              <v:f eqn="prod @3 21600 pixelHeight"/>
              <v:f eqn="sum @0 0 1"/>
              <v:f eqn="prod @6 1 2"/>
              <v:f eqn="prod @7 21600 pixelWidth"/>
              <v:f eqn="sum @8 21600 0"/>
              <v:f eqn="prod @7 21600 pixelHeight"/>
              <v:f eqn="sum @10 21600 0"/>
             </v:formulas>
             <v:path o:extrusionok="f" gradientshapeok="t" o:connecttype="rect"/>
             <o:lock v:ext="edit" aspectratio="t"/>
            </v:shapetype><v:shape id="Imagen_x0020_6" o:spid="_x0000_s1033" type="#_x0000_t75"
             alt="Icono&#10;&#10;Descripción generada automáticamente con confianza media"
             style='position:absolute;left:0;text-align:left;margin-left:206.8pt;
             margin-top:702.8pt;width:258pt;height:258pt;z-index:251658240;visibility:visible;
             mso-wrap-style:square;mso-width-percent:0;mso-height-percent:0;
             mso-wrap-distance-left:9pt;mso-wrap-distance-top:0;mso-wrap-distance-right:9pt;
             mso-wrap-distance-bottom:0;mso-position-horizontal:right;
             mso-position-horizontal-relative:text;mso-position-vertical:absolute;
             mso-position-vertical-relative:text;mso-width-percent:0;mso-height-percent:0;
             mso-width-relative:margin;mso-height-relative:margin'>
             <v:imagedata src="info_armar_archivos/image001.png" o:title="Icono&#10;&#10;Descripción generada automáticamente con confianza media"/>
             <w:wrap type="square"/>
            </v:shape><![endif]--><![if !vml]><img width=344 height=344
                                                       src="imgs/info/info_armar1.png" align=right hspace=12
                                                       alt="Icono&#10;&#10;Descripción generada automáticamente con confianza media"
                                                       v:shapes="Imagen_x0020_6"><![endif]><span style='font-size:20.0pt;line-height:
                                                       115%;font-family:"Work Sans"'>La <span class=SpellE>motherboard</span> es el
                    primer componente que tendrá que elegir. La <span class=SpellE>motherboard</span>
                    determina el factor de forma física y tamaño del armado de su computadora, pero
                    también determina qué otras piezas de hardware pueden usar la computadora. Por
                    ejemplo, la <span class=SpellE>motherboard</span> determina la potencia que
                    puede manejar el procesador, la tecnología de memoria (DDR4, DDR3, DDR2, etc.),
                    la cantidad de módulos que se pueden instalar y el factor de forma
                    almacenamiento (de 2.5&nbsp;in, <span class=SpellE>mSATA</span>, o m.2) y la
                    interfaz de almacenamiento (SATA o PCIe). Si quiere elegir su <span
                        class=SpellE>motherboard</span> según los demás componentes compatibles, este
                    debería ser su punto de inicio.&nbsp;<o:p></o:p></span></p>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><span
                    style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'><o:p>&nbsp;</o:p></span></p>

            <p class=MsoListParagraph style='text-align:justify;text-indent:-18.0pt;
               line-height:115%;mso-list:l0 level1 lfo1'><![if !supportLists]><span
                    style='font-size:20.0pt;line-height:115%;font-family:Symbol;mso-fareast-font-family:
                    Symbol;mso-bidi-font-family:Symbol;mso-bidi-font-weight:bold'><span
                        style='mso-list:Ignore'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </span></span></span><![endif]><b><span style='font-size:20.0pt;line-height:
                                                        115%;font-family:"Work Sans"'>Procesador (CPU)<o:p></o:p></span></b></p>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><!--[if gte vml 1]><v:shape
             id="Imagen_x0020_7" o:spid="_x0000_s1032" type="#_x0000_t75" alt="Imagen que contiene Código QR&#10;&#10;Descripción generada automáticamente"
             style='position:absolute;left:0;text-align:left;margin-left:147.55pt;
             margin-top:1032.35pt;width:198.75pt;height:198.75pt;z-index:251659264;
             visibility:visible;mso-wrap-style:square;mso-width-percent:0;
             mso-height-percent:0;mso-wrap-distance-left:9pt;mso-wrap-distance-top:0;
             mso-wrap-distance-right:9pt;mso-wrap-distance-bottom:0;
             mso-position-horizontal:right;mso-position-horizontal-relative:text;
             mso-position-vertical:absolute;mso-position-vertical-relative:text;
             mso-width-percent:0;mso-height-percent:0;mso-width-relative:margin;
             mso-height-relative:margin'>
             <v:imagedata src="info_armar_archivos/image003.png" o:title="Imagen que contiene Código QR&#10;&#10;Descripción generada automáticamente"/>
             <w:wrap type="square"/>
            </v:shape><![endif]--><![if !vml]><img width=265 height=265
                                                       src="imgs/info/info_armar2.png" align=right hspace=12
                                                       alt="Imagen que contiene Código QR&#10;&#10;Descripción generada automáticamente"
                                                       v:shapes="Imagen_x0020_7"><![endif]><span style='font-size:20.0pt;line-height:
                                                       115%;font-family:"Work Sans"'>La CPU es el motor de su computadora y establece
                    las expectativas de desempeño para la creación completa. La memoria y el
                    almacenamiento alimentan al procesador que controla cada transacción de datos
                    dentro de la PC. Cuando esté determinando qué CPU instalar, preste atención al giga
                    Hertz (GHz). Cuanto mayor sean los GHz, más rápido será el procesador. Sin
                    embargo, más GHz también significa que la CPU consume más energía, lo que
                    podría llevar a elevar las temperaturas que requieren un mejor flujo de aire o
                    disipación de calor en la computadora.<o:p></o:p></span></p>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><span
                    style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'><o:p>&nbsp;</o:p></span></p>

            <h3 style='margin-left:36.0pt;text-indent:-18.0pt;line-height:115%;mso-list:
                l0 level1 lfo1;background:white'><![if !supportLists]><span style='font-size:
                                         20.0pt;line-height:115%;font-family:Symbol;mso-fareast-font-family:Symbol;
                                         mso-bidi-font-family:Symbol;color:windowtext;mso-color-alt:windowtext;
                                         mso-bidi-font-weight:bold'><span style='mso-list:Ignore'>·<span
                            style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><b><span
                        style='font-size:20.0pt;line-height:115%;font-family:"Work Sans";color:black;
                        mso-color-alt:windowtext'>Memoria RAM</span></b><b><span style='font-size:20.0pt;
                                                 line-height:115%;font-family:"Work Sans";color:windowtext;mso-color-alt:windowtext'><o:p></o:p></span></b></h3>

            <p style='text-align:justify;line-height:115%;background:white'><span
                    style='font-size:20.0pt;line-height:115%;font-family:"Work Sans";color:black;
                    mso-color-alt:windowtext'>Agregar&nbsp;<a
                        href="https://www.crucial.mx/products/memory" style='box-sizing: inherit;
                        line-height:inherit;cursor:pointer;transition: color 0.25s ease 0s;display:
                        inline-block'></a> memoria RAM es una de las formas más rápidas, fáciles y
                    accesibles de amplificar el desempeño de la computadora que está armando,
                    porque esto le da a su sistema más espacio disponible para el almacenamiento de
                    los datos temporarios que se están usando. Casi todas las operaciones de la
                    computadora se basan en la memoria que incluye tener varias pestañas abiertas
                    mientras se navega en la Web, escribir un correo electrónico, realizar
                    multitareas entre aplicaciones y hasta mover el cursor del mouse. Los servicios
                    y procesos que se ejecutan en segundo plano, como las actualizaciones de
                    sistema, pueden provenir de su RAM y esta es la razón por la cual es importante
                    tener tanta memoria como sea posible. Cuántas más cosas haga, más memoria
                    necesita.</span><span style='font-size:20.0pt;line-height:115%;font-family:
                                      "Work Sans"'><o:p></o:p></span></p>

            <p style='text-align:justify;line-height:115%;background:white'><!--[if gte vml 1]><o:wrapblock><v:shape
              id="Imagen_x0020_9" o:spid="_x0000_s1031" type="#_x0000_t75" alt="Icono&#10;&#10;Descripción generada automáticamente"
              style='position:absolute;left:0;text-align:left;margin-left:309pt;
              margin-top:-136.05pt;width:314.25pt;height:136.85pt;z-index:251660288;
              visibility:visible;mso-wrap-style:square;mso-width-percent:0;
              mso-height-percent:0;mso-wrap-distance-left:9pt;mso-wrap-distance-top:0;
              mso-wrap-distance-right:9pt;mso-wrap-distance-bottom:0;
              mso-position-horizontal:absolute;mso-position-horizontal-relative:text;
              mso-position-vertical:absolute;mso-position-vertical-relative:text;
              mso-width-percent:0;mso-height-percent:0;mso-width-relative:margin;
              mso-height-relative:margin'>
              <v:imagedata src="info_armar_archivos/image005.png" o:title="Icono&#10;&#10;Descripción generada automáticamente"
               croptop="18690f" cropbottom="18298f"/>
              <w:wrap type="topAndBottom"/>
             </v:shape><![endif]--><![if !vml]><span style='mso-ignore:vglayout'>
                    <table cellpadding=0 cellspacing=0 align=left>
                        <tr>
                            <td width=412 height=0></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><img width=419 height=182 src="imgs/info/info_armar3.png"
                                     alt="Icono&#10;&#10;Descripción generada automáticamente" v:shapes="Imagen_x0020_9"></td>
                        </tr>
                    </table>
                </span><![endif]><!--[if gte vml 1]></o:wrapblock><![endif]--><br
                    style='mso-ignore:vglayout' clear=ALL>
                <span style='font-size:20.0pt;line-height:115%;font-family:"Work Sans";
                      mso-no-proof:yes'><o:p></o:p></span></p>

            <p class=MsoListParagraph style='text-indent:-18.0pt;line-height:115%;
               mso-list:l0 level1 lfo1'><![if !supportLists]><span style='font-size:20.0pt;
                                         line-height:115%;font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
                                         Symbol;color:windowtext;mso-bidi-font-weight:bold'><span style='mso-list:Ignore'>·<span
                            style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><!--[if gte vml 1]><v:shape
                             id="Imagen_x0020_10" o:spid="_x0000_s1030" type="#_x0000_t75" alt="Icono&#10;&#10;Descripción generada automáticamente"
                             style='position:absolute;left:0;text-align:left;margin-left:175.3pt;
                             margin-top:1732.75pt;width:226.5pt;height:226.5pt;z-index:251661312;
                             visibility:visible;mso-wrap-style:square;mso-width-percent:0;
                             mso-height-percent:0;mso-wrap-distance-left:9pt;mso-wrap-distance-top:0;
                             mso-wrap-distance-right:9pt;mso-wrap-distance-bottom:0;
                             mso-position-horizontal:right;mso-position-horizontal-relative:text;
                             mso-position-vertical:absolute;mso-position-vertical-relative:text;
                             mso-width-percent:0;mso-height-percent:0;mso-width-relative:margin;
                             mso-height-relative:margin'>
                             <v:imagedata src="info_armar_archivos/image007.png" o:title="Icono&#10;&#10;Descripción generada automáticamente"/>
                             <w:wrap type="square"/>
                            </v:shape><![endif]--><![if !vml]><img width=302 height=302
                                                       src="imgs/info/info_armar4.png" align=right hspace=12
                                                       alt="Icono&#10;&#10;Descripción generada automáticamente" v:shapes="Imagen_x0020_10"><![endif]><b><span
                        style='font-size:20.0pt;line-height:115%;font-family:"Work Sans";color:windowtext'>Almacenamiento<o:p></o:p></span></b></p>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><span
                    style='font-size:20.0pt;line-height:115%;font-family:"Work Sans";color:windowtext'>Sus
                    archivos y datos son guardados a largo plazo en su unidad de almacenamiento. La
                    unidad de disco duro (HDD) o la unidad de&nbsp;<a
                        href="https://www.crucial.mx/products/ssd"><span style='color:windowtext;
                                                                     text-decoration:none;text-underline:none'>estado sólido (SSD)</span></a>&nbsp;conservan
                    los datos. A pesar de que los discos duros por lo general le ofrecen más
                    espacio de almacenamiento (en GB), las SSD los han dejado desactualizados –las
                    SSD son en promedio 6 veces más rápidas1&nbsp;y 90 veces más eficientes
                    energéticamente2&nbsp;que las unidades de disco duro.<o:p></o:p></span></p>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><span
                    style='font-size:20.0pt;line-height:115%;font-family:"Work Sans";color:windowtext'>La
                    discrepancia de velocidad proviene de cómo los dos dispositivos de </span><!--[if gte vml 1]><v:shape
                     id="Imagen_x0020_11" o:spid="_x0000_s1029" type="#_x0000_t75" alt="Icono&#10;&#10;Descripción generada automáticamente"
                     style='position:absolute;left:0;text-align:left;margin-left:0;margin-top:1992.8pt;
                     width:252pt;height:252pt;z-index:251662336;visibility:visible;
                     mso-wrap-style:square;mso-width-percent:0;mso-height-percent:0;
                     mso-wrap-distance-left:9pt;mso-wrap-distance-top:0;mso-wrap-distance-right:9pt;
                     mso-wrap-distance-bottom:0;mso-position-horizontal:left;
                     mso-position-horizontal-relative:text;mso-position-vertical:absolute;
                     mso-position-vertical-relative:text;mso-width-percent:0;mso-height-percent:0;
                     mso-width-relative:margin;mso-height-relative:margin'>
                     <v:imagedata src="info_armar_archivos/image009.png" o:title="Icono&#10;&#10;Descripción generada automáticamente"/>
                     <w:wrap type="square"/>
                    </v:shape><![endif]--><![if !vml]><img width=336 height=336
                                                       src="imgs/info/info_armar5.png" align=left hspace=12
                                                       alt="Icono&#10;&#10;Descripción generada automáticamente" v:shapes="Imagen_x0020_11"><![endif]><span
                                                       style='font-size:20.0pt;line-height:115%;font-family:"Work Sans";color:windowtext'>almacenamiento
                    leen y escriben los datos, la velocidad de lectura y escritura mide cuán rápido
                    se cargan (lectura) y guardan/transfieren (escritura). Las unidades de disco
                    duro usan pequeñas partes mecánicas movibles y discos giratorios para hacer
                    eso, y las SSD usan tecnología flash NAND. La diferencia resulta en mejor
                    velocidad, eficiencia, y durabilidad porque las pequeñas partes mecánicas y
                    discos de rotación son mucho más susceptibles de sufrir daños físicos que la
                    tecnología NAND. Por esta diferencia, sus datos son de más rápido acceso y
                    preservados por más tiempo en las SSD. <o:p></o:p></span></p>

            <p style='text-align:justify;line-height:115%;background:white'><span
                    style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'><o:p>&nbsp;</o:p></span></p>

            <p class=MsoListParagraph style='text-align:justify;text-indent:-18.0pt;
               line-height:115%;mso-list:l0 level1 lfo1'><![if !supportLists]><span
                    style='font-size:20.0pt;line-height:115%;font-family:Symbol;mso-fareast-font-family:
                    Symbol;mso-bidi-font-family:Symbol;mso-bidi-font-weight:bold'><span
                        style='mso-list:Ignore'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </span></span></span><![endif]><b><span style='font-size:20.0pt;line-height:
                                                        115%;font-family:"Work Sans"'>Gabinete, ventiladores y fuente de alimentación<o:p></o:p></span></b></p>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><!--[if gte vml 1]><v:shape
             id="Imagen_x0020_12" o:spid="_x0000_s1028" type="#_x0000_t75" alt="Icono&#10;&#10;Descripción generada automáticamente"
             style='position:absolute;left:0;text-align:left;margin-left:167.8pt;
             margin-top:2320.25pt;width:219pt;height:219pt;z-index:251663360;visibility:visible;
             mso-wrap-style:square;mso-width-percent:0;mso-height-percent:0;
             mso-wrap-distance-left:9pt;mso-wrap-distance-top:0;mso-wrap-distance-right:9pt;
             mso-wrap-distance-bottom:0;mso-position-horizontal:right;
             mso-position-horizontal-relative:text;mso-position-vertical:absolute;
             mso-position-vertical-relative:text;mso-width-percent:0;mso-height-percent:0;
             mso-width-relative:margin;mso-height-relative:margin'>
             <v:imagedata src="info_armar_archivos/image011.png" o:title="Icono&#10;&#10;Descripción generada automáticamente"/>
             <w:wrap type="square"/>
            </v:shape><![endif]--><![if !vml]><img width=292 height=292
                                                       src="imgs/info/info_armar6.png" align=right hspace=12
                                                       alt="Icono&#10;&#10;Descripción generada automáticamente" v:shapes="Imagen_x0020_12"><![endif]><span
                                                       style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'>Según el tipo
                    de PC que arme, también necesitará ajustar lo que está buscando con una carcasa
                    y un suministro de energía. Si está creando un caballito de batalla de alto
                    desempeño, necesitará un suministro de alimentación fuerte para ejecutar todo y
                    una carcasa con un óptimo flujo de aire interno y ventiladores para eliminar el
                    aire caliente que potencialmente podría dañar el sistema. Las cintillas de
                    plástico son una gran ayuda para manejar todos los cables que están dentro de
                    su equipo y al consolidar los cables ayuda a mejorar el flujo de aire.&nbsp;<o:p></o:p></span></p>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><span
                    style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'><o:p>&nbsp;</o:p></span></p>

            <p class=MsoNormal style='line-height:115%'><b><span style='font-size:20.0pt;
                                                                 line-height:115%;font-family:"Work Sans"'>Ensamblaje de una computadora ajustable
                        a su presupuesto<o:p></o:p></span></b></p>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><span
                    style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'>La cantidad de
                    dinero que gasta en las partes de una computadora puede variar. Si está armando
                    una PC para ahorrar dinero, probablemente querrá, al menos, igualar el
                    desempeño de una computadora de escritorio o una computadora portátil comprada
                    en una tienda para gastar menos. Si está yendo por el mejor desempeño posible
                    en todos los componentes de su PC, espere pagar más. Los procesadores más
                    rápidos cuestan más que aquellos más lentos y la memoria y las SSD con más GB
                    cuestan más que aquellos con menos GB.<o:p></o:p></span></p>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><span
                    style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'>Debido a que
                    la memoria y el almacenamiento representan una gran parte del costo dentro de
                    una nueva computadora, crear su propia PC le da la oportunidad de ahorrar en
                    estos componentes al agregar los suyos. Si bien los costos de RAM y SSD
                    aumentan con la cantidad de GB que ofrecen, son menos costosos que comprar
                    componentes instalados previamente (y a menudo inadecuados) que a lo mejor
                    necesitará actualizar rápidamente.<o:p></o:p></span></p>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><span
                    style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'><o:p>&nbsp;</o:p></span></p>

            <p class=MsoNormal style='line-height:115%'><b><span style='font-size:20.0pt;
                                                                 line-height:115%;font-family:"Work Sans";color:windowtext'>Cómo ensamblar una
                        PC<o:p></o:p></span></b></p>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><span
                    style='font-size:20.0pt;line-height:115%;font-family:"Work Sans";color:windowtext'>Cuando
                    junte todas las partes, asegúrese de que tiene una habitación disponible para
                    mantener su creación organizada. Sea consciente de la electricidad estática
                    cuando construya. Es una de las pocas maneras en que el hardware se puede dañar,
                    pero es fácil de evitar. Conéctese a tierra al tocar una superficie de metal
                    sin pintar o&nbsp;<a
                        href="https://www.crucial.mx/storeToken/languageToken/accessories/blwriststrap"><span
                            style='color:windowtext;text-decoration:none;text-underline:none'>usar un
                            brazalete de descarga electrostática (ESD)</span></a>&nbsp;para proteger a los
                    componentes de su sistema de la electricidad estática que está naturalmente
                    presente en el cuerpo. También es útil mantener una lata de aire comprimido
                    para eliminar cualquier polvo o los residuos finos lejos de la interfaz cuando
                    instale el procesador, la memoria y la SSD.&nbsp;<o:p></o:p></span></p>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><span
                    style='font-size:20.0pt;line-height:115%;font-family:"Work Sans";color:windowtext'><o:p>&nbsp;</o:p></span></p>

            <h2 style='line-height:115%;background:white'><span style='font-size:20.0pt;
                                                                line-height:115%;font-family:"Work Sans";color:black;mso-color-alt:windowtext'>Instalando
                    el hardware</span><span style='font-size:20.0pt;line-height:115%;font-family:
                                        "Work Sans"'><o:p></o:p></span></h2>

            <p style='text-align:justify;line-height:115%;background:white;box-sizing: inherit;
               margin:1.5rem;font-size:inherit;text-rendering: optimizelegibility'><span
                    style='font-size:20.0pt;line-height:115%;font-family:"Work Sans";color:black;
                    mso-color-alt:windowtext'>Para obtener instrucciones de instalación del
                    procesador, suministro de alimentación y colocar la <span class=SpellE>motherboard</span>
                    en la carcasa, consulte cada componente en el manual del propietario. El acto
                    de instalar o juntar las partes no es complicado, pero existe el potencial de
                    que ocurran errores. Esa es la razón por la cual es mejor segur las
                    instrucciones detalladas paso a paso para cada parte específica.</span><span
                    style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'><o:p></o:p></span></p>

            <p style='text-align:justify;line-height:115%;background:white'><span
                    style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'><o:p>&nbsp;</o:p></span></p>

            <p style='text-align:justify;line-height:115%;background:white'><!--[if gte vml 1]><v:shape
             id="Imagen_x0020_13" o:spid="_x0000_s1027" type="#_x0000_t75" alt="Imagen que contiene Icono&#10;&#10;Descripción generada automáticamente"
             style='position:absolute;left:0;text-align:left;margin-left:142.3pt;
             margin-top:3637pt;width:193.5pt;height:193.5pt;z-index:251664384;visibility:visible;
             mso-wrap-style:square;mso-width-percent:0;mso-height-percent:0;
             mso-wrap-distance-left:9pt;mso-wrap-distance-top:0;mso-wrap-distance-right:9pt;
             mso-wrap-distance-bottom:0;mso-position-horizontal:right;
             mso-position-horizontal-relative:text;mso-position-vertical:absolute;
             mso-position-vertical-relative:text;mso-width-percent:0;mso-height-percent:0;
             mso-width-relative:margin;mso-height-relative:margin'>
             <v:imagedata src="info_armar_archivos/image013.png" o:title="Imagen que contiene Icono&#10;&#10;Descripción generada automáticamente"/>
             <w:wrap type="square"/>
            </v:shape><![endif]--><![if !vml]><img width=258 height=258
                                                       src="imgs/info/info_armar6.png" align=right hspace=12
                                                       alt="Imagen que contiene Icono&#10;&#10;Descripción generada automáticamente"
                                                       v:shapes="Imagen_x0020_13"><![endif]><b><span style='font-size:20.0pt;
                                                              line-height:115%;font-family:"Work Sans";color:black;mso-color-alt:windowtext'>Cómo
                        instalar la memoria RAM</span></b><b><span style='font-size:20.0pt;line-height:
                                                           115%;font-family:"Work Sans"'><o:p></o:p></span></b></p>

            <p style='text-align:justify;line-height:115%;background:white'><span
                    style='font-size:20.0pt;line-height:115%;font-family:"Work Sans";color:black;
                    mso-color-alt:windowtext'>La RAM es el hardware más fácil de instalar cuando
                    crea una PC. Ubique las ranuras de la memoria en la <span class=SpellE>motherboard</span>.
                    Sostenga los módulos de la memoria por los lados para evitar tocar los chips y
                    los pines dorados. Alinee las muescas en el módulo con el borde en la ranura.
                    Luego, presione firmemente el módulo hasta que haga clic. Como está
                    presionando, tenga en cuenta que lleva 30&nbsp;libras de presión en instalar
                    completamente un módulo.</span><span style='font-size:20.0pt;line-height:115%;
                                                     font-family:"Work Sans"'><o:p></o:p></span></p>

            <p style='text-align:justify;line-height:115%;background:white'><span
                    style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'><o:p>&nbsp;</o:p></span></p>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><b><span
                        style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'>Instalación
                        de disco duro HDD o SSD<o:p></o:p></span></b></p>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><!--[if gte vml 1]><v:shape
             id="Imagen_x0020_14" o:spid="_x0000_s1026" type="#_x0000_t75" alt="Icono&#10;&#10;Descripción generada automáticamente"
             style='position:absolute;left:0;text-align:left;margin-left:131.8pt;
             margin-top:3887.25pt;width:183pt;height:183pt;z-index:251665408;visibility:visible;
             mso-wrap-style:square;mso-width-percent:0;mso-height-percent:0;
             mso-wrap-distance-left:9pt;mso-wrap-distance-top:0;mso-wrap-distance-right:9pt;
             mso-wrap-distance-bottom:0;mso-position-horizontal:right;
             mso-position-horizontal-relative:text;mso-position-vertical:absolute;
             mso-position-vertical-relative:text;mso-width-percent:0;mso-height-percent:0;
             mso-width-relative:margin;mso-height-relative:margin'>
             <v:imagedata src="info_armar_archivos/image015.png" o:title="Icono&#10;&#10;Descripción generada automáticamente"/>
             <w:wrap type="square"/>
            </v:shape><![endif]--><![if !vml]><img width=244 height=244
                                                       src="imgs/info/info_armar7.png" align=right hspace=12
                                                       alt="Icono&#10;&#10;Descripción generada automáticamente" v:shapes="Imagen_x0020_14"><![endif]><span
                                                       style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'>Según el
                    factor de forma de la SSD que compró (2.5&nbsp;in, <span class=SpellE>mSATA</span>
                    o M.2), la instalación requiere adjuntar la unidad a la interfaz de
                    almacenamiento, luego adaptarla a la bahía de la unidad (si es una SSD de
                    2.5&nbsp;in). Si está buscando la máxima capacidad posible y tiene un
                    presupuesto extremadamente ajustado, una unidad de disco duro puede ser una
                    opción atractiva. Para obtener instrucciones sobre la instalación de su unidad
                    de disco duro, consulte el manual del propietario.<o:p></o:p></span></p>

            <p style='text-align:justify;line-height:115%;background:white'><b><span
                        style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'><o:p>&nbsp;</o:p></span></b></p>

            <p class=MsoNormal style='line-height:115%'><b><span style='font-size:20.0pt;
                                                                 line-height:115%;font-family:"Work Sans"'>¡Llegó la hora de encender su nueva
                        computadora!<o:p></o:p></span></b></p>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><span
                    style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'>Una vez que
                    su sistema está ensamblado, es hora del gran momento: ¡apriete el botón de
                    encendido! Asegúrese de que su monitor y teclado estén conectados a la PC y, si
                    todo funcionó correctamente, aparecerá una pantalla donde puede ingresar el
                    sistema BIOS. Si tiene un disco o una unidad de flash con un SO, póngalo en la
                    unidad correspondiente, arranque y puede instalar el SO. En este punto, el
                    ensamblaje está completo. ¡Felicitaciones! Ha creado ahora su propia PC. ¡Así
                    se hace! <o:p></o:p></span></p>

            <p style='text-align:justify;line-height:115%;background:white'><b><span
                        style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'><o:p>&nbsp;</o:p></span></b></p>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><span
                    style='font-size:20.0pt;line-height:115%;font-family:"Work Sans";color:windowtext'><o:p>&nbsp;</o:p></span></p>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><span
                    style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'><o:p>&nbsp;</o:p></span></p>

            <p style='text-align:justify;line-height:115%;background:white'><span
                    style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'><o:p>&nbsp;</o:p></span></p>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><span
                    style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'><o:p>&nbsp;</o:p></span></p>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><span
                    style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'><o:p>&nbsp;</o:p></span></p>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><span
                    style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'><o:p>&nbsp;</o:p></span></p>

            <p style='line-height:115%;background:white'><span style='font-size:20.0pt;
                                                               line-height:115%;font-family:"Work Sans"'><o:p>&nbsp;</o:p></span></p>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><span
                    style='font-size:20.0pt;line-height:115%;font-family:"Work Sans";color:windowtext'><o:p>&nbsp;</o:p></span></p>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><span
                    style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'><o:p>&nbsp;</o:p></span></p>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><span
                    style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'><o:p>&nbsp;</o:p></span></p>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><span
                    style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'><o:p>&nbsp;</o:p></span></p>

            <p class=MsoNormal style='line-height:115%'><span style='font-size:20.0pt;
                                                              line-height:115%;font-family:"Work Sans"'><o:p>&nbsp;</o:p></span></p>

            <p class=MsoNormal style='line-height:115%'><span style='font-size:20.0pt;
                                                              line-height:115%;font-family:"Work Sans"'><o:p>&nbsp;</o:p></span></p>

        </div>


    </div>

</html>
