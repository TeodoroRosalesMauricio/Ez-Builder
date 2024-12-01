<%-- 
    Document   : busqueda_ram
    Created on : 22 nov. 2021, 10:09:41
    Author     : Mauricio
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="conexion.Base"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Memorias RAM</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
        <link rel="stylesheet" href="estilos/barra.css">
        <link rel="shortcut icon" href="imgs/gabinete_white.png">
         <link rel="stylesheet" href="estilos/busqueda.css">
        <link rel="stylesheet" type="text/css" href="estilos/dropdown/default.css" />
        <link rel="stylesheet" type="text/css" href="estilos/dropdown/component.css" />
        <script src="scripts/dropdown/modernizr.custom.js"></script>
        <script src="https://kit.fontawesome.com/40eeeaf3f3.js" crossorigin="anonymous"></script>
    </head>
    <script src="https://kit.fontawesome.com/40eeeaf3f3.js" crossorigin="anonymous"></script>
    <body>
        <header>

            <!-- Barra superior -->
            <div class="div_header">

                <!-- partial:index.partial.html -->
                <header class="barra_sip">

                    <!-- Logo -->
                    <div class="logo">
                        <a title="Inicio" href="principal.jsp"><img src="iconos\logo_blanco.png" alt="Inicio" /></a>
                    </div>

                    <!-- Barra de búsqueda -->
                    <div class="div_barra">
                        <form name="barra" method="post" action="busqueda.jsp">
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
                                                <li><a href="busqueda_cpu.jsp"><img src="iconos\cpu.png" alt="xd"/><span>Procesadores</span></a></li>
                                                <li><a href="busqueda_gpu.jsp"><img src="iconos\gpu.png" alt="xd"/><span>Tarjetas Gráficas</span></a></li>
                                                <li><a href="busqueda_ram.jsp"><img src="iconos\ram.png" alt="xd"/><span>Memorias RAM</span></a></li>
                                                <li><a href="busqueda_mobo.jsp"><img src="iconos\motherboard.png" alt="xd"/><span>Tarjetas Madre</span></a></li>
                                                <li><a href="busqueda_hdd.jsp"><img src="iconos\hdd.png" alt="xd"/><span>Discos Duros</span></a></li>
                                                <li><a href="busqueda_ssd.jsp"><img src="iconos\ssd.png" alt="xd"/><span>Unidades de Estado Sólido</span></a></li>
                                                <li><a href="busqueda_psu.jsp"><img src="iconos\pws.png" alt="xd"/><span>Fuentes de Poder</span></a></li>
                                            </ul>
                                        </li>

                                        <li><a href="busqueda_pc.jsp">PC's de escritorio</a></li>

                                        <li><a href="busqueda_laptop.jsp">Laptops</a></li>

                                        <li>
                                            <a href="#">Periféricos</a>
                                            <ul class="cbp-hssubmenu cbp-hssub-rows">
                                                <li><a href="busqueda_case.jsp"><img src="iconos\gabinete2.png" alt="xd"/><span>Gabinetes</span></a></li>
                                                <li><a href="busqueda_cooler.jsp"><img src="iconos\cooler_2.png" alt="xd"/><span>Disipadores</span></a></li>
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
                    <button title="Carrito" class="dropbtn"></button>
                    <div class="dropdown-content">
                        <a href="registro.jsp">Registrarse</a>
                        <a href="inicios.jsp">Iniciar Sesión</a>
                    </div>
                </div>
            </div>

            <!-- Botón del carrito -->
            <div class="carrito"><a title="Carrito" href="inicios.jsp"><img src="iconos\carrito.png" alt="Inicio" /></a></div>

        </header>

        <!-- División que contendrá el listado con las casas -->
        <div class="listado_prod">

            <%

                Base bd = new Base();
                try {
                    bd.conectar();
                    String strQry = "select producto.id_prod,nom_prod,prec_prod,img_prod,ram.tam_ram,tipo_ram,vel_ram,id_ram from producto "
                            + "inner join ram on producto.id_prod = ram.id_prod;";
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
                                <%=rs.getString(2)%> | <%=rs.getString(7)%>
                            </td>
                        </tr>
                        <tr>
                            <td class="columna1">
                                Memoria: <b> <%=rs.getString(7)%></b><br>
                            </td>
                            <td class="botonyprecio" rowspan="3">
                                <label class="precio" id="precio">
                                    $<%=rs.getString(3)%>
                                </label>
                                &nbsp;
                                <a href="inicios.jsp">
                                    <input type="button" id="carrito" class="carritob" value="Añadir al carrito">
                                </a>
                                <br>
                                <a href="vista_ram.jsp?idprod=<%=idprod%>">
                                    <input type="button" id="ver" class="carritob" value="Ver producto">
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Frecuencia: <b><%=rs.getString(5)%></b><br>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Tipo de memoria: <b><%=rs.getString(6)%></b>
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
