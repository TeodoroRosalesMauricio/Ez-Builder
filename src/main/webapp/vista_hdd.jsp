<%-- 
    Document   : vista_det
    Created on : 14 nov. 2021, 16:17:08
    Author     : Mauricio
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="conexion.Base"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Vista Detallada</title>
        <link rel="stylesheet" type="text/css" href="estilos/dropdown/default.css" />
        <link rel="stylesheet" type="text/css" href="estilos/dropdown/component.css" />
        <script src="scripts/dropdown/modernizr.custom.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
        <link rel="stylesheet" href="estilos/barra.css">
        <link rel="shortcut icon" href="imgs/gabinete_white.png">
        <link rel="stylesheet" href="estilos/vista_det.css">
        <script  src="scripts/vista_det.js"></script>
    </head>
    <script src="https://kit.fontawesome.com/40eeeaf3f3.js" crossorigin="anonymous"></script>
    <body>

        <%
            int idprod = Integer.parseInt(request.getParameter("idprod"));

            Base bd = new Base();

            try {
                bd.conectar();
                String strQry = "select producto.*,hdd.* from producto "
                        + "inner join hdd on producto.id_prod = hdd.id_prod "
                        + "where hdd.id_prod = '" + idprod + "' ;";
                ResultSet rs = null;

                rs = bd.consulta(strQry);

                while (rs.next()) {
        %>

        <!-- Barra superior -->
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

        <!-- Vista detallada -->
        <div class="vista">

            <!-- Parte izquierda -->
            <div class="izquierdo">

                <!-- Imagenes -->
                <div class="imagenes">
                    <div>
                        <button class="flechas" type="button" onclick="menos()">
                            <b><</b>
                        </button>
                    </div>
                    <div >
                        <ul class="imgprod" > 
                            <li class="li_det">
                                <img id="img1" class="hide1" src="imgs/productos/<%=rs.getString(8)%>" >
                            </li>
                            <li class="li_det">
                                <img id="img2" class="hide2" src="imgs/productos/<%=rs.getString(9)%>"" >
                            </li>
                            <li>
                                <img id="img3" class="hide3" src="imgs/productos/<%=rs.getString(10)%>" >
                            </li>
                            <li class="li_det">
                                <img id="img4" class="hide4" src="imgs/productos/<%=rs.getString(11)%>" >
                            </li>
                        </ul>
                    </div>
                    <div>
                        <button class="flechas" type="button" onclick="mas()">
                            <b>></b>
                        </button>
                    </div>
                    <div class="seleccion">
                        <div class="imgbtn" id="imgbtn1">
                            <img src="imgs/productos/<%=rs.getString(8)%>" onclick="uno()">
                        </div>
                        &nbsp;&nbsp;&nbsp;
                        <div class="imgbtn" id="imgbtn2">
                            <img src="imgs/productos/<%=rs.getString(9)%>" onclick="dos()">
                        </div>
                        &nbsp;&nbsp;&nbsp;
                        <div class="imgbtn" id="imgbtn3">
                            <img src="imgs/productos/<%=rs.getString(10)%>" onclick="tres()">
                        </div>
                        &nbsp;&nbsp;&nbsp; 
                        <div class="imgbtn" id="imgbtn4">
                            <img src="imgs/productos/<%=rs.getString(11)%>" onclick="cuatro()">
                        </div>
                    </div>
                </div>


            </div>

            <!-- Parte derecha -->
            <div class="derecho">

                <!-- Información -->
                <div class="info">
                    <div class="nombrep">
                        <!-- Título -->
                        <%=rs.getString(3)%> | <%=rs.getString(15)%>
                    </div>
                    <div class="sku">
                        <!-- SKU -->
                        SKU: <%=rs.getString(2)%>
                    </div>


                    <!-- Características -->
                    <div class="caracteristicas">
                        <div class="subtitulo">
                            Características:
                        </div>
                        <div class="texto_car">
                            Almacenamiento: <b><%=rs.getString(15)%></b><br>

                            RPM: <b><%=rs.getString(16)%></b><br>

                            Interfaz: <b><%=rs.getString(20)%></b>

                        </div>                 
                    </div>

                    <div class="precio">
                        $<%=rs.getString(4)%>
                    </div>
                    <div class="envio">
                        Costo de envío: $100
                    </div>
                    <div class="envio">
                        Disponibles: <%=rs.getString(5)%>
                    </div>
                    <div class="botonc">
                        <a href="inicios.jsp">
                            <input type="button" id="carrito" class="carritob" value="Añadir al carrito">
                        </a>                   
                    </div>
                </div>
            </div>


            <div class="abajo">
                <hr>
                <!-- Descripción -->
                <div class="descripcion">
                    <div class="subtitulo">
                        Descripción del producto:
                    </div>
                    <div class="texto">
                        <%=rs.getString(6)%>
                    </div>
                </div>

                <!-- Tabla -->
                <div class="tabla">
                    <div class="subtitulo">
                        Especificaciones
                    </div>
                    <table class="tablat">
                        <tr class="fila1">
                            <td class="columna">&nbsp;
                                Marca:
                            </td>
                            <td>
                                <%=rs.getString(13)%>
                            </td>
                        </tr>
                        <tr class="fila2">
                            <td>&nbsp;
                                Linea:
                            </td>
                            <td>
                                <%=rs.getString(14)%>
                            </td>
                        </tr>
                        <tr class="fila1">
                            <td>&nbsp;
                                Capacidad:
                            </td>
                            <td>
                                <%=rs.getString(15)%>
                            </td>
                        </tr>
                        <tr class="fila2">
                            <td>&nbsp;
                                Velocidad:
                            </td>
                            <td>
                                <%=rs.getString(16)%>
                            </td>
                        </tr>
                        <tr class="fila1">
                            <td>&nbsp;
                                Cantidad de caché:
                            </td>
                            <td>
                                <%=rs.getString(17)%>
                            </td>
                        </tr>
                        <tr class="fila2">
                            <td>&nbsp;
                                Ubicación:
                            </td>
                            <td>
                                <%=rs.getString(18)%>
                            </td>
                        </tr>
                        <tr class="fila1">
                            <td>&nbsp;
                                Tipo:
                            </td>
                            <td>
                                <%=rs.getString(19)%>
                            </td>
                        </tr>
                        <tr class="fila2">
                            <td>&nbsp;
                                Interfaz:
                            </td>
                            <td>
                                <%=rs.getString(20)%>
                            </td>
                        </tr>
                        <tr class="fila1">
                            <td>&nbsp;
                                Consumo eléctrico:
                            </td>
                            <td>
                                <%=rs.getString(21)%>
                            </td>
                        </tr>
                        <tr class="fila2">
                            <td>&nbsp;
                                Tamaño:
                            </td>
                            <td>
                                <%=rs.getString(22)%>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
        <%
                }
                rs.close();
                bd.cierraConexion();
            } catch (Exception ex) {
                out.print(ex.getMessage());
            }

        %>
    </body>
</html>
