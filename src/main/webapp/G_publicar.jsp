<%-- 
    Document   : principal
    Created on : 4 nov. 2021, 12:45:52
    Author     : omarc
--%>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
<%@page import="java.sql.ResultSet"%>
<%@page import="conexion.Base"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Publicar</title>
        <link rel="stylesheet" type="text/css" href="estilos/dropdown/default.css" />
        <link rel="stylesheet" type="text/css" href="estilos/dropdown/component.css" />
        <script src="scripts/dropdown/modernizr.custom.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
        <link rel="stylesheet" href="estilos/barra.css">
        <link rel="stylesheet" href="estilos/principal.css">
        <link rel="stylesheet" href="estilos/gestion.css">
        <link rel="stylesheet" href="estilos/pc_build.css">
        <link rel="shortcut icon" href="imgs/gabinete_white.png">
    </head>
    <script src="https://kit.fontawesome.com/40eeeaf3f3.js" crossorigin="anonymous"></script>
    <body>

        <%
            HttpSession miSessiondelUsuario = (HttpSession) request.getSession();
            int id = (int) (miSessiondelUsuario.getAttribute("id") == null ? 0 : miSessiondelUsuario.getAttribute("id"));

        %>
        <%            String nombre = request.getParameter("nombre");
            String sku = request.getParameter("sku");
            String precio = request.getParameter("precio");
            String stock = request.getParameter("stock");
            String dispositivo = request.getParameter("dispositivo");
            String descripcion = request.getParameter("descripcion");
            String vacio = "";

            if (!nombre.equals("") && !sku.equals("") && !precio.equals("")
                    && !stock.equals("") && !dispositivo.equals("") && !descripcion.equals("")) {

                Base bd = new Base();

                try {
                    bd.conectar();
                    String strQry1 = "insert into producto (sku_prod, nom_prod, prec_prod, stock_prod, des_prod, device_prod, img_prod, img1_prod, img2_prod, img3_prod)"
                            + "values('" + sku + "' , '" + nombre + "' , '" + precio + "' , '" + stock + "' , '" + descripcion + "' , '" + dispositivo + "' , '" + vacio + "' , '" + vacio + "' , '" + vacio + "' , '" + vacio + "' );";

                    int resultadoInsert = bd.insertar(strQry1);
                    
                    String strQry2 = "select id_prod from producto order by id_prod desc limit 1;";
                    ResultSet rs2 = null;
                    rs2 = bd.consulta(strQry2);
                    
                    String id_productito;
                    rs2.next();
                    id_productito = rs2.getString(1);
                    
                    String strQry3 = "insert into vendedorprod (id_ven, id_prod) "
                            + "values('"+id+"' , '"+id_productito+"' );";

                    bd.insertar(strQry3);
                    //out.print("checar resultado de la base " + resultadoInsert);


        %>


        <!-- Barra superior -->
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


        <!-- Div general -->
        <div class="uno">

            <!-- Div titulo -->
            <div class="dos">
                <div class="espacio"></div>
                <center>
                    ¿Que deseas publicar?
                </center>
            </div>



            <div class="tres">

                <!-- Div inferior 
                    <div class="fondonegro"></div>
                    
                    <div class="cuatro">
                    
                <!-- Div de botones  Derecha
                <a href="G_fcpu.jsp">
                    <div class="A1">

                            <center>
                            CPU
                            <br><br>
                            <img src="iconos/cpu.png" alt="" class="pictureCA"/>
                            </center>

                    </div>
                </a>
                
                
                
                <a href="gpu.jsp">
                    <div class="A2">

                            <center>
                            GPU
                            <br><br>
                            <img src="iconos/gpu.png" alt="" class="pictureCA"/>
                            </center>

                    </div>  
                </a>
                
                
                
                <a href="ssd.jsp">
                <div class="BI">
            
                        <center>
                        SSD
                        <br><br>
                        <img src="iconos/ssd.png" alt="" class="pictureCA"/>
                        </center>
            
                </div>
                </a>
                
                
                
                <a href="hdd.jsp">
                    <div class="BD">

                            <center>
                            HDD
                            <br><br>
                            <img src="iconos/hdd.png" alt="" class="pictureCA"/>
                            </center>

                    </div>
                </a>
                
            </div>
            
            
                <!-- Div de botones  Izquierda
                <div class="cinco">
                    
                    
                    <a href="G_fgabi.jsp">
                        <div class="A1">

                                <center>
                                Gabinete
                                <br><br>
                                <img src="iconos/gabinete.png" alt="" class="pictureCA"/>
                                </center>

                        </div> 
                    </a>
                        
                    
                    
                    <a href="ram.jsp">
                        <div class="A2">

                                <center>
                                RAM
                                <br><br>
                                <img src="iconos/ram.png" alt="" class="pictureCA"/>
                                </center>

                        </div>
                    </a>
                        
                    
                    
                    <a href="psu.jsp">
                        <div class="A3">

                                <center>
                                PSU
                                <br><br>
                                <img src="iconos/pws.png" alt="" class="pictureCA"/>
                                </center>

                        </div>  
                    </a>
                        
                    
                    
                    <a href="G_fmbo.jsp">
                        <div class="BI">

                                <center>
                                MBO
                                <br><br>
                                <img src="iconos/motherboard.png" alt="" class="pictureCA"/>
                                </center>

                        </div>
                    </a>
                    
                    
                    
                    <a href="G_fcoo.jsp">
                        <div class="BD">

                                <center>
                                Cooler
                                <br><br>
                                <img src="iconos/cooler_3.png" alt="" class="pictureCA"/>
                                </center>

                        </div>
                    </a>
                    
                </div>
                
            </div>
            
        </div>
        
                -->


                <div class="imagenes"> 


                    <a href="G_fcpu.jsp">
                        <div class="cuadrito" style="margin-bottom: 20px; height: 300px"> 
                            <div class="letrasmasnorm">Procesador</div> 
                            <div class="img_div"> 
                                <img src="iconos\cpu.png" alt="CPU" /> 
                            </div>   
                        </div> 
                    </a>

                    <a href="G_fcoo.jsp">
                        <div class="cuadrito" style="margin-bottom: 20px; height: 300px"> 
                            <div class="letrasmasnorm">Disipador</div> 
                            <div class="img_div"> 
                                <img src="iconos\cooler1.png" alt="Disipador" /> 
                            </div> 
                        </div> 
                    </a>


                    <a href="G_fmbo.jsp">
                        <div class="cuadrito" style="margin-bottom: 20px; height: 300px"> 
                            <div class="letrasmasnorm">Motherboard</div> 
                            <div class="img_div"> 
                                <img src="iconos\motherboard.png" alt="Motherboard" /> 
                            </div> 
                        </div> 
                    </a>

                    <a href="G_fgpu.jsp">
                        <div class="cuadrito" style="margin-bottom: 20px; height: 300px"> 
                            <div class="letrasmasnorm">Tarjeta Gráfica</div> 
                            <div class="img_div"> 
                                <img src="iconos\gpu.png" alt="GPU" /> 
                            </div>  
                        </div> 
                    </a>

                    <a href="G_fram.jsp">
                        <div class="cuadrito" style="margin-bottom: 20px; height: 300px"> 
                            <div class="letrasmasnorm">Memoria RAM</div> 
                            <div class="img_div"> 
                                <img src="iconos\ram.png" alt="RAM" /> 
                            </div> 
                        </div> 
                    </a>

                    <a href="G_ffp.jsp">
                        <div class="cuadrito" style="margin-bottom: 20px; height: 300px"> 
                            <div class="letrasmasnorm">Fuente de Poder</div> 
                            <div class="img_div"> 
                                <img src="iconos\pws.png" alt="Fuente" /> 
                            </div> 
                        </div> 
                    </a>

                    <a href="G_fhdd.jsp">
                        <div class="cuadrito" style="margin-bottom: 20px; height: 300px"> 
                            <div class="letrasmasnorm">Disco Duro HDD</div> 
                            <div class="img_div"> 
                                <img src="iconos\hdd.png" alt="HDD" /> 
                            </div>  
                        </div> 
                    </a>

                    <a href="G_fssd.jsp">
                        <div class="cuadrito" style="margin-bottom: 20px; height: 300px"> 
                            <div class="letrasmasnorm">SSD</div> 
                            <div class="img_div"> 
                                <img src="iconos\ssd.png" alt="SSD" /> 
                            </div>  
                        </div> 
                    </a>

                    <a href="G_fgabi.jsp">
                        <div class="cuadrito" style="margin-bottom: 20px; height: 300px"> 
                            <div class="letrasmasnorm">Gabinete</div> 
                            <div class="img_div"> 
                                <img src="iconos\gabinete2.png" alt="Gabinete" /> 
                            </div> 
                        </div> 
                    </a>    

                    <a href="G_flap.jsp">
                        <div class="cuadrito" style="margin-bottom: 20px; height: 300px"> 
                            <div class="letrasmasnorm">Laptop</div> 
                            <div class="img_div"> 
                                <img src="iconos\ordenador-portatil.png" alt="Laptop" /> 
                            </div>  
                        </div> 
                    </a>

                    <a href="G_fpc.jsp">
                        <div class="cuadrito" style="margin-bottom: 20px; height: 300px"> 
                            <div class="letrasmasnorm">PC</div> 
                            <div class="img_div"> 
                                <img src="iconos\pc_1.png" alt="Pc" /> 
                            </div> 
                        </div> 
                    </a>

                </div>
            </div>
        </div>



        <%                } catch (Exception juan) {
                    out.print(juan.getMessage());
                }
            }
        %>

    </body>
</html>
