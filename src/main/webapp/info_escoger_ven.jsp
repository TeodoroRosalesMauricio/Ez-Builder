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
    </body>

    <!-- Div de banner principal-->
    <div class="banner" id="banner_main">

        <img src="iconos\info_1.png" alt="Información de apoyo" />            

        <div class="text_banner" id="txt_main_escoger">

            <label class="tit_banner" id="tit_2">Cómo escoger correctamente una laptop</label><br><br>

        </div>
    </div>

    <div class="info_escoger">


        <!--[if !mso]>
        <style>
        v\:* {behavior:url(#default#VML);}
        o\:* {behavior:url(#default#VML);}
        w\:* {behavior:url(#default#VML);}
        .shape {behavior:url(#default#VML);}
        </style>
        <![endif]--><!--[if gte mso 9]><xml>
         <o:DocumentProperties>
          <o:Author>Omar Lorenzo Pacheco</o:Author>
          <o:Template>Normal</o:Template>
          <o:LastAuthor>Omar Lorenzo Pacheco</o:LastAuthor>
          <o:Revision>1</o:Revision>
          <o:TotalTime>23</o:TotalTime>
          <o:Created>2022-04-08T08:01:00Z</o:Created>
          <o:LastSaved>2022-04-08T08:24:00Z</o:LastSaved>
          <o:Pages>1</o:Pages>
          <o:Words>660</o:Words>
          <o:Characters>3630</o:Characters>
          <o:Lines>30</o:Lines>
          <o:Paragraphs>8</o:Paragraphs>
          <o:CharactersWithSpaces>4282</o:CharactersWithSpaces>
          <o:Version>16.00</o:Version>
         </o:DocumentProperties>
         <o:OfficeDocumentSettings>
          <o:AllowPNG/>
         </o:OfficeDocumentSettings>
        </xml><![endif]-->
        <link rel=themeData href="info_escoger_archivos/themedata.thmx">
        <link rel=colorSchemeMapping href="info_escoger_archivos/colorschememapping.xml">
        <!--[if gte mso 9]><xml>
         <w:WordDocument>
          <w:SpellingState>Clean</w:SpellingState>
          <w:GrammarState>Clean</w:GrammarState>
          <w:TrackMoves>false</w:TrackMoves>
          <w:TrackFormatting/>
          <w:HyphenationZone>21</w:HyphenationZone>
          <w:PunctuationKerning/>
          <w:ValidateAgainstSchemas/>
          <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>
          <w:IgnoreMixedContent>false</w:IgnoreMixedContent>
          <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>
          <w:DoNotPromoteQF/>
          <w:LidThemeOther>ES-MX</w:LidThemeOther>
          <w:LidThemeAsian>X-NONE</w:LidThemeAsian>
          <w:LidThemeComplexScript>X-NONE</w:LidThemeComplexScript>
          <w:Compatibility>
           <w:BreakWrappedTables/>
           <w:SnapToGridInCell/>
           <w:WrapTextWithPunct/>
           <w:UseAsianBreakRules/>
           <w:DontGrowAutofit/>
           <w:SplitPgBreakAndParaMark/>
           <w:EnableOpenTypeKerning/>
           <w:DontFlipMirrorIndents/>
           <w:OverrideTableStyleHps/>
          </w:Compatibility>
          <m:mathPr>
           <m:mathFont m:val="Cambria Math"/>
           <m:brkBin m:val="before"/>
           <m:brkBinSub m:val="&#45;-"/>
           <m:smallFrac m:val="off"/>
           <m:dispDef/>
           <m:lMargin m:val="0"/>
           <m:rMargin m:val="0"/>
           <m:defJc m:val="centerGroup"/>
           <m:wrapIndent m:val="1440"/>
           <m:intLim m:val="subSup"/>
           <m:naryLim m:val="undOvr"/>
          </m:mathPr></w:WordDocument>
        </xml><![endif]--><!--[if gte mso 9]><xml>
         <w:LatentStyles DefLockedState="false" DefUnhideWhenUsed="false"
          DefSemiHidden="false" DefQFormat="false" DefPriority="99"
          LatentStyleCount="376">
          <w:LsdException Locked="false" Priority="0" QFormat="true" Name="Normal"/>
          <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 1"/>
          <w:LsdException Locked="false" Priority="9" SemiHidden="true"
           UnhideWhenUsed="true" QFormat="true" Name="heading 2"/>
          <w:LsdException Locked="false" Priority="9" SemiHidden="true"
           UnhideWhenUsed="true" QFormat="true" Name="heading 3"/>
          <w:LsdException Locked="false" Priority="9" SemiHidden="true"
           UnhideWhenUsed="true" QFormat="true" Name="heading 4"/>
          <w:LsdException Locked="false" Priority="9" SemiHidden="true"
           UnhideWhenUsed="true" QFormat="true" Name="heading 5"/>
          <w:LsdException Locked="false" Priority="9" SemiHidden="true"
           UnhideWhenUsed="true" QFormat="true" Name="heading 6"/>
          <w:LsdException Locked="false" Priority="9" SemiHidden="true"
           UnhideWhenUsed="true" QFormat="true" Name="heading 7"/>
          <w:LsdException Locked="false" Priority="9" SemiHidden="true"
           UnhideWhenUsed="true" QFormat="true" Name="heading 8"/>
          <w:LsdException Locked="false" Priority="9" SemiHidden="true"
           UnhideWhenUsed="true" QFormat="true" Name="heading 9"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="index 1"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="index 2"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="index 3"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="index 4"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="index 5"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="index 6"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="index 7"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="index 8"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="index 9"/>
          <w:LsdException Locked="false" Priority="39" SemiHidden="true"
           UnhideWhenUsed="true" Name="toc 1"/>
          <w:LsdException Locked="false" Priority="39" SemiHidden="true"
           UnhideWhenUsed="true" Name="toc 2"/>
          <w:LsdException Locked="false" Priority="39" SemiHidden="true"
           UnhideWhenUsed="true" Name="toc 3"/>
          <w:LsdException Locked="false" Priority="39" SemiHidden="true"
           UnhideWhenUsed="true" Name="toc 4"/>
          <w:LsdException Locked="false" Priority="39" SemiHidden="true"
           UnhideWhenUsed="true" Name="toc 5"/>
          <w:LsdException Locked="false" Priority="39" SemiHidden="true"
           UnhideWhenUsed="true" Name="toc 6"/>
          <w:LsdException Locked="false" Priority="39" SemiHidden="true"
           UnhideWhenUsed="true" Name="toc 7"/>
          <w:LsdException Locked="false" Priority="39" SemiHidden="true"
           UnhideWhenUsed="true" Name="toc 8"/>
          <w:LsdException Locked="false" Priority="39" SemiHidden="true"
           UnhideWhenUsed="true" Name="toc 9"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="Normal Indent"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="footnote text"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="annotation text"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="header"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="footer"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="index heading"/>
          <w:LsdException Locked="false" Priority="35" SemiHidden="true"
           UnhideWhenUsed="true" QFormat="true" Name="caption"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="table of figures"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="envelope address"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="envelope return"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="footnote reference"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="annotation reference"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="line number"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="page number"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="endnote reference"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="endnote text"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="table of authorities"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="macro"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="toa heading"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="List"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="List Bullet"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="List Number"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="List 2"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="List 3"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="List 4"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="List 5"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="List Bullet 2"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="List Bullet 3"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="List Bullet 4"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="List Bullet 5"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="List Number 2"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="List Number 3"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="List Number 4"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="List Number 5"/>
          <w:LsdException Locked="false" Priority="10" QFormat="true" Name="Title"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="Closing"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="Signature"/>
          <w:LsdException Locked="false" Priority="1" SemiHidden="true"
           UnhideWhenUsed="true" Name="Default Paragraph Font"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="Body Text"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="Body Text Indent"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="List Continue"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="List Continue 2"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="List Continue 3"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="List Continue 4"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="List Continue 5"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="Message Header"/>
          <w:LsdException Locked="false" Priority="11" QFormat="true" Name="Subtitle"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="Salutation"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="Date"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="Body Text First Indent"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="Body Text First Indent 2"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="Note Heading"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="Body Text 2"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="Body Text 3"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="Body Text Indent 2"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="Body Text Indent 3"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="Block Text"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="Hyperlink"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="FollowedHyperlink"/>
          <w:LsdException Locked="false" Priority="22" QFormat="true" Name="Strong"/>
          <w:LsdException Locked="false" Priority="20" QFormat="true" Name="Emphasis"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="Document Map"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="Plain Text"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="E-mail Signature"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="HTML Top of Form"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="HTML Bottom of Form"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="Normal (Web)"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="HTML Acronym"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="HTML Address"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="HTML Cite"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="HTML Code"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="HTML Definition"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="HTML Keyboard"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="HTML Preformatted"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="HTML Sample"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="HTML Typewriter"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="HTML Variable"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="Normal Table"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="annotation subject"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="No List"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="Outline List 1"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="Outline List 2"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="Outline List 3"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="Table Simple 1"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="Table Simple 2"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="Table Simple 3"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="Table Classic 1"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="Table Classic 2"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="Table Classic 3"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="Table Classic 4"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="Table Colorful 1"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="Table Colorful 2"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="Table Colorful 3"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="Table Columns 1"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="Table Columns 2"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="Table Columns 3"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="Table Columns 4"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="Table Columns 5"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="Table Grid 1"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="Table Grid 2"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="Table Grid 3"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="Table Grid 4"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="Table Grid 5"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="Table Grid 6"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="Table Grid 7"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="Table Grid 8"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="Table List 1"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="Table List 2"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="Table List 3"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="Table List 4"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="Table List 5"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="Table List 6"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="Table List 7"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="Table List 8"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="Table 3D effects 1"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="Table 3D effects 2"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="Table 3D effects 3"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="Table Contemporary"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="Table Elegant"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="Table Professional"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="Table Subtle 1"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="Table Subtle 2"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="Table Web 1"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="Table Web 2"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="Table Web 3"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="Balloon Text"/>
          <w:LsdException Locked="false" Priority="39" Name="Table Grid"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="Table Theme"/>
          <w:LsdException Locked="false" SemiHidden="true" Name="Placeholder Text"/>
          <w:LsdException Locked="false" Priority="1" QFormat="true" Name="No Spacing"/>
          <w:LsdException Locked="false" Priority="60" Name="Light Shading"/>
          <w:LsdException Locked="false" Priority="61" Name="Light List"/>
          <w:LsdException Locked="false" Priority="62" Name="Light Grid"/>
          <w:LsdException Locked="false" Priority="63" Name="Medium Shading 1"/>
          <w:LsdException Locked="false" Priority="64" Name="Medium Shading 2"/>
          <w:LsdException Locked="false" Priority="65" Name="Medium List 1"/>
          <w:LsdException Locked="false" Priority="66" Name="Medium List 2"/>
          <w:LsdException Locked="false" Priority="67" Name="Medium Grid 1"/>
          <w:LsdException Locked="false" Priority="68" Name="Medium Grid 2"/>
          <w:LsdException Locked="false" Priority="69" Name="Medium Grid 3"/>
          <w:LsdException Locked="false" Priority="70" Name="Dark List"/>
          <w:LsdException Locked="false" Priority="71" Name="Colorful Shading"/>
          <w:LsdException Locked="false" Priority="72" Name="Colorful List"/>
          <w:LsdException Locked="false" Priority="73" Name="Colorful Grid"/>
          <w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 1"/>
          <w:LsdException Locked="false" Priority="61" Name="Light List Accent 1"/>
          <w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 1"/>
          <w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 1"/>
          <w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 1"/>
          <w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 1"/>
          <w:LsdException Locked="false" SemiHidden="true" Name="Revision"/>
          <w:LsdException Locked="false" Priority="34" QFormat="true"
           Name="List Paragraph"/>
          <w:LsdException Locked="false" Priority="29" QFormat="true" Name="Quote"/>
          <w:LsdException Locked="false" Priority="30" QFormat="true"
           Name="Intense Quote"/>
          <w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 1"/>
          <w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 1"/>
          <w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 1"/>
          <w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 1"/>
          <w:LsdException Locked="false" Priority="70" Name="Dark List Accent 1"/>
          <w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 1"/>
          <w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 1"/>
          <w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 1"/>
          <w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 2"/>
          <w:LsdException Locked="false" Priority="61" Name="Light List Accent 2"/>
          <w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 2"/>
          <w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 2"/>
          <w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 2"/>
          <w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 2"/>
          <w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 2"/>
          <w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 2"/>
          <w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 2"/>
          <w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 2"/>
          <w:LsdException Locked="false" Priority="70" Name="Dark List Accent 2"/>
          <w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 2"/>
          <w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 2"/>
          <w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 2"/>
          <w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 3"/>
          <w:LsdException Locked="false" Priority="61" Name="Light List Accent 3"/>
          <w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 3"/>
          <w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 3"/>
          <w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 3"/>
          <w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 3"/>
          <w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 3"/>
          <w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 3"/>
          <w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 3"/>
          <w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 3"/>
          <w:LsdException Locked="false" Priority="70" Name="Dark List Accent 3"/>
          <w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 3"/>
          <w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 3"/>
          <w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 3"/>
          <w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 4"/>
          <w:LsdException Locked="false" Priority="61" Name="Light List Accent 4"/>
          <w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 4"/>
          <w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 4"/>
          <w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 4"/>
          <w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 4"/>
          <w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 4"/>
          <w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 4"/>
          <w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 4"/>
          <w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 4"/>
          <w:LsdException Locked="false" Priority="70" Name="Dark List Accent 4"/>
          <w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 4"/>
          <w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 4"/>
          <w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 4"/>
          <w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 5"/>
          <w:LsdException Locked="false" Priority="61" Name="Light List Accent 5"/>
          <w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 5"/>
          <w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 5"/>
          <w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 5"/>
          <w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 5"/>
          <w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 5"/>
          <w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 5"/>
          <w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 5"/>
          <w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 5"/>
          <w:LsdException Locked="false" Priority="70" Name="Dark List Accent 5"/>
          <w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 5"/>
          <w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 5"/>
          <w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 5"/>
          <w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 6"/>
          <w:LsdException Locked="false" Priority="61" Name="Light List Accent 6"/>
          <w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 6"/>
          <w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 6"/>
          <w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 6"/>
          <w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 6"/>
          <w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 6"/>
          <w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 6"/>
          <w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 6"/>
          <w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 6"/>
          <w:LsdException Locked="false" Priority="70" Name="Dark List Accent 6"/>
          <w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 6"/>
          <w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 6"/>
          <w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 6"/>
          <w:LsdException Locked="false" Priority="19" QFormat="true"
           Name="Subtle Emphasis"/>
          <w:LsdException Locked="false" Priority="21" QFormat="true"
           Name="Intense Emphasis"/>
          <w:LsdException Locked="false" Priority="31" QFormat="true"
           Name="Subtle Reference"/>
          <w:LsdException Locked="false" Priority="32" QFormat="true"
           Name="Intense Reference"/>
          <w:LsdException Locked="false" Priority="33" QFormat="true" Name="Book Title"/>
          <w:LsdException Locked="false" Priority="37" SemiHidden="true"
           UnhideWhenUsed="true" Name="Bibliography"/>
          <w:LsdException Locked="false" Priority="39" SemiHidden="true"
           UnhideWhenUsed="true" QFormat="true" Name="TOC Heading"/>
          <w:LsdException Locked="false" Priority="41" Name="Plain Table 1"/>
          <w:LsdException Locked="false" Priority="42" Name="Plain Table 2"/>
          <w:LsdException Locked="false" Priority="43" Name="Plain Table 3"/>
          <w:LsdException Locked="false" Priority="44" Name="Plain Table 4"/>
          <w:LsdException Locked="false" Priority="45" Name="Plain Table 5"/>
          <w:LsdException Locked="false" Priority="40" Name="Grid Table Light"/>
          <w:LsdException Locked="false" Priority="46" Name="Grid Table 1 Light"/>
          <w:LsdException Locked="false" Priority="47" Name="Grid Table 2"/>
          <w:LsdException Locked="false" Priority="48" Name="Grid Table 3"/>
          <w:LsdException Locked="false" Priority="49" Name="Grid Table 4"/>
          <w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark"/>
          <w:LsdException Locked="false" Priority="51" Name="Grid Table 6 Colorful"/>
          <w:LsdException Locked="false" Priority="52" Name="Grid Table 7 Colorful"/>
          <w:LsdException Locked="false" Priority="46"
           Name="Grid Table 1 Light Accent 1"/>
          <w:LsdException Locked="false" Priority="47" Name="Grid Table 2 Accent 1"/>
          <w:LsdException Locked="false" Priority="48" Name="Grid Table 3 Accent 1"/>
          <w:LsdException Locked="false" Priority="49" Name="Grid Table 4 Accent 1"/>
          <w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark Accent 1"/>
          <w:LsdException Locked="false" Priority="51"
           Name="Grid Table 6 Colorful Accent 1"/>
          <w:LsdException Locked="false" Priority="52"
           Name="Grid Table 7 Colorful Accent 1"/>
          <w:LsdException Locked="false" Priority="46"
           Name="Grid Table 1 Light Accent 2"/>
          <w:LsdException Locked="false" Priority="47" Name="Grid Table 2 Accent 2"/>
          <w:LsdException Locked="false" Priority="48" Name="Grid Table 3 Accent 2"/>
          <w:LsdException Locked="false" Priority="49" Name="Grid Table 4 Accent 2"/>
          <w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark Accent 2"/>
          <w:LsdException Locked="false" Priority="51"
           Name="Grid Table 6 Colorful Accent 2"/>
          <w:LsdException Locked="false" Priority="52"
           Name="Grid Table 7 Colorful Accent 2"/>
          <w:LsdException Locked="false" Priority="46"
           Name="Grid Table 1 Light Accent 3"/>
          <w:LsdException Locked="false" Priority="47" Name="Grid Table 2 Accent 3"/>
          <w:LsdException Locked="false" Priority="48" Name="Grid Table 3 Accent 3"/>
          <w:LsdException Locked="false" Priority="49" Name="Grid Table 4 Accent 3"/>
          <w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark Accent 3"/>
          <w:LsdException Locked="false" Priority="51"
           Name="Grid Table 6 Colorful Accent 3"/>
          <w:LsdException Locked="false" Priority="52"
           Name="Grid Table 7 Colorful Accent 3"/>
          <w:LsdException Locked="false" Priority="46"
           Name="Grid Table 1 Light Accent 4"/>
          <w:LsdException Locked="false" Priority="47" Name="Grid Table 2 Accent 4"/>
          <w:LsdException Locked="false" Priority="48" Name="Grid Table 3 Accent 4"/>
          <w:LsdException Locked="false" Priority="49" Name="Grid Table 4 Accent 4"/>
          <w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark Accent 4"/>
          <w:LsdException Locked="false" Priority="51"
           Name="Grid Table 6 Colorful Accent 4"/>
          <w:LsdException Locked="false" Priority="52"
           Name="Grid Table 7 Colorful Accent 4"/>
          <w:LsdException Locked="false" Priority="46"
           Name="Grid Table 1 Light Accent 5"/>
          <w:LsdException Locked="false" Priority="47" Name="Grid Table 2 Accent 5"/>
          <w:LsdException Locked="false" Priority="48" Name="Grid Table 3 Accent 5"/>
          <w:LsdException Locked="false" Priority="49" Name="Grid Table 4 Accent 5"/>
          <w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark Accent 5"/>
          <w:LsdException Locked="false" Priority="51"
           Name="Grid Table 6 Colorful Accent 5"/>
          <w:LsdException Locked="false" Priority="52"
           Name="Grid Table 7 Colorful Accent 5"/>
          <w:LsdException Locked="false" Priority="46"
           Name="Grid Table 1 Light Accent 6"/>
          <w:LsdException Locked="false" Priority="47" Name="Grid Table 2 Accent 6"/>
          <w:LsdException Locked="false" Priority="48" Name="Grid Table 3 Accent 6"/>
          <w:LsdException Locked="false" Priority="49" Name="Grid Table 4 Accent 6"/>
          <w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark Accent 6"/>
          <w:LsdException Locked="false" Priority="51"
           Name="Grid Table 6 Colorful Accent 6"/>
          <w:LsdException Locked="false" Priority="52"
           Name="Grid Table 7 Colorful Accent 6"/>
          <w:LsdException Locked="false" Priority="46" Name="List Table 1 Light"/>
          <w:LsdException Locked="false" Priority="47" Name="List Table 2"/>
          <w:LsdException Locked="false" Priority="48" Name="List Table 3"/>
          <w:LsdException Locked="false" Priority="49" Name="List Table 4"/>
          <w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark"/>
          <w:LsdException Locked="false" Priority="51" Name="List Table 6 Colorful"/>
          <w:LsdException Locked="false" Priority="52" Name="List Table 7 Colorful"/>
          <w:LsdException Locked="false" Priority="46"
           Name="List Table 1 Light Accent 1"/>
          <w:LsdException Locked="false" Priority="47" Name="List Table 2 Accent 1"/>
          <w:LsdException Locked="false" Priority="48" Name="List Table 3 Accent 1"/>
          <w:LsdException Locked="false" Priority="49" Name="List Table 4 Accent 1"/>
          <w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark Accent 1"/>
          <w:LsdException Locked="false" Priority="51"
           Name="List Table 6 Colorful Accent 1"/>
          <w:LsdException Locked="false" Priority="52"
           Name="List Table 7 Colorful Accent 1"/>
          <w:LsdException Locked="false" Priority="46"
           Name="List Table 1 Light Accent 2"/>
          <w:LsdException Locked="false" Priority="47" Name="List Table 2 Accent 2"/>
          <w:LsdException Locked="false" Priority="48" Name="List Table 3 Accent 2"/>
          <w:LsdException Locked="false" Priority="49" Name="List Table 4 Accent 2"/>
          <w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark Accent 2"/>
          <w:LsdException Locked="false" Priority="51"
           Name="List Table 6 Colorful Accent 2"/>
          <w:LsdException Locked="false" Priority="52"
           Name="List Table 7 Colorful Accent 2"/>
          <w:LsdException Locked="false" Priority="46"
           Name="List Table 1 Light Accent 3"/>
          <w:LsdException Locked="false" Priority="47" Name="List Table 2 Accent 3"/>
          <w:LsdException Locked="false" Priority="48" Name="List Table 3 Accent 3"/>
          <w:LsdException Locked="false" Priority="49" Name="List Table 4 Accent 3"/>
          <w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark Accent 3"/>
          <w:LsdException Locked="false" Priority="51"
           Name="List Table 6 Colorful Accent 3"/>
          <w:LsdException Locked="false" Priority="52"
           Name="List Table 7 Colorful Accent 3"/>
          <w:LsdException Locked="false" Priority="46"
           Name="List Table 1 Light Accent 4"/>
          <w:LsdException Locked="false" Priority="47" Name="List Table 2 Accent 4"/>
          <w:LsdException Locked="false" Priority="48" Name="List Table 3 Accent 4"/>
          <w:LsdException Locked="false" Priority="49" Name="List Table 4 Accent 4"/>
          <w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark Accent 4"/>
          <w:LsdException Locked="false" Priority="51"
           Name="List Table 6 Colorful Accent 4"/>
          <w:LsdException Locked="false" Priority="52"
           Name="List Table 7 Colorful Accent 4"/>
          <w:LsdException Locked="false" Priority="46"
           Name="List Table 1 Light Accent 5"/>
          <w:LsdException Locked="false" Priority="47" Name="List Table 2 Accent 5"/>
          <w:LsdException Locked="false" Priority="48" Name="List Table 3 Accent 5"/>
          <w:LsdException Locked="false" Priority="49" Name="List Table 4 Accent 5"/>
          <w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark Accent 5"/>
          <w:LsdException Locked="false" Priority="51"
           Name="List Table 6 Colorful Accent 5"/>
          <w:LsdException Locked="false" Priority="52"
           Name="List Table 7 Colorful Accent 5"/>
          <w:LsdException Locked="false" Priority="46"
           Name="List Table 1 Light Accent 6"/>
          <w:LsdException Locked="false" Priority="47" Name="List Table 2 Accent 6"/>
          <w:LsdException Locked="false" Priority="48" Name="List Table 3 Accent 6"/>
          <w:LsdException Locked="false" Priority="49" Name="List Table 4 Accent 6"/>
          <w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark Accent 6"/>
          <w:LsdException Locked="false" Priority="51"
           Name="List Table 6 Colorful Accent 6"/>
          <w:LsdException Locked="false" Priority="52"
           Name="List Table 7 Colorful Accent 6"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="Mention"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="Smart Hyperlink"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="Hashtag"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="Unresolved Mention"/>
          <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
           Name="Smart Link"/>
         </w:LatentStyles>
        </xml><![endif]-->
        <style>
            <!--
            /* Font Definitions */
            @font-face
            {
                font-family:Wingdings;
                panose-1:5 0 0 0 0 0 0 0 0 0;
                mso-font-charset:2;
                mso-generic-font-family:auto;
                mso-font-pitch:variable;
                mso-font-signature:0 268435456 0 0 -2147483648 0;
            }
            @font-face
            {
                font-family:"Cambria Math";
                panose-1:2 4 5 3 5 4 6 3 2 4;
                mso-font-charset:0;
                mso-generic-font-family:roman;
                mso-font-pitch:variable;
                mso-font-signature:-536869121 1107305727 33554432 0 415 0;
            }
            @font-face
            {
                font-family:Calibri;
                panose-1:2 15 5 2 2 2 4 3 2 4;
                mso-font-charset:0;
                mso-generic-font-family:swiss;
                mso-font-pitch:variable;
                mso-font-signature:-469750017 -1073732485 9 0 511 0;
            }
            @font-face
            {
                font-family:"Microsoft JhengHei UI";
                panose-1:2 11 6 4 3 5 4 4 2 4;
                mso-font-charset:136;
                mso-generic-font-family:swiss;
                mso-font-pitch:variable;
                mso-font-signature:679 684672000 22 0 1048585 0;
            }
            @font-face
            {
                font-family:"\@Microsoft JhengHei UI";
                mso-font-charset:136;
                mso-generic-font-family:swiss;
                mso-font-pitch:variable;
                mso-font-signature:679 684672000 22 0 1048585 0;
            }
            @font-face
            {
                font-family:"Work Sans";
                panose-1:0 0 0 0 0 0 0 0 0 0;
                mso-font-charset:0;
                mso-generic-font-family:auto;
                mso-font-pitch:variable;
                mso-font-signature:-1610612481 1342234747 0 0 403 0;
            }
            /* Style Definitions */
            p.MsoNormal, li.MsoNormal, div.MsoNormal
            {
                mso-style-unhide:no;
                mso-style-qformat:yes;
                mso-style-parent:"";
                margin-top:0cm;
                margin-right:0cm;
                margin-bottom:8.0pt;
                margin-left:0cm;
                line-height:107%;
                mso-pagination:widow-orphan;
                font-size:12.0pt;
                mso-bidi-font-size:11.0pt;
                font-family:"Microsoft JhengHei UI",sans-serif;
                mso-fareast-font-family:Calibri;
                mso-fareast-theme-font:minor-latin;
                mso-bidi-font-family:"Times New Roman";
                mso-bidi-theme-font:minor-bidi;
                color:black;
                mso-themecolor:text1;
                mso-fareast-language:EN-US;
            }
            h2
            {
                mso-style-noshow:yes;
                mso-style-priority:9;
                mso-style-qformat:yes;
                mso-style-link:"Título 2 Car";
                mso-style-next:Normal;
                margin-top:2.0pt;
                margin-right:0cm;
                margin-bottom:0cm;
                margin-left:0cm;
                line-height:107%;
                mso-pagination:widow-orphan lines-together;
                page-break-after:avoid;
                mso-outline-level:2;
                font-size:13.0pt;
                font-family:"Calibri Light",sans-serif;
                mso-ascii-font-family:"Calibri Light";
                mso-ascii-theme-font:major-latin;
                mso-fareast-font-family:"Times New Roman";
                mso-fareast-theme-font:major-fareast;
                mso-hansi-font-family:"Calibri Light";
                mso-hansi-theme-font:major-latin;
                mso-bidi-font-family:"Times New Roman";
                mso-bidi-theme-font:major-bidi;
                color:#2F5496;
                mso-themecolor:accent1;
                mso-themeshade:191;
                mso-fareast-language:EN-US;
                font-weight:normal;
            }
            h3
            {
                mso-style-priority:9;
                mso-style-unhide:no;
                mso-style-qformat:yes;
                mso-style-link:"Título 3 Car";
                mso-margin-top-alt:auto;
                margin-right:0cm;
                mso-margin-bottom-alt:auto;
                margin-left:0cm;
                mso-pagination:widow-orphan;
                mso-outline-level:3;
                font-size:13.5pt;
                font-family:"Times New Roman",serif;
                mso-fareast-font-family:"Times New Roman";
                font-weight:bold;
            }
            h5
            {
                mso-style-noshow:yes;
                mso-style-priority:9;
                mso-style-qformat:yes;
                mso-style-link:"Título 5 Car";
                mso-style-next:Normal;
                margin-top:2.0pt;
                margin-right:0cm;
                margin-bottom:0cm;
                margin-left:0cm;
                line-height:107%;
                mso-pagination:widow-orphan lines-together;
                page-break-after:avoid;
                mso-outline-level:5;
                font-size:12.0pt;
                mso-bidi-font-size:11.0pt;
                font-family:"Calibri Light",sans-serif;
                mso-ascii-font-family:"Calibri Light";
                mso-ascii-theme-font:major-latin;
                mso-fareast-font-family:"Times New Roman";
                mso-fareast-theme-font:major-fareast;
                mso-hansi-font-family:"Calibri Light";
                mso-hansi-theme-font:major-latin;
                mso-bidi-font-family:"Times New Roman";
                mso-bidi-theme-font:major-bidi;
                color:#2F5496;
                mso-themecolor:accent1;
                mso-themeshade:191;
                mso-fareast-language:EN-US;
                font-weight:normal;
            }
            p
            {
                mso-style-noshow:yes;
                mso-style-priority:99;
                mso-margin-top-alt:auto;
                margin-right:0cm;
                mso-margin-bottom-alt:auto;
                margin-left:0cm;
                mso-pagination:widow-orphan;
                font-size:12.0pt;
                font-family:"Times New Roman",serif;
                mso-fareast-font-family:"Times New Roman";
            }
            p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
            {
                mso-style-priority:34;
                mso-style-unhide:no;
                mso-style-qformat:yes;
                margin-top:0cm;
                margin-right:0cm;
                margin-bottom:8.0pt;
                margin-left:36.0pt;
                mso-add-space:auto;
                line-height:107%;
                mso-pagination:widow-orphan;
                font-size:12.0pt;
                mso-bidi-font-size:11.0pt;
                font-family:"Microsoft JhengHei UI",sans-serif;
                mso-fareast-font-family:Calibri;
                mso-fareast-theme-font:minor-latin;
                mso-bidi-font-family:"Times New Roman";
                mso-bidi-theme-font:minor-bidi;
                color:black;
                mso-themecolor:text1;
                mso-fareast-language:EN-US;
            }
            p.MsoListParagraphCxSpFirst, li.MsoListParagraphCxSpFirst, div.MsoListParagraphCxSpFirst
            {
                mso-style-priority:34;
                mso-style-unhide:no;
                mso-style-qformat:yes;
                mso-style-type:export-only;
                margin-top:0cm;
                margin-right:0cm;
                margin-bottom:0cm;
                margin-left:36.0pt;
                mso-add-space:auto;
                line-height:107%;
                mso-pagination:widow-orphan;
                font-size:12.0pt;
                mso-bidi-font-size:11.0pt;
                font-family:"Microsoft JhengHei UI",sans-serif;
                mso-fareast-font-family:Calibri;
                mso-fareast-theme-font:minor-latin;
                mso-bidi-font-family:"Times New Roman";
                mso-bidi-theme-font:minor-bidi;
                color:black;
                mso-themecolor:text1;
                mso-fareast-language:EN-US;
            }
            p.MsoListParagraphCxSpMiddle, li.MsoListParagraphCxSpMiddle, div.MsoListParagraphCxSpMiddle
            {
                mso-style-priority:34;
                mso-style-unhide:no;
                mso-style-qformat:yes;
                mso-style-type:export-only;
                margin-top:0cm;
                margin-right:0cm;
                margin-bottom:0cm;
                margin-left:36.0pt;
                mso-add-space:auto;
                line-height:107%;
                mso-pagination:widow-orphan;
                font-size:12.0pt;
                mso-bidi-font-size:11.0pt;
                font-family:"Microsoft JhengHei UI",sans-serif;
                mso-fareast-font-family:Calibri;
                mso-fareast-theme-font:minor-latin;
                mso-bidi-font-family:"Times New Roman";
                mso-bidi-theme-font:minor-bidi;
                color:black;
                mso-themecolor:text1;
                mso-fareast-language:EN-US;
            }
            p.MsoListParagraphCxSpLast, li.MsoListParagraphCxSpLast, div.MsoListParagraphCxSpLast
            {
                mso-style-priority:34;
                mso-style-unhide:no;
                mso-style-qformat:yes;
                mso-style-type:export-only;
                margin-top:0cm;
                margin-right:0cm;
                margin-bottom:8.0pt;
                margin-left:36.0pt;
                mso-add-space:auto;
                line-height:107%;
                mso-pagination:widow-orphan;
                font-size:12.0pt;
                mso-bidi-font-size:11.0pt;
                font-family:"Microsoft JhengHei UI",sans-serif;
                mso-fareast-font-family:Calibri;
                mso-fareast-theme-font:minor-latin;
                mso-bidi-font-family:"Times New Roman";
                mso-bidi-theme-font:minor-bidi;
                color:black;
                mso-themecolor:text1;
                mso-fareast-language:EN-US;
            }
            span.Ttulo3Car
            {
                mso-style-name:"Título 3 Car";
                mso-style-priority:9;
                mso-style-unhide:no;
                mso-style-locked:yes;
                mso-style-link:"Título 3";
                mso-ansi-font-size:13.5pt;
                mso-bidi-font-size:13.5pt;
                font-family:"Times New Roman",serif;
                mso-ascii-font-family:"Times New Roman";
                mso-fareast-font-family:"Times New Roman";
                mso-hansi-font-family:"Times New Roman";
                mso-bidi-font-family:"Times New Roman";
                color:windowtext;
                mso-fareast-language:ES-MX;
                font-weight:bold;
            }
            span.Ttulo5Car
            {
                mso-style-name:"Título 5 Car";
                mso-style-noshow:yes;
                mso-style-priority:9;
                mso-style-unhide:no;
                mso-style-locked:yes;
                mso-style-link:"Título 5";
                font-family:"Calibri Light",sans-serif;
                mso-ascii-font-family:"Calibri Light";
                mso-ascii-theme-font:major-latin;
                mso-fareast-font-family:"Times New Roman";
                mso-fareast-theme-font:major-fareast;
                mso-hansi-font-family:"Calibri Light";
                mso-hansi-theme-font:major-latin;
                mso-bidi-font-family:"Times New Roman";
                mso-bidi-theme-font:major-bidi;
                color:#2F5496;
                mso-themecolor:accent1;
                mso-themeshade:191;
            }
            span.Ttulo2Car
            {
                mso-style-name:"Título 2 Car";
                mso-style-noshow:yes;
                mso-style-priority:9;
                mso-style-unhide:no;
                mso-style-locked:yes;
                mso-style-link:"Título 2";
                mso-ansi-font-size:13.0pt;
                mso-bidi-font-size:13.0pt;
                font-family:"Calibri Light",sans-serif;
                mso-ascii-font-family:"Calibri Light";
                mso-ascii-theme-font:major-latin;
                mso-fareast-font-family:"Times New Roman";
                mso-fareast-theme-font:major-fareast;
                mso-hansi-font-family:"Calibri Light";
                mso-hansi-theme-font:major-latin;
                mso-bidi-font-family:"Times New Roman";
                mso-bidi-theme-font:major-bidi;
                color:#2F5496;
                mso-themecolor:accent1;
                mso-themeshade:191;
            }
            span.SpellE
            {
                mso-style-name:"";
                mso-spl-e:yes;
            }
            .MsoChpDefault
            {
                mso-style-type:export-only;
                mso-default-props:yes;
                font-size:12.0pt;
                mso-ansi-font-size:12.0pt;
                mso-ascii-font-family:"Microsoft JhengHei UI";
                mso-fareast-font-family:Calibri;
                mso-fareast-theme-font:minor-latin;
                mso-hansi-font-family:"Microsoft JhengHei UI";
                mso-bidi-font-family:"Times New Roman";
                mso-bidi-theme-font:minor-bidi;
                color:black;
                mso-themecolor:text1;
                mso-fareast-language:EN-US;
            }
            .MsoPapDefault
            {
                mso-style-type:export-only;
                margin-bottom:8.0pt;
                line-height:107%;
            }
            @page WordSection1
            {
                size:612.0pt 792.0pt;
                margin:70.85pt 3.0cm 70.85pt 3.0cm;
                mso-header-margin:35.4pt;
                mso-footer-margin:35.4pt;
                mso-paper-source:0;
            }
            div.WordSection1
            {
                page:WordSection1;
            }
            /* List Definitions */
            @list l0
            {
                mso-list-id:131025576;
                mso-list-template-ids:-1579113628;
            }
            @list l0:level1
            {
                mso-level-number-format:bullet;
                mso-level-text:\F0B7;
                mso-level-tab-stop:36.0pt;
                mso-level-number-position:left;
                text-indent:-18.0pt;
                mso-ansi-font-size:10.0pt;
                font-family:Symbol;
            }
            @list l0:level2
            {
                mso-level-start-at:0;
                mso-level-number-format:bullet;
                mso-level-text:o;
                mso-level-tab-stop:72.0pt;
                mso-level-number-position:left;
                text-indent:-18.0pt;
                mso-ansi-font-size:10.0pt;
                font-family:"Courier New";
                mso-bidi-font-family:"Times New Roman";
            }
            @list l0:level3
            {
                mso-level-start-at:0;
                mso-level-number-format:bullet;
                mso-level-text:\F0A7;
                mso-level-tab-stop:108.0pt;
                mso-level-number-position:left;
                text-indent:-18.0pt;
                mso-ansi-font-size:10.0pt;
                font-family:Wingdings;
            }
            @list l0:level4
            {
                mso-level-start-at:0;
                mso-level-number-format:bullet;
                mso-level-text:\F0A7;
                mso-level-tab-stop:144.0pt;
                mso-level-number-position:left;
                text-indent:-18.0pt;
                mso-ansi-font-size:10.0pt;
                font-family:Wingdings;
            }
            @list l0:level5
            {
                mso-level-start-at:0;
                mso-level-number-format:bullet;
                mso-level-text:\F0A7;
                mso-level-tab-stop:180.0pt;
                mso-level-number-position:left;
                text-indent:-18.0pt;
                mso-ansi-font-size:10.0pt;
                font-family:Wingdings;
            }
            @list l0:level6
            {
                mso-level-start-at:0;
                mso-level-number-format:bullet;
                mso-level-text:\F0A7;
                mso-level-tab-stop:216.0pt;
                mso-level-number-position:left;
                text-indent:-18.0pt;
                mso-ansi-font-size:10.0pt;
                font-family:Wingdings;
            }
            @list l0:level7
            {
                mso-level-start-at:0;
                mso-level-number-format:bullet;
                mso-level-text:\F0A7;
                mso-level-tab-stop:252.0pt;
                mso-level-number-position:left;
                text-indent:-18.0pt;
                mso-ansi-font-size:10.0pt;
                font-family:Wingdings;
            }
            @list l0:level8
            {
                mso-level-start-at:0;
                mso-level-number-format:bullet;
                mso-level-text:\F0A7;
                mso-level-tab-stop:288.0pt;
                mso-level-number-position:left;
                text-indent:-18.0pt;
                mso-ansi-font-size:10.0pt;
                font-family:Wingdings;
            }
            @list l0:level9
            {
                mso-level-start-at:0;
                mso-level-number-format:bullet;
                mso-level-text:\F0A7;
                mso-level-tab-stop:324.0pt;
                mso-level-number-position:left;
                text-indent:-18.0pt;
                mso-ansi-font-size:10.0pt;
                font-family:Wingdings;
            }
            @list l1
            {
                mso-list-id:251010700;
                mso-list-template-ids:973342484;
            }
            @list l1:level1
            {
                mso-level-number-format:bullet;
                mso-level-text:\F0B7;
                mso-level-tab-stop:36.0pt;
                mso-level-number-position:left;
                text-indent:-18.0pt;
                mso-ansi-font-size:10.0pt;
                font-family:Symbol;
            }
            @list l1:level2
            {
                mso-level-start-at:0;
                mso-level-number-format:bullet;
                mso-level-text:o;
                mso-level-tab-stop:72.0pt;
                mso-level-number-position:left;
                text-indent:-18.0pt;
                mso-ansi-font-size:10.0pt;
                font-family:"Courier New";
                mso-bidi-font-family:"Times New Roman";
            }
            @list l1:level3
            {
                mso-level-start-at:0;
                mso-level-number-format:bullet;
                mso-level-text:\F0A7;
                mso-level-tab-stop:108.0pt;
                mso-level-number-position:left;
                text-indent:-18.0pt;
                mso-ansi-font-size:10.0pt;
                font-family:Wingdings;
            }
            @list l1:level4
            {
                mso-level-start-at:0;
                mso-level-number-format:bullet;
                mso-level-text:\F0A7;
                mso-level-tab-stop:144.0pt;
                mso-level-number-position:left;
                text-indent:-18.0pt;
                mso-ansi-font-size:10.0pt;
                font-family:Wingdings;
            }
            @list l1:level5
            {
                mso-level-start-at:0;
                mso-level-number-format:bullet;
                mso-level-text:\F0A7;
                mso-level-tab-stop:180.0pt;
                mso-level-number-position:left;
                text-indent:-18.0pt;
                mso-ansi-font-size:10.0pt;
                font-family:Wingdings;
            }
            @list l1:level6
            {
                mso-level-start-at:0;
                mso-level-number-format:bullet;
                mso-level-text:\F0A7;
                mso-level-tab-stop:216.0pt;
                mso-level-number-position:left;
                text-indent:-18.0pt;
                mso-ansi-font-size:10.0pt;
                font-family:Wingdings;
            }
            @list l1:level7
            {
                mso-level-start-at:0;
                mso-level-number-format:bullet;
                mso-level-text:\F0A7;
                mso-level-tab-stop:252.0pt;
                mso-level-number-position:left;
                text-indent:-18.0pt;
                mso-ansi-font-size:10.0pt;
                font-family:Wingdings;
            }
            @list l1:level8
            {
                mso-level-start-at:0;
                mso-level-number-format:bullet;
                mso-level-text:\F0A7;
                mso-level-tab-stop:288.0pt;
                mso-level-number-position:left;
                text-indent:-18.0pt;
                mso-ansi-font-size:10.0pt;
                font-family:Wingdings;
            }
            @list l1:level9
            {
                mso-level-start-at:0;
                mso-level-number-format:bullet;
                mso-level-text:\F0A7;
                mso-level-tab-stop:324.0pt;
                mso-level-number-position:left;
                text-indent:-18.0pt;
                mso-ansi-font-size:10.0pt;
                font-family:Wingdings;
            }
            @list l2
            {
                mso-list-id:1745835089;
                mso-list-type:hybrid;
                mso-list-template-ids:-1135173946 134873089 134873091 134873093 134873089 134873091 134873093 134873089 134873091 134873093;
            }
            @list l2:level1
            {
                mso-level-number-format:bullet;
                mso-level-text:\F0B7;
                mso-level-tab-stop:none;
                mso-level-number-position:left;
                text-indent:-18.0pt;
                font-family:Symbol;
            }
            @list l2:level2
            {
                mso-level-number-format:bullet;
                mso-level-text:o;
                mso-level-tab-stop:none;
                mso-level-number-position:left;
                text-indent:-18.0pt;
                font-family:"Courier New";
            }
            @list l2:level3
            {
                mso-level-number-format:bullet;
                mso-level-text:\F0A7;
                mso-level-tab-stop:none;
                mso-level-number-position:left;
                text-indent:-18.0pt;
                font-family:Wingdings;
            }
            @list l2:level4
            {
                mso-level-number-format:bullet;
                mso-level-text:\F0B7;
                mso-level-tab-stop:none;
                mso-level-number-position:left;
                text-indent:-18.0pt;
                font-family:Symbol;
            }
            @list l2:level5
            {
                mso-level-number-format:bullet;
                mso-level-text:o;
                mso-level-tab-stop:none;
                mso-level-number-position:left;
                text-indent:-18.0pt;
                font-family:"Courier New";
            }
            @list l2:level6
            {
                mso-level-number-format:bullet;
                mso-level-text:\F0A7;
                mso-level-tab-stop:none;
                mso-level-number-position:left;
                text-indent:-18.0pt;
                font-family:Wingdings;
            }
            @list l2:level7
            {
                mso-level-number-format:bullet;
                mso-level-text:\F0B7;
                mso-level-tab-stop:none;
                mso-level-number-position:left;
                text-indent:-18.0pt;
                font-family:Symbol;
            }
            @list l2:level8
            {
                mso-level-number-format:bullet;
                mso-level-text:o;
                mso-level-tab-stop:none;
                mso-level-number-position:left;
                text-indent:-18.0pt;
                font-family:"Courier New";
            }
            @list l2:level9
            {
                mso-level-number-format:bullet;
                mso-level-text:\F0A7;
                mso-level-tab-stop:none;
                mso-level-number-position:left;
                text-indent:-18.0pt;
                font-family:Wingdings;
            }
            ol
            {
                margin-bottom:0cm;
            }
            ul
            {
                margin-bottom:0cm;
            }
            -->
        </style>
        <!--[if gte mso 10]>
        <style>
         /* Style Definitions */
         table.MsoNormalTable
                {mso-style-name:"Tabla normal";
                mso-tstyle-rowband-size:0;
                mso-tstyle-colband-size:0;
                mso-style-noshow:yes;
                mso-style-priority:99;
                mso-style-parent:"";
                mso-padding-alt:0cm 5.4pt 0cm 5.4pt;
                mso-para-margin-top:0cm;
                mso-para-margin-right:0cm;
                mso-para-margin-bottom:8.0pt;
                mso-para-margin-left:0cm;
                line-height:107%;
                mso-pagination:widow-orphan;
                font-size:12.0pt;
                mso-bidi-font-size:11.0pt;
                font-family:"Microsoft JhengHei UI",sans-serif;
                mso-fareast-font-family:Calibri;
                mso-fareast-theme-font:minor-latin;
                color:black;
                mso-themecolor:text1;
                mso-fareast-language:EN-US;}
        </style>
        <![endif]--><!--[if gte mso 9]><xml>
         <o:shapedefaults v:ext="edit" spidmax="1030"/>
        </xml><![endif]--><!--[if gte mso 9]><xml>
         <o:shapelayout v:ext="edit">
          <o:idmap v:ext="edit" data="1"/>
         </o:shapelayout></xml><![endif]-->
    </head>

    <body lang=ES-MX style='tab-interval:35.4pt;word-wrap:break-word'>

        <div class=WordSection1>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><span
                    style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'>Hoy en día
                    podrías encontrar una <b>laptop</b> <b>nueva</b> desde <b>$4000 MXN</b>, sin
                    embargo, escoger la más barata sin pensar en tus necesidades podría convertirse
                    en una mala inversión y con tantos modelos y precios esta tarea no se hace más
                    fácil.<o:p></o:p></span></p>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><span
                    style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'><o:p>&nbsp;</o:p></span></p>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><span
                    style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'>Esta guía te
                    ayudará a escoger la laptop ideal para ti, aprenderás a entender los
                    componentes de tu laptop, qué características debes de buscar según el uso que
                    le darás, <span class=SpellE>tips</span> de compra y que tipo de laptops evitar
                    a toda costa.<o:p></o:p></span></p>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><span
                    style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'><o:p>&nbsp;</o:p></span></p>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><span
                    style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'><o:p>&nbsp;</o:p></span></p>

            <p class=MsoNormal align=center style='text-align:center;line-height:115%'><b><span
                        style='font-size:24.0pt;line-height:115%;font-family:"Work Sans"'>Escoge la
                        laptop por lo componentes que tiene, no por la marca<o:p></o:p></span></b></p>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><span
                    style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'>La marca no
                    debería ser el primer factor a la hora de escoger tu laptop, son los
                    componentes, hay tres principales, procesador, memoria RAM y almacenamiento; El
                    procesador es el más importante de estos tres, este es el encargado de ejecutar
                    las tareas, están diseñados para diferentes usos y es muy importante escoger
                    bien, ya que no se podrá actualizar después.<o:p></o:p></span></p>

            <p class=MsoNormal style='line-height:115%'><span style='font-size:20.0pt;
                                                              line-height:115%;font-family:"Work Sans"'><o:p>&nbsp;</o:p></span></p>

            <p class=MsoNormal style='line-height:115%'><b><span style='font-size:24.0pt;
                                                                 line-height:115%;font-family:"Work Sans"'>Procesador:<o:p></o:p></span></b></p>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><span
                    style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'>Hay dos
                    principales marcas de procesadores para laptop,&nbsp;AMD&nbsp;e&nbsp;Intel,
                    ambas marcas tienen varias gamas y tratar de entenderlas se vuelve complicado,
                    afortunadamente la mayoría de las laptops tienen un&nbsp;<span class=SpellE>sticker</span>&nbsp;justo
                    debajo del teclado para mostrar con qué marca y serie de procesador cuentan, a
                    la hora de comprar tu laptop es muy importante que revises que procesador estás
                    comprando, evita comprar laptops con procesadores AMD series :E1, E2 e Intel
                    series: <span class=SpellE>Atom</span>, Celeron y Pentium.<o:p></o:p></span></p>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><!--[if gte vml 1]><o:wrapblock><v:shapetype
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
             </v:shapetype><v:shape id="Imagen_x0020_3" o:spid="_x0000_s1029" type="#_x0000_t75"
              alt="Un teclado de computadora&#10;&#10;Descripción generada automáticamente"
              style='position:absolute;left:0;text-align:left;margin-left:383.95pt;
              margin-top:35.25pt;width:428.75pt;height:283.85pt;z-index:251658240;
              visibility:visible;mso-wrap-style:square;mso-width-percent:0;
              mso-height-percent:0;mso-wrap-distance-left:9pt;mso-wrap-distance-top:0;
              mso-wrap-distance-right:9pt;mso-wrap-distance-bottom:0;
              mso-position-horizontal:absolute;mso-position-horizontal-relative:text;
              mso-position-vertical:absolute;mso-position-vertical-relative:text;
              mso-width-percent:0;mso-height-percent:0;mso-width-relative:margin;
              mso-height-relative:margin'>
              <v:imagedata src="info_escoger_archivos/image001.jpg" o:title="Un teclado de computadora&#10;&#10;Descripción generada automáticamente"/>
              <w:wrap type="topAndBottom"/>
             </v:shape><![endif]--><![if !vml]><span style='mso-ignore:vglayout'>
                    <table cellpadding=0 cellspacing=0 align=left>
                        <tr>
                            <td width=512 height=0></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <div class="img1">

                                    <img  width=572 height=378 src="imgs/info/info_esccoger1.jpg"
                                          alt="Un teclado de computadora&#10;&#10;Descripción generada automáticamente"
                                          v:shapes="Imagen_x0020_3">
                                </div>

                            </td>
                        </tr>
                    </table>
                </span><![endif]><!--[if gte vml 1]></o:wrapblock><![endif]--><br
                    style='mso-ignore:vglayout' clear=ALL>
                <span style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'><o:p></o:p></span></p>

            <p class=MsoNormal style='line-height:115%'><span style='font-size:20.0pt;
                                                              line-height:115%;font-family:"Work Sans"'><o:p>&nbsp;</o:p></span></p>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><span
                    style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'>Esta gráfica
                    que te ayudará a escoger que procesador es el que necesitas según tu
                    presupuesto, se dividirá en tres secciones, cada una tiene el costo aproximado
                    de laptop según el procesador que tenga; Más abajo en este post encontraras que
                    gama necesitas según el uso que le vayas a dar a tu laptop.<o:p></o:p></span></p>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><b><span
                        style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'>Gama Básica
                        ($4000 MXN. - $8000 MXN.)<o:p></o:p></span></b></p>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><b><span
                        style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'>Gama media
                        ($8000 MXN. - $15000 MXN.)<o:p></o:p></span></b></p>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><b><span
                        style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'>Gama Alta
                        ($15000 MXN. en adelante)<o:p></o:p></span></b></p>

            <p class=MsoNormal style='line-height:115%'><b><span style='font-size:20.0pt;
                                                                 line-height:115%;font-family:"Work Sans"'><o:p>&nbsp;</o:p></span></b></p>

            <p class=MsoNormal style='line-height:115%'><!--[if gte vml 1]><o:wrapblock><v:shape
              id="Imagen_x0020_5" o:spid="_x0000_s1028" type="#_x0000_t75" alt="Interfaz de usuario gráfica&#10;&#10;Descripción generada automáticamente"
              style='position:absolute;margin-left:344.2pt;margin-top:-435.2pt;width:539.4pt;
              height:437.35pt;z-index:251659264;visibility:visible;mso-wrap-style:square;
              mso-width-percent:0;mso-height-percent:0;mso-wrap-distance-left:9pt;
              mso-wrap-distance-top:0;mso-wrap-distance-right:9pt;
              mso-wrap-distance-bottom:0;mso-position-horizontal:absolute;
              mso-position-horizontal-relative:text;mso-position-vertical:absolute;
              mso-position-vertical-relative:text;mso-width-percent:0;mso-height-percent:0;
              mso-width-relative:margin;mso-height-relative:margin'>
              <v:imagedata src="info_escoger_archivos/image003.jpg" o:title="Interfaz de usuario gráfica&#10;&#10;Descripción generada automáticamente"/>
              <w:wrap type="topAndBottom"/>
             </v:shape><![endif]--><![if !vml]><span style='mso-ignore:vglayout'>
                    <table cellpadding=0 cellspacing=0 align=left>
                        <tr>
                            <td width=459 height=0></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <div class="img1">

                                    <img  width=572 height=378 src="imgs/info/info_esccoger2.jpg"
                                          alt="Un teclado de computadora&#10;&#10;Descripción generada automáticamente"
                                          >
                                </div>
                            </td>
                        </tr>
                    </table>
                </span><![endif]><!--[if gte vml 1]></o:wrapblock><![endif]--><br
                    style='mso-ignore:vglayout' clear=ALL>
                <b><span style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'><o:p></o:p></span></b></p>

            <p class=MsoNormal style='line-height:115%'><b><span style='font-size:20.0pt;
                                                                 line-height:115%;font-family:"Work Sans"'><o:p>&nbsp;</o:p></span></b></p>

            <p class=MsoNormal style='line-height:115%'><b><span style='font-size:24.0pt;
                                                                 line-height:115%;font-family:"Work Sans"'>Memoria RAM<o:p></o:p></span></b></p>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><span
                    style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'>La memoria
                    RAM se encarga de almacenar temporalmente los programas que abres, cada
                    programa utiliza una cantidad de memoria RAM, menos memoria te impediría tener más
                    programas abiertos al mismo tiempo, haciendo que tu computadora se
                    &lt;&lt;congele&gt;&gt; y deje de responder.<o:p></o:p></span></p>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><span
                    style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'>Ej. Si tu
                    laptop tiene 4 Gb De RAM y entre Windows, Word y Chrome están ocupando 3.9 Gb,
                    estas a nada de que tu sistema se &lt;&lt;congele&gt;&gt; y deje de responder,
                    eventualmente el sistema operativo va a cerrar los programas que no responden,
                    liberando de nuevo la memoria RAM y &lt;&lt;Descongelando&gt;&gt; el sistema.<o:p></o:p></span></p>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><span
                    style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'>Evita a toda
                    costa laptops con 2Gb; 4 Gb sirve bien para programas básicos, pero yo te
                    recomiendo una laptop con al menos 8 Gb, también pregunta si la laptop que
                    estás comprando se le puede actualizar la memoria RAM.<o:p></o:p></span></p>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><span
                    style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'><o:p>&nbsp;</o:p></span></p>

            <p class=MsoNormal style='line-height:115%'><!--[if gte vml 1]><o:wrapblock><v:shape
              id="Imagen_x0020_6" o:spid="_x0000_s1027" type="#_x0000_t75" alt="Imagen que contiene electrónica, circuito&#10;&#10;Descripción generada automáticamente"
              style='position:absolute;margin-left:360.55pt;margin-top:-327.55pt;width:581.45pt;
              height:327.75pt;z-index:251662336;visibility:visible;mso-wrap-style:square;
              mso-width-percent:0;mso-height-percent:0;mso-wrap-distance-left:9pt;
              mso-wrap-distance-top:0;mso-wrap-distance-right:9pt;
              mso-wrap-distance-bottom:0;mso-position-horizontal:absolute;
              mso-position-horizontal-relative:text;mso-position-vertical:absolute;
              mso-position-vertical-relative:text;mso-width-percent:0;mso-height-percent:0;
              mso-width-relative:margin;mso-height-relative:margin'>
              <v:imagedata src="info_escoger_archivos/image005.jpg" o:title="Imagen que contiene electrónica, circuito&#10;&#10;Descripción generada automáticamente"/>
              <w:wrap type="topAndBottom"/>
             </v:shape><![endif]--><![if !vml]><span style='mso-ignore:vglayout'>
                    <table cellpadding=0 cellspacing=0 align=left>
                        <tr>
                            <td width=481 height=0></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>

                                <div class="img1">

                                    <img width=572 height=378 src="imgs/info/info_esccoger3.jpg"
                                         alt="Imagen que contiene electrónica, circuito&#10;&#10;Descripción generada automáticamente"
                                         v:shapes="Imagen_x0020_6">

                                </div>

                            </td>
                        </tr>
                    </table>
                </span><![endif]><!--[if gte vml 1]></o:wrapblock><![endif]--><br
                    style='mso-ignore:vglayout' clear=ALL>
                <span style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'><o:p></o:p></span></p>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><b><span
                        style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'><o:p>&nbsp;</o:p></span></b></p>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><b><span
                        style='font-size:24.0pt;line-height:115%;font-family:"Work Sans"'>Almacenamiento<o:p></o:p></span></b></p>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><span
                    style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'>Actualmente
                    existen dos principales tecnologías de almacenamiento, disco duro (HDD) y
                    unidad de estado sólido (SSD), y aunque son más populares los discos duros por
                    su bajo costo, los SSD superan por mucho en cuanto a velocidad rendimiento y
                    confiabilidad<o:p></o:p></span></p>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><span
                    style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'>Cada vez es
                    más común encontrar laptops con discos duros de 1TB o incluso 2 TB, pero en
                    realidad un usuario en promedio utiliza máximo 300 GB.<o:p></o:p></span></p>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><span
                    style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'>Si solo
                    utilizas archivos ligeros, como documentos de texto o fotos, te recomiendo
                    buscar una laptop con una unidad de estado sólido, 256 Gb será una buena opción
                    en relación costo beneficio, si ocupas archivos más pesados como video
                    profesional, te recomiendo preguntar por una laptop con doble almacenamiento,
                    128Gb SSD + 1Tb HDD, en donde tu sistema y programas estarán instalados en la
                    unidad de estado sólido para que se ejecuten rápido y tus archivos los podrás
                    guardar en el disco duro.<o:p></o:p></span></p>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><b><span
                        style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'><o:p>&nbsp;</o:p></span></b></p>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><!--[if gte vml 1]><o:wrapblock><v:shape
              id="Imagen_x0020_7" o:spid="_x0000_s1026" type="#_x0000_t75" alt="Interfaz de usuario gráfica, Aplicación&#10;&#10;Descripción generada automáticamente"
              style='position:absolute;left:0;text-align:left;margin-left:0;margin-top:0;
              width:600pt;height:270pt;z-index:251661312;visibility:visible;
              mso-wrap-style:square;mso-wrap-distance-left:9pt;mso-wrap-distance-top:0;
              mso-wrap-distance-right:9pt;mso-wrap-distance-bottom:0;
              mso-position-horizontal:center;mso-position-horizontal-relative:margin;
              mso-position-vertical:center;mso-position-vertical-relative:margin'>
              <v:imagedata src="info_escoger_archivos/image007.png" o:title="Interfaz de usuario gráfica, Aplicación&#10;&#10;Descripción generada automáticamente"/>
              <w:wrap type="topAndBottom" anchorx="margin" anchory="margin"/>
             </v:shape><![endif]--><![if !vml]>


                <img class="img1" id="" width=800 height=360
                     src="imgs/info/info_esccoger4.png"
                     alt="Interfaz de usuario gráfica, Aplicación&#10;&#10;Descripción generada automáticamente"
                     v:shapes="Imagen_x0020_7">



                <![endif]><!--[if gte vml 1]></o:wrapblock><![endif]--><br
                    style='mso-ignore:vglayout' clear=ALL>
                <b><span style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'><o:p></o:p></span></b></p>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><b><span
                        style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'><o:p>&nbsp;</o:p></span></b></p>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><b><span
                        style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'>TIPS:<o:p></o:p></span></b></p>

            <p class=MsoListParagraphCxSpFirst style='text-align:justify;text-indent:-18.0pt;
               line-height:115%;mso-list:l2 level1 lfo3'><![if !supportLists]><span
                    style='font-size:20.0pt;line-height:115%;font-family:Symbol;mso-fareast-font-family:
                    Symbol;mso-bidi-font-family:Symbol'><span style='mso-list:Ignore'>·<span
                            style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span
                    style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'>Evita comprar
                    laptops con procesadores AMD E1, AMD E2, Intel <span class=SpellE>Atom</span>,
                    Intel Celeron e Intel Pentium Silver.<o:p></o:p></span></p>

            <p class=MsoListParagraphCxSpMiddle style='text-align:justify;line-height:115%'><span
                    style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'><o:p>&nbsp;</o:p></span></p>

            <p class=MsoListParagraphCxSpMiddle style='text-align:justify;text-indent:-18.0pt;
               line-height:115%;mso-list:l2 level1 lfo3'><![if !supportLists]><span
                    style='font-size:20.0pt;line-height:115%;font-family:Symbol;mso-fareast-font-family:
                    Symbol;mso-bidi-font-family:Symbol'><span style='mso-list:Ignore'>·<span
                            style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span
                    style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'>Revisa los
                    puertos, con las laptops cada vez más delgadas, las marcas de laptops están
                    retirando puertos importantes como USB, Ethernet, HDMI entre otros, y los
                    reemplazan por puertos como USB Tipo C, el cual te hará comprar un adaptador.<o:p></o:p></span></p>

            <p class=MsoListParagraphCxSpMiddle><span style='font-size:20.0pt;line-height:
                                                      107%;font-family:"Work Sans"'><o:p>&nbsp;</o:p></span></p>

            <p class=MsoListParagraphCxSpMiddle style='text-align:justify;text-indent:-18.0pt;
               line-height:115%;mso-list:l2 level1 lfo3'><![if !supportLists]><span
                    style='font-size:20.0pt;line-height:115%;font-family:Symbol;mso-fareast-font-family:
                    Symbol;mso-bidi-font-family:Symbol'><span style='mso-list:Ignore'>·<span
                            style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span
                    style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'>No todos los
                    vendedores de mostrador tienen el conocimiento para recomendarte un buen
                    equipo, no confíes ciegamente en lo que te quieren vender, Usa esta guía.<o:p></o:p></span></p>

            <p class=MsoListParagraphCxSpMiddle><span style='font-size:20.0pt;line-height:
                                                      107%;font-family:"Work Sans"'><o:p>&nbsp;</o:p></span></p>

            <p class=MsoListParagraphCxSpLast style='text-align:justify;text-indent:-18.0pt;
               line-height:115%;mso-list:l2 level1 lfo3'><![if !supportLists]><span
                    style='font-size:20.0pt;line-height:115%;font-family:Symbol;mso-fareast-font-family:
                    Symbol;mso-bidi-font-family:Symbol'><span style='mso-list:Ignore'>·<span
                            style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span
                    style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'>Es posible
                    que encuentres promociones de “Compra esta laptop y llévate esta impresora a un
                    precio ridículamente bajo o hasta gratis” Esto es un gancho para que compres
                    los cartuchos originales que se acaban muy rápido y son caros, no caigas en esa
                    trampa.<o:p></o:p></span></p>

            <p class=MsoNormal style='text-align:justify;line-height:115%'><b><span
                        style='font-size:20.0pt;line-height:115%;font-family:"Work Sans"'><o:p>&nbsp;</o:p></span></b></p>

            <p class=MsoNormal style='line-height:115%'><o:p>&nbsp;</o:p></p>

        </div>

</div>

</html>
