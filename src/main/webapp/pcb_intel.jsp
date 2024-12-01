<%-- 
    Document   : pcb_intel
    Created on : 27 mar. 2022, 14:09:28
    Author     : Mauricio
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="conexion.Base"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>PC-Builder CPU</title>
        <link rel="stylesheet" type="text/css" href="estilos/dropdown/default.css" />
        <link rel="stylesheet" type="text/css" href="estilos/dropdown/component.css" />
        <script src="scripts/dropdown/modernizr.custom.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
        <link rel="stylesheet" href="estilos/barra.css">
        <link rel="stylesheet" href="estilos/footer.css">
        <link rel="stylesheet" href="estilos/pcb_pasos.css">
        <link rel="shortcut icon" href="imgs/gabinete_white.png">
    </head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous"><!-- comment -->
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
       
                
                
        <!-- Pagina de seleccion de cpu -->
        <div class="divseleccion">
            <div class="seleccionar">
                
                <!-- Instrucción -->
                <div class="instruccion">
                    <div class="imginstruccion">
                        <img src="iconos\cpu.png" alt="CPU" />
                    </div>
                    <div class="instruccionletras">       
                            2. Elige un procesador             
                    </div>
                </div>
                
                <!-- div de la lista de productos -->
                <div class="listaprods">
                    
            <%

                Base bd = new Base();
                
                try {
                    bd.conectar();
                    String strQry = "select id_cpu,img_prod,nom_prod,nucl_cpu,graph_cpu,frecbase_cpu,prec_prod from producto "
                            + "inner join procesador on producto.id_prod = procesador.id_prod where marca_cpu = 'Intel' order by prec_prod asc;";
                    ResultSet rs = null;
                    rs = bd.consulta(strQry);

                    int idcpu;

                    while (rs.next()) {
                        idcpu = Integer.parseInt(rs.getString(1));
            %>
                    
                    <div class="info_prod">
                        <div class="divimg_prod"> 
                            <img src="imgs/productos/<%=rs.getString(2)%>" >
                        </div>

                        <!-- lista de productos -->
                        <div class="detalles">
                            <label class="titulodelprodselect">
                                <%=rs.getString(3)%>
                            </label>
                            <br>
                            Cantidad de núcleos: <b><%=rs.getString(4)%></b><br>
                            Gráficos integrados: <b><%=rs.getString(5)%></b><br>                         
                            Frecuencia: <b><%=rs.getString(6)%></b>                             
                        </div>
                        <div class="presio">
                            <br>
                            Precio:
                            <label class="titulodelprodselect">
                                $<%=rs.getString(7)%>
                            </label>
                            
                            <a href="pcb_cooler.jsp?idcpu=<%=idcpu%>">
                                <input type="button" class="btnseleccionar" value="Añadir">
                            </a>
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
            </div>
            
            <!-- Barrita lateral -->
            <div class="divdelabarralateral">    
                <div class="sticky-top" id="colorcito">
                    <div class="listapendiente">
                        1. <del>Marca del procesador</del><br>
                        2. Procesador<br>
                        3. Disipador<br>
                        4. Motherboard<br>
                        5. Tarjeta Gráfica<br>
                        6. Memoria RAM<br>
                        7. Disco Duro HDD<br>
                        8. Disco Duro SSD<br>
                        9. Fuente de Poder<br>
                        10. Gabinete
                    </div>
                    
                    <div class="totalprecio">
                        <div class="imgdinero">
                            <img src="iconos\dinero.png" alt="dinero" />
                        </div>
                        <div>
                            Precio total<br>
                            $0
                        </div>                        
                    </div>    
                </div>
            </div>
        </div>
                
        <!-- Aqui va el footer -->
        <div class="fottertemporal">
            asd
        </div>
    </body>
</html>
