<%-- 
    Document   : carrito
    Created on : 19 nov. 2021, 20:20:51
    Author     : Mauricio
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="conexion.Base"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Carrito de compras</title>
        <link rel="stylesheet" type="text/css" href="estilos/dropdown/default.css" />
        <link rel="stylesheet" type="text/css" href="estilos/dropdown/component.css" />
        <script src="scripts/dropdown/modernizr.custom.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
        <link rel="stylesheet" href="estilos/barra.css">
        <link rel="shortcut icon" href="imgs/gabinete_white.png">
        <link rel="stylesheet" href="estilos/carrito.css">
        <script  src="scripts/carrito.js"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    </head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous"><!-- comment -->
    <script src="https://kit.fontawesome.com/40eeeaf3f3.js" crossorigin="anonymous"></script>
    <body>
        <%
            HttpSession miSessiondelUsuario = (HttpSession) request.getSession();
            int id = (int) (miSessiondelUsuario.getAttribute("id") == null ? 0 : miSessiondelUsuario.getAttribute("id"));
            //int id = 1;
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
                
        <!-- Carrito de compras -->
        <div class="divcarrito">
            
            <!-- Lista de productos -->
            <div class="list_carrito">
                
                <!-- Titulo -->
                <div class="tit_carrito">
                    Carrito de Compras
                    &nbsp;
                    <img src="iconos\carrito.png" width="auto" height="50px">
                </div>
                
                <!-- Listado de productos -->
                <div class="div_list_prod_car">
                    <!-- El iframde que muestra la pagina carrito_list.jsp -->
                    <iframe src="carrito_list.jsp" width="100%" height="100%" style="border: 0"> 
                    </iframe>
                </div>
                
                <!-- Boton para seguir comprando -->
                <div class="tit_carrito">
                    <a href="principal_cli.jsp">
                        <input type="button" class="btn_seg_comp" value="Seguir comprando">
                    </a>
                </div>
            </div>
            
            <!-- Botones y precio total -->
            <div class="btns_carrito">
                <div class="div_precio">
                    <label class="precio_final">
                        Total
                        <br>
                                               
            <%
                int detallesypresio1 = 0;
                            
                Base bd = new Base();
                try {
                    bd.conectar();

                    String strQry = "select sum(prec_prod * cantidad) from cliente "
                            + "inner join carrito on cliente.id_cli = carrito.id_cli "
                            + "inner join producto on producto.id_prod = carrito.id_prod "
                            + "where cliente.id_cli = '"+id+"' ; ";
                    
                    ResultSet rs = null;
                    rs = bd.consulta(strQry);
                    

                    if (rs.next()) {
                        if (rs.getString(1) == null) {
            %>
                               $0                          
            <%
                        }else{
                            detallesypresio1 = Integer.parseInt(rs.getString(1));
                %>
                   $<%=rs.getString(1)%>
            
            
        
        
                    </label>
                    
                    <a href="finalizar_compra.jsp?detallesypresio1=<%=detallesypresio1%>">
                        <input type="button" class="btn_seg_comp" value="Continuar Compra">
                    </a>
                    
                    <a href="carrito.jsp">
                        <input type="button" class="btn_limpiar" value="Actualizar" >
                    </a>
                    <a href="A_limpiar_car.jsp">
                        <input type="button" class="btn_limpiar" value="Limpiar carrito" ">
                    </a>
                </div>
                   
            <%
                        }
                    }
                    rs.close();
                    bd.cierraConexion();
                } catch (Exception ex) {
                    out.print(ex.getMessage());
                }
                
            %>
                   
            </div>
        </div>
    </body>
</html>
