<%-- 
    Document   : pcb_final
    Created on : 30 mar. 2022, 15:20:58
    Author     : Mauricio
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="conexion.Base"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>PC-Builder Nombre</title>
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
                
        <%

            int idcase = Integer.parseInt(request.getParameter("idcase"));
            //int idcase = 1;  
                
            Base bd = new Base();
            int idbuild = 0;
            try{
                bd.conectar();
                
                String strQry1 = "select id_build from cliente "
                        + "inner join pc_builder on cliente.id_cli = pc_builder.id_cli "
                        + "where cliente.id_cli = '"+id+"' "
                        + "order by id_build desc limit 1;";
                ResultSet rs = null;
                rs = bd.consulta(strQry1);
                    
                rs.next();
                
                idbuild = Integer.parseInt(rs.getString(1));
                
                String strQry2 = "update pc_builder set id_case = '"+idcase+"' "
                        + "where id_build = '"+idbuild+"' ;";

                bd.edita(strQry2);  
            }
            catch(Exception XD){
                out.print(XD.getMessage());
            }
        %>
               
        <!-- Pagina de seleccion de cpu -->
        <div class="divseleccion">
            <div class="seleccionarZzz">
                
                <!-- Instrucción -->
                <div class="instruccion">
                    <div class="imginstruccion">
                        <img src="iconos\pc_1.png" alt="pc" />
                    </div>
                    <div class="instruccionletras">       
                            ¡Excelente ensamblaje!             
                    </div>
                </div>
                
                <!-- div de la lista de productos -->
                <div class="listaprods">                                              
                      
                    <div class="nombreselect">
                        <form name="nombre" method="post" action="pcb_final.jsp">    
                            
                            <label>Ingresa un nombre para tu configuración</label>
                            <br>
                            <input class="textonombre" type="text" name="nombre" required maxlength="20" size="9">
                            <br><br>
                            <button class="btnseleccionar" type="submit">Aceptar</button>
                            
                        </form>
                    </div>                         
                </div>
            </div>
            
            <!-- Barrita lateral -->
            <div class="divdelabarralateral">    
                <div class="sticky-top" id="colorcito">
                    <div class="listapendiente">
                        1. <del>Marca del procesador</del><br>
                        2. <del>Procesador</del><br>
                        3. <del>Disipador</del><br>
                        4. <del>Motherboard</del><br>
                        5. <del>Tarjeta Gráfica</del><br>
                        6. <del>Memoria RAM</del><br>
                        7. <del>Disco Duro HDD</del><br>
                        8. <del>Disco Duro SSD</del><br>
                        9. <del>Fuente de Poder</del><br>
                        10. <del>Gabinete</del>
                    </div>
                    
        <%
            try{
                bd.conectar();
                
                String strQry1 = "select ("
                        + "(select producto.prec_prod from procesador "
                        + "inner join pc_builder on procesador.id_cpu = pc_builder.id_cpu "
                        + "inner join producto on producto.id_prod = procesador.id_prod "
                        + "where id_build = '"+idbuild+"' and id_cli = '"+id+"') "
                        + "+ "
                        + "(select producto.prec_prod from cooler "
                        + "inner join pc_builder on cooler.id_cooler = pc_builder.id_cooler "
                        + "inner join producto on producto.id_prod = cooler.id_prod "
                        + "where id_build = '"+idbuild+"' and id_cli = '"+id+"') "
                        + "+ "
                        + "(select producto.prec_prod from mobo "
                        + "inner join pc_builder on mobo.id_mobo = pc_builder.id_mobo "
                        + "inner join producto on producto.id_prod = mobo.id_prod "
                        + "where id_build = '"+idbuild+"' and id_cli = '"+id+"') "
                        + "+ "
                        + "(select producto.prec_prod from tar_grafica "
                        + "inner join pc_builder on tar_grafica.id_gpu = pc_builder.id_gpu "
                        + "inner join producto on producto.id_prod = tar_grafica.id_prod "
                        + "where id_build = '"+idbuild+"' and id_cli = '"+id+"') "
                        + "+ "
                        + "(select (producto.prec_prod * pc_builder.select_ram) from ram "
                        + "inner join pc_builder on ram.id_ram = pc_builder.id_ram "
                        + "inner join producto on producto.id_prod = ram.id_prod "
                        + "where id_build = '"+idbuild+"' and id_cli = '"+id+"') "
                        + "+ "
                        + "(select producto.prec_prod from hdd "
                        + "inner join pc_builder on hdd.id_hdd = pc_builder.id_hdd "
                        + "inner join producto on producto.id_prod = hdd.id_prod "
                        + "where id_build = '"+idbuild+"' and id_cli = '"+id+"') "
                        + "+ "
                        + "(select producto.prec_prod from ssd "
                        + "inner join pc_builder on ssd.id_ssd = pc_builder.id_ssd "
                        + "inner join producto on producto.id_prod = ssd.id_prod "
                        + "where id_build = '"+idbuild+"' and id_cli = '"+id+"') "
                        + "+ "
                        + "(select producto.prec_prod from fuentepoder "
                        + "inner join pc_builder on fuentepoder.id_psu = pc_builder.id_psu "
                        + "inner join producto on producto.id_prod = fuentepoder.id_prod "
                        + "where id_build = '"+idbuild+"' and id_cli = '"+id+"') "
                        + "+ "
                        + "(select producto.prec_prod from gabinete "
                        + "inner join pc_builder on gabinete.id_case = pc_builder.id_case "
                        + "inner join producto on producto.id_prod = gabinete.id_prod "
                        + "where id_build = '"+idbuild+"' and id_cli = '"+id+"') "
                        + ") AS total;";
                ResultSet rs = null;
                rs = bd.consulta(strQry1);
                    
                rs.next();
                
                int presio = Integer.parseInt(rs.getString(1));
                
                String strQry2 = "update pc_builder set prec_prod = '"+presio+"' "
                        + "where id_build = '"+idbuild+"' ;";

                bd.edita(strQry2); 
        %>
                    
                    <div class="totalprecio">
                        <div class="imgdinero">
                            <img src="iconos\dinero.png" alt="dinero" />
                        </div>
                        <div>
                            Precio total<br>
                            $<%=rs.getString(1)%>
                        </div>                        
                    </div>    
                </div>
            </div>
        </div>
        
        <%
            }
            catch(Exception XD){
                out.print(XD.getMessage());
            }
        %>
                        
        <!-- Aqui va el footer -->
        <div class="fottertemporal">
            asd
        </div>
    </body>
</html>
