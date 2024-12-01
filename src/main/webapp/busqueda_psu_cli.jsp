<%-- 
    Document   : busqueda_psu
    Created on : 22 nov. 2021, 10:08:31
    Author     : Mauricio
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="conexion.Base"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Fuentes de poder</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
        <link rel="stylesheet" href="estilos/barra.css">
        <link rel="shortcut icon" href="imgs/gabinete_white.png">
        <link rel="stylesheet" href="estilos/busqueda.css">
        <link rel="stylesheet" type="text/css" href="estilos/dropdown/default.css" />
        <link rel="stylesheet" type="text/css" href="estilos/dropdown/component.css" />
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
               
        <!-- División que contendrá el listado con las casas -->
        <div class="listado_prod">

            <%                Base bd = new Base();
                try {
                    bd.conectar();
                    String strQry = "select producto.id_prod,nom_prod,prec_prod,img_prod,fuentepoder.potencia_psu,plus80_psu,forma_psu,id_psu from producto "
                            + "inner join fuentepoder on producto.id_prod = fuentepoder.id_prod;";
                    ResultSet rs = null;
                    rs = bd.consulta(strQry);

                    int idprod;

                    while (rs.next()) {
                        idprod = Integer.parseInt(rs.getString(1));
            %>

            <div class="tabla_prod">
                <div class="divimg_prod"> 
                    <img src="imgs/productos/<%=rs.getString(4)%>" >
                </div>

                <div class="table_info">
                    <table class="tablap">
                        <tr>
                            <td class="titulodelprod" colspan="2">
                                <%=rs.getString(2)%>
                            </td>
                        </tr>
                        <tr>
                            <td class="columna1">
                                Potencia: <b><%=rs.getString(5)%></b><br>
                            </td>
                            <td class="botonyprecio" rowspan="3">
                                <label class="precio" id="precio">
                                    $<%=rs.getString(3)%>
                                </label>
                                &nbsp;
                                <a href="A_carrito.jsp?idprod=<%=idprod%>">
                                    <input type="button" id="carrito" class="carritob" value="Añadir al carrito">
                                </a>
                                <br>
                                <a href="vista_psu_cli.jsp?idprod=<%=idprod%>">
                                    <input type="button" id="ver" class="carritob" value="Ver producto">
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Certificación 80 PLUS: <b><%=rs.getString(6)%></b><br>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Factor de forma: <b><%=rs.getString(7)%></b>
                            </td>
                        </tr>                        
                    </table>
                </div>
            </div> 
            <%                                }
                    rs.close();

                    bd.cierraConexion();
                } catch (Exception ex) {
                    out.print(ex.getMessage());
                }

            %> 
        </div>
    </body>
</html>