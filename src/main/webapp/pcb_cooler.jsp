<%-- 
    Document   : pcb_cooler
    Created on : 27 mar. 2022, 14:34:15
    Author     : Mauricio
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="conexion.Base"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>PC-Builder Cooler</title>
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

            int idcpu = Integer.parseInt(request.getParameter("idcpu"));
                
                
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
                
                String strQry2 = "update pc_builder set id_cpu = '"+idcpu+"' "
                        + "where id_build = '"+idbuild+"' ;";

                bd.edita(strQry2);
            }
            catch(Exception XD){
                out.print(XD.getMessage());
            }
        %>
                
        <!-- Pagina de seleccion de cpu -->
        <div class="divseleccion">
            <div class="seleccionar">
                
                <!-- Instrucción -->
                <div class="instruccion">
                    <div class="imginstruccion">
                        <img src="iconos\cooler_3.png" alt="cooler" />
                    </div>
                    <div class="instruccionletras">       
                            3. Elige un disipador             
                    </div>
                </div>
                
                <!-- div de la lista de productos -->
                <div class="listaprods">
                    
            <%           
                int idcooler2 = 1;
                
                try{
                    bd.conectar();
                    String strQry2 = "select cooler_cpu from procesador where id_cpu = '"+idcpu+"' ;";
                    ResultSet rs2 = null;
                    rs2 = bd.consulta(strQry2);
                    
                    rs2.next();
                    if (rs2.getString(1).equals("Sí")) {
            %>
            
                    <div class="info_prod">
                        <div class="divimg_prod"> 
                            <img src="iconos\cooler_2.png" >
                        </div>

                        <!-- lista de productos -->
                        <div class="detalles">
                            <label class="instruccionletras">
                                Usar el disipador de stock
                            </label>
                        </div>
                        <div class="presio">
                            <br>
                            Precio:
                            <label class="titulodelprodselect">
                                $0
                            </label>
                            
                            <a href="pcb_mobo.jsp?idcooler=<%=idcooler2%>">
                                <input type="button" class="btnseleccionar" value="Aceptar">
                            </a>
                        </div>
                    </div>
                    
            <%
                    }
                    bd.conectar();
                    String strQry = "select id_cooler,img_prod,nom_prod,socket_cooler,prec_prod from producto "
                            + "inner join cooler on producto.id_prod = cooler.id_prod "
                            + "where id_cooler != 1 "
                            + "order by prec_prod asc;";
                    ResultSet rs = null;
                    rs = bd.consulta(strQry);

                    int idcooler;

                    while (rs.next()) {
                        idcooler = Integer.parseInt(rs.getString(1));
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
                            Sockets compatibles: <b><%=rs.getString(4)%></b><br>                                                    
                        </div>
                        <div class="presio">
                            <br>
                            Precio:
                            <label class="titulodelprodselect">
                                $<%=rs.getString(5)%>
                            </label>
                            
                            <a href="pcb_mobo.jsp?idcooler=<%=idcooler%>">
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
                        2. <del>Procesador</del><br>
                        3. Disipador<br>
                        4. Motherboard<br>
                        5. Tarjeta Gráfica<br>
                        6. Memoria RAM<br>
                        7. Disco Duro HDD<br>
                        8. Disco Duro SSD<br>
                        9. Fuente de Poder<br>
                        10. Gabinete
                    </div>
        <%
            try{
                bd.conectar();
                
                String strQry1 = "select ("
                        + "(select producto.prec_prod from procesador "
                        + "inner join pc_builder on procesador.id_cpu = pc_builder.id_cpu "
                        + "inner join producto on producto.id_prod = procesador.id_prod "
                        + "where id_build = '"+idbuild+"' and id_cli = '"+id+"') "
                        + ") AS total;";
                ResultSet rs = null;
                rs = bd.consulta(strQry1);
                    
                rs.next();
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
