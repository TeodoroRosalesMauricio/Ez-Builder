<%-- 
    Document   : pcb_final
    Created on : 31 mar. 2022, 14:24:09
    Author     : Mauricio
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="conexion.Base"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>PC-Builder Revisar</title>
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
                
        <%
            int idbuild = 0;
            
            String nombre = request.getParameter("nombre");
            //String nombre = "juan";  
            
            Base bd = new Base();
            
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
                
                String strQry2 = "update pc_builder set name_build = '"+nombre+"' "
                        + "where id_build = '"+idbuild+"' ;";

                bd.edita(strQry2);  
            }
            catch(Exception XD){
                out.print(XD.getMessage());
            }
        %>
        
        <div class="divproductosdos">
            <div class="instrucciondos">
                <div class="imginstruccion">
                    <img src="iconos\pc_1.png" alt="pc" />
                </div>
                <div class="instruccionletras">       
                        Revisa tu ensamblaje             
                </div>
            </div>
            
            <div class="listaprods">
            <%

                
                try {
                    bd.conectar();
            %>
            <%    
                    String strQry1 = "select img_prod,nom_prod,nucl_cpu,graph_cpu,frecbase_cpu,producto.prec_prod from procesador "
                            + "inner join pc_builder on procesador.id_cpu = pc_builder.id_cpu "
                            + "inner join producto on producto.id_prod = procesador.id_prod "
                            + "where id_build = '"+idbuild+"' and id_cli = '"+id+"' ;";
                    ResultSet rs1 = null;
                    rs1 = bd.consulta(strQry1);

                    rs1.next();
            %>                   
                    <div class="info_prod">
                        <div class="divimg_prod"> 
                            <img src="imgs/productos/<%=rs1.getString(1)%>" >
                        </div>

                        <!-- lista de productos -->
                        <div class="detalles">
                            <label class="titulodelprodselect">
                                <%=rs1.getString(2)%>
                            </label>
                            <br>
                            Cantidad de núcleos: <b><%=rs1.getString(3)%></b><br>
                            Gráficos integrados: <b><%=rs1.getString(4)%></b><br>                         
                            Frecuencia: <b><%=rs1.getString(5)%></b>                             
                        </div>
                        <div class="presio">
                            <br><br>
                            Precio:
                            <label class="titulodelprodselect">
                                $<%=rs1.getString(6)%>
                            </label>                           
                        </div>
                    </div>
                            
            <%
                String strQryid = "select cooler.id_cooler from cooler "
                        + "inner join pc_builder on cooler.id_cooler = pc_builder.id_cooler "
                        + "where id_build = '"+idbuild+"' and id_cli = '"+id+"' ;";
                ResultSet rsid = null;
                rsid = bd.consulta(strQryid);

                rsid.next();
                
                int iddelcooler = Integer.parseInt(rsid.getString(1));
                
                if(iddelcooler == 1){
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
                        </div>
                    </div>
                    <%
                }
                else{
                    String strQry2 = "select img_prod,nom_prod,socket_cooler,producto.prec_prod from cooler "
                            + "inner join pc_builder on cooler.id_cooler = pc_builder.id_cooler "
                            + "inner join producto on producto.id_prod = cooler.id_prod "
                            + "where id_build = '"+idbuild+"' and id_cli = '"+id+"' ;";
                    ResultSet rs2 = null;
                    rs2 = bd.consulta(strQry2);

                    rs2.next();
            %>
                    <div class="info_prod">
                        <div class="divimg_prod"> 
                            <img src="imgs/productos/<%=rs2.getString(1)%>" >
                        </div>

                        <!-- lista de productos -->
                        <div class="detalles">
                            <label class="titulodelprodselect">
                                <%=rs2.getString(2)%>
                            </label>
                            <br>
                            Sockets compatibles: <b><%=rs2.getString(3)%></b><br>                                                    
                        </div>
                        <div class="presio">
                            <br>
                            Precio:
                            <label class="titulodelprodselect">
                                $<%=rs2.getString(4)%>
                            </label>
                        </div>
                    </div>
                            
            <%  }  
                    String strQry3 = "select img_prod,nom_prod,forma_mobo,platf_mobo,chipset_mobo,maxram_mobo,producto.prec_prod from mobo "
                            + "inner join pc_builder on mobo.id_mobo = pc_builder.id_mobo "
                            + "inner join producto on producto.id_prod = mobo.id_prod "
                            + "where id_build = '"+idbuild+"' and id_cli = '"+id+"' ;";
                    ResultSet rs3 = null;
                    rs3 = bd.consulta(strQry3);

                    rs3.next();
            %>
                    <div class="info_prod">
                        <div class="divimg_prod"> 
                            <img src="imgs/productos/<%=rs3.getString(1)%>" >
                        </div>

                        <!-- lista de productos -->
                        <div class="detalles">
                            <label class="titulodelprodselect">
                                <%=rs3.getString(2)%>
                            </label>
                            <br>
                            Factor de forma: <b><%=rs3.getString(3)%></b><br>
                            Plataforma: <b><%=rs3.getString(4)%></b><br>                         
                            Chipset: <b><%=rs3.getString(5)%></b><br>  
                            Memoria RAM máxima: <b><%=rs3.getString(6)%></b>
                        </div>
                        <div class="presio">
                            <br>
                            Precio:
                            <label class="titulodelprodselect">
                                $<%=rs3.getString(7)%>
                            </label>
                        </div>
                    </div>
                                
            <%    
                    String strQry4 = "select img_prod,nom_prod,memoria_gpu,tipomem_gpu,fboost,producto.prec_prod from tar_grafica "
                            + "inner join pc_builder on tar_grafica.id_gpu = pc_builder.id_gpu "
                            + "inner join producto on producto.id_prod = tar_grafica.id_prod "
                            + "where id_build = '"+idbuild+"' and id_cli = '"+id+"' ;";
                    ResultSet rs4 = null;
                    rs4 = bd.consulta(strQry4);

                    rs4.next();
            %>
                    <div class="info_prod">
                        <div class="divimg_prod"> 
                            <img src="imgs/productos/<%=rs4.getString(1)%>" >
                        </div>

                        <!-- lista de productos -->
                        <div class="detalles">
                            <label class="titulodelprodselect">
                                <%=rs4.getString(2)%>
                            </label>
                            <br>
                            Memoria: <b><%=rs4.getString(3)%></b><br>
                            Tipo de memoria: <b><%=rs4.getString(4)%></b><br> 
                            Frecuencia máxima: <b><%=rs4.getString(5)%></b><br> 
                        </div>
                        <div class="presio">
                            <br>
                            Precio:
                            <label class="titulodelprodselect">
                                $<%=rs4.getString(6)%>
                            </label>
                        </div>
                    </div>
                                
            <%    
                    String strQry5 = "select img_prod,nom_prod,tam_ram,vel_ram,tipo_ram,producto.prec_prod,select_ram  from ram "
                            + "inner join pc_builder on ram.id_ram = pc_builder.id_ram "
                            + "inner join producto on producto.id_prod = ram.id_prod "
                            + "where id_build = '"+idbuild+"' and id_cli = '"+id+"' ;";
                    ResultSet rs5 = null;
                    rs5 = bd.consulta(strQry5);

                    rs5.next();
            %>
                    <div class="info_prod">
                        <div class="divimg_prod"> 
                            <img src="imgs/productos/<%=rs5.getString(1)%>" >
                        </div>

                        <!-- lista de productos -->
                        <div class="detalles">
                            <label class="titulodelprodselect">
                                <%=rs5.getString(2)%>
                            </label>
                            <br>
                            Memoria: <b><%=rs5.getString(3)%></b><br>
                            Frecuencia: <b><%=rs5.getString(4)%></b><br> 
                            Tipo de memoria: <b><%=rs5.getString(5)%></b><br> 
                        </div>
                        <div class="presio">
                            <br>
                            Precio:
                            <label class="titulodelprodselect">
                                $<%=rs5.getString(6)%>
                            </label>
                            <br>
                            No. módulos:
                            <label class="titulodelprodselect">
                                <%=rs5.getString(7)%>
                            </label>
                        </div>
                    </div>
                                
            <%    
                    String strQry6 = "select img_prod,nom_prod,cap_hdd,vel_hdd,interf_hdd,producto.prec_prod from hdd "
                            + "inner join pc_builder on hdd.id_hdd = pc_builder.id_hdd "
                            + "inner join producto on producto.id_prod = hdd.id_prod "
                            + "where id_build = '"+idbuild+"' and id_cli = '"+id+"' ;";
                    ResultSet rs6 = null;
                    rs6 = bd.consulta(strQry6);

                    rs6.next();
            %>
                    <div class="info_prod">
                        <div class="divimg_prod"> 
                            <img src="imgs/productos/<%=rs6.getString(1)%>" >
                        </div>

                        <!-- lista de productos -->
                        <div class="detalles">
                            <label class="titulodelprodselect">
                                <%=rs6.getString(2)%>
                            </label>
                            <br>
                            Almacenamiento: <b><%=rs6.getString(3)%></b><br>
                            Velocidad: <b><%=rs6.getString(4)%></b><br> 
                            Interfaz: <b><%=rs6.getString(5)%></b><br> 
                        </div>
                        <div class="presio">
                            <br>
                            Precio:
                            <label class="titulodelprodselect">
                                $<%=rs6.getString(6)%>
                            </label>
                        </div>
                    </div>
                                
            <%    
                    String strQry7 = "select img_prod,nom_prod,cap_ssd,interf_ssd,vlec_ssd,vesc_ssd,producto.prec_prod from ssd "
                            + "inner join pc_builder on ssd.id_ssd = pc_builder.id_ssd "
                            + "inner join producto on producto.id_prod = ssd.id_prod "
                            + "where id_build = '"+idbuild+"' and id_cli = '"+id+"' ;";
                    ResultSet rs7 = null;
                    rs7 = bd.consulta(strQry7);

                    rs7.next();
            %>
                    <div class="info_prod">
                        <div class="divimg_prod"> 
                            <img src="imgs/productos/<%=rs7.getString(1)%>" >
                        </div>

                        <!-- lista de productos -->
                        <div class="detalles">
                            <label class="titulodelprodselect">
                                <%=rs7.getString(2)%>
                            </label>
                            <br>
                            Almacenamiento: <b><%=rs7.getString(3)%></b><br>
                            Interfaz: <b><%=rs7.getString(4)%></b><br> 
                            Vel. de lectura: <b><%=rs7.getString(5)%></b><br>
                            Vel. de escritura: <b><%=rs7.getString(6)%></b> 
                        </div>
                        <div class="presio">
                            <br>
                            Precio:
                            <label class="titulodelprodselect">
                                $<%=rs7.getString(7)%>
                            </label>
                        </div>
                    </div>
                                
            <%    
                    String strQry8 = "select img_prod,nom_prod,potencia_psu,plus80_psu,forma_psu,producto.prec_prod from fuentepoder "
                            + "inner join pc_builder on fuentepoder.id_psu = pc_builder.id_psu "
                            + "inner join producto on producto.id_prod = fuentepoder.id_prod "
                            + "where id_build = '"+idbuild+"' and id_cli = '"+id+"' ;";
                    ResultSet rs8 = null;
                    rs8 = bd.consulta(strQry8);

                    rs8.next();
            %>
                    <div class="info_prod">
                        <div class="divimg_prod"> 
                            <img src="imgs/productos/<%=rs8.getString(1)%>" >
                        </div>

                        <!-- lista de productos -->
                        <div class="detalles">
                            <label class="titulodelprodselect">
                                <%=rs8.getString(2)%>
                            </label>
                            <br>
                            Potencia: <b><%=rs8.getString(3)%></b><br>
                            Certificación 80 PLUS: <b><%=rs8.getString(4)%></b><br> 
                            Factor de forma: <b><%=rs8.getString(5)%></b>                           
                        </div>
                        <div class="presio">
                            <br>
                            Precio:
                            <label class="titulodelprodselect">
                                $<%=rs8.getString(6)%>
                            </label>  
                        </div>
                    </div>
                                
            <%    
                    String strQry9 = "select img_prod,nom_prod,forma_case,mbocomp_case,producto.prec_prod from gabinete "
                            + "inner join pc_builder on gabinete.id_case = pc_builder.id_case "
                            + "inner join producto on producto.id_prod = gabinete.id_prod "
                            + "where id_build = '"+idbuild+"' and id_cli = '"+id+"' ;";
                    ResultSet rs9 = null;
                    rs9 = bd.consulta(strQry9);

                    rs9.next();
            %>
                    <div class="info_prod">
                        <div class="divimg_prod"> 
                            <img src="imgs/productos/<%=rs9.getString(1)%>" >
                        </div>

                        <!-- lista de productos -->
                        <div class="detalles">
                            <label class="titulodelprodselect">
                                <%=rs9.getString(2)%>
                            </label>
                            <br>
                            Factor de forma: <b><%=rs9.getString(3)%></b><br>
                            Tarjetas madre soportdas: <b><%=rs9.getString(4)%></b><br>                         
                        </div>
                        <div class="presio">
                            <br>
                            Precio:
                            <label class="titulodelprodselect">
                                $<%=rs9.getString(5)%>
                            </label>
                        </div>
                    </div>
                                
            <%                                
                } catch (Exception ex) {
                    out.print(ex.getMessage());
                }
            %>
            </div>
            
            <div class="botonesfinales">
                <div class="centrarbtns">
                    <a href="mis_ensamblajes.jsp">
                        <input type="button" class="btnfinales" value="Ver mis ensamblajes">
                    </a>
                </div>
                <div class="centrarbtns">
                    <a href="pasa_build.jsp">
                        <input type="button" class="btnfinales" value="Crear otro ensamblaje">
                    </a>
                </div>
            </div>
        </div>
    </body>
</html>
