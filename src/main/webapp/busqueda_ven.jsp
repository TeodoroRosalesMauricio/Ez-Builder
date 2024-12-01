<%-- 
    Document   : busqueda_ven
    Created on : 14 may. 2022, 19:33:22
    Author     : Mauricio
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="conexion.Base"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Busqueda</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
        <link rel="stylesheet" href="estilos/barra.css">
        <link rel="shortcut icon" href="imgs/gabinete_white.png">
        <link rel="stylesheet" href="estilos/busqueda.css">
        <link rel="stylesheet" type="text/css" href="estilos/dropdown/default.css" />
        <link rel="stylesheet" type="text/css" href="estilos/dropdown/component.css" />
        <script src="scripts/dropdown/modernizr.custom.js"></script>
        <script src="https://kit.fontawesome.com/40eeeaf3f3.js" crossorigin="anonymous"></script>
    </head>


    <body>
        <%
            String busqueda = request.getParameter("busqueda");
        %>
        <%
        HttpSession miSessiondelUsuario = (HttpSession) request.getSession();
        int id = (int) (miSessiondelUsuario.getAttribute("id") == null ? 0 : miSessiondelUsuario.getAttribute("id"));

    %>
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
                


        <!-- División que contendrá el listado con las casas -->
        <div class="listado_prod">
            <%

                Base bd = new Base();
                try {
                    bd.conectar();
             
                    String strQry1 = "select producto.id_prod,nom_prod,prec_prod,img_prod,gabinete.forma_case,mbocomp_case,psu_case,id_case from producto "
                            + "inner join gabinete on producto.id_prod = gabinete.id_prod " 
                            + "where producto.nom_prod like '%"+busqueda+"%' or producto.nom_prod like '%"+busqueda+"%' or producto.prec_prod like '%"+busqueda+"%' or producto.des_prod like '%"+busqueda+"%' or producto.device_prod like '%"+busqueda+"%' "
                            + ";";
                    ResultSet rs1 = null;
                    rs1 = bd.consulta(strQry1);
                    
                    String strQry2 = "select producto.id_prod,nom_prod,prec_prod,img_prod,cooler.ruido_cooler,socket_cooler,nfan_cooler,id_cooler from producto "
                            + "inner join cooler on producto.id_prod = cooler.id_prod "
                            + "where producto.nom_prod like '%"+busqueda+"%' or producto.nom_prod like '%"+busqueda+"%' or producto.prec_prod like '%"+busqueda+"%' or producto.des_prod like '%"+busqueda+"%' or producto.device_prod like '%"+busqueda+"%' "
                            + ";";
                    ResultSet rs2 = null;
                    rs2 = bd.consulta(strQry2);
                    
                    String strQry3 = "select producto.id_prod,nom_prod,prec_prod,img_prod,procesador.nucl_cpu,graph_cpu,frecbase_cpu,id_cpu from producto "
                            + "inner join procesador on producto.id_prod = procesador.id_prod "
                            + "where producto.nom_prod like '%"+busqueda+"%' or producto.nom_prod like '%"+busqueda+"%' or producto.prec_prod like '%"+busqueda+"%' or producto.des_prod like '%"+busqueda+"%' or producto.device_prod like '%"+busqueda+"%' "
                            + ";";
                    ResultSet rs3 = null;
                    rs3 = bd.consulta(strQry3);
                    
                    String strQry4 = "select producto.id_prod,nom_prod,prec_prod,img_prod,tar_grafica.memoria_gpu,tipomem_gpu,fboost,id_gpu from producto "
                            + "inner join tar_grafica on producto.id_prod = tar_grafica.id_prod "
                            + "where producto.nom_prod like '%"+busqueda+"%' or producto.nom_prod like '%"+busqueda+"%' or producto.prec_prod like '%"+busqueda+"%' or producto.des_prod like '%"+busqueda+"%' or producto.device_prod like '%"+busqueda+"%' "
                            + ";";
                    ResultSet rs4 = null;
                    rs4 = bd.consulta(strQry4);
                    
                    String strQry5 = "select producto.id_prod,nom_prod,prec_prod,img_prod,hdd.cap_hdd,vel_hdd,interf_hdd,id_hdd from producto "
                            + "inner join hdd on producto.id_prod = hdd.id_prod "
                            + "where producto.nom_prod like '%"+busqueda+"%' or producto.nom_prod like '%"+busqueda+"%' or producto.prec_prod like '%"+busqueda+"%' or producto.des_prod like '%"+busqueda+"%' or producto.device_prod like '%"+busqueda+"%' "
                            + ";";
                    ResultSet rs5 = null;
                    rs5 = bd.consulta(strQry5);
                    
                    String strQry6 = "select producto.id_prod,nom_prod,prec_prod,img_prod,laptop.cpu_laptop,ram_laptop,disk_laptop,id_laptop from producto "
                            + "inner join laptop on producto.id_prod = laptop.id_prod "
                            + "where producto.nom_prod like '%"+busqueda+"%' or producto.nom_prod like '%"+busqueda+"%' or producto.prec_prod like '%"+busqueda+"%' or producto.des_prod like '%"+busqueda+"%' or producto.device_prod like '%"+busqueda+"%' "
                            + ";";
                    ResultSet rs6 = null;
                    rs6 = bd.consulta(strQry6);
                    
                    String strQry7 = "select producto.id_prod,nom_prod,prec_prod,img_prod,mobo.chipset_mobo,socket_mobo,maxram_mobo,id_mobo from producto "
                            + "inner join mobo on producto.id_prod = mobo.id_prod "
                            + "where producto.nom_prod like '%"+busqueda+"%' or producto.nom_prod like '%"+busqueda+"%' or producto.prec_prod like '%"+busqueda+"%' or producto.des_prod like '%"+busqueda+"%' or producto.device_prod like '%"+busqueda+"%' "
                            + ";";
                    ResultSet rs7 = null;
                    rs7 = bd.consulta(strQry7);
                    
                    String strQry8 = "select producto.id_prod,nom_prod,prec_prod,img_prod,pc.cpu_pc,ram_pc,disk_pc,id_pc from producto "
                            + "inner join pc on producto.id_prod = pc.id_prod "
                            + "where producto.nom_prod like '%"+busqueda+"%' or producto.nom_prod like '%"+busqueda+"%' or producto.prec_prod like '%"+busqueda+"%' or producto.des_prod like '%"+busqueda+"%' or producto.device_prod like '%"+busqueda+"%' "
                            + ";";
                    ResultSet rs8 = null;
                    rs8 = bd.consulta(strQry8);
                    
                    String strQry9 = "select producto.id_prod,nom_prod,prec_prod,img_prod,fuentepoder.potencia_psu,plus80_psu,forma_psu,id_psu from producto "
                            + "inner join fuentepoder on producto.id_prod = fuentepoder.id_prod "
                            + "where producto.nom_prod like '%"+busqueda+"%' or producto.nom_prod like '%"+busqueda+"%' or producto.prec_prod like '%"+busqueda+"%' or producto.des_prod like '%"+busqueda+"%' or producto.device_prod like '%"+busqueda+"%' "
                            + ";";
                    ResultSet rs9 = null;
                    rs9 = bd.consulta(strQry9);
                    
                    String strQry10 = "select producto.id_prod,nom_prod,prec_prod,img_prod,ram.tam_ram,tipo_ram,vel_ram,id_ram from producto "
                            + "inner join ram on producto.id_prod = ram.id_prod "
                            + "where producto.nom_prod like '%"+busqueda+"%' or producto.nom_prod like '%"+busqueda+"%' or producto.prec_prod like '%"+busqueda+"%' or producto.des_prod like '%"+busqueda+"%' or producto.device_prod like '%"+busqueda+"%' "
                            + ";";
                    ResultSet rs10 = null;
                    rs10 = bd.consulta(strQry10);
                    
                    String strQry11 = "select producto.id_prod,nom_prod,prec_prod,img_prod,ssd.cap_ssd,vlec_ssd,vesc_ssd,id_ssd from producto "
                            + "inner join ssd on producto.id_prod = ssd.id_prod "
                            + "where producto.nom_prod like '%"+busqueda+"%' or producto.nom_prod like '%"+busqueda+"%' or producto.prec_prod like '%"+busqueda+"%' or producto.des_prod like '%"+busqueda+"%' or producto.device_prod like '%"+busqueda+"%' "
                            + ";";
                    ResultSet rs11 = null;
                    rs11 = bd.consulta(strQry11);
                    
                    
                    int idprod;
                    %>
            <%
                    while (rs1.next()) {
                        idprod = Integer.parseInt(rs1.getString(1));
            %>

            <div class="tabla_prod">
                <div class="divimg_prod"> 
                    <img src="imgs/productos/<%=rs1.getString(4)%>" >
                </div>

                <div class="table_info">
                    <table class="tablap">
                        <tr>
                            <td class="titulodelprod" colspan="2">
                                <%=rs1.getString(2)%>
                            </td>
                        </tr>
                        <tr>
                            <td class="columna1">
                                Factor de forma: <b><%=rs1.getString(5)%></b><br>
                            </td>
                            <td class="botonyprecio" rowspan="3">
                                <label class="precio" id="precio">
                                    $<%=rs1.getString(3)%>
                                </label>
                                &nbsp;
                                <br>
                                <input type="button" id="ver" class="carritob" value="Ver producto">
                                <a href="vista_case_ven.jsp?idprod=<%=idprod%>">
                                    <input type="button" id="ver" class="carritob" value="Ver producto">
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Motherboards soportadas: <b><%=rs1.getString(6)%></b><br>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Fuente de poder: <b><%=rs1.getString(7)%></b>
                            </td>
                        </tr>



                    </table>
                </div>
            </div>
                            <%
                                }
                                %>
                                
                                <%
                    while (rs2.next()) {
                        idprod = Integer.parseInt(rs2.getString(1));
            %>

            <div class="tabla_prod">
                <div class="divimg_prod"> 
                    <img src="imgs/productos/<%=rs2.getString(4)%>" >
                </div>

                <div class="table_info">
                    <table class="tablap">
                        <tr>
                            <td class="titulodelprod" colspan="2">
                                <%=rs2.getString(2)%>
                            </td>
                        </tr>
                        <tr>
                            <td class="columna1">
                                Nivel de ruido: <b><%=rs2.getString(5)%></b><br>
                            </td>
                            <td class="botonyprecio" rowspan="3">
                                <label class="precio" id="precio">
                                    $<%=rs2.getString(3)%>
                                </label>
                                &nbsp;
                                <br>
                                <input type="button" id="ver" class="carritob" value="Ver producto">
                                <a href="vista_cooler_ven.jsp?idprod=<%=idprod%>">
                                    <input type="button" id="ver" class="carritob" value="Ver producto">
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Sockets compatibles: <b><%=rs2.getString(6)%></b><br>
                            </td>
                        </tr>
                        



                    </table>
                </div>
            </div>
                            <%
                                }
                                %>
                                
                                <%
                    while (rs3.next()) {
                        idprod = Integer.parseInt(rs3.getString(1));
            %>

            <div class="tabla_prod">
                <div class="divimg_prod"> 
                    <img src="imgs/productos/<%=rs3.getString(4)%>" >
                </div>

                <div class="table_info">
                    <table class="tablap">
                        <tr>
                            <td class="titulodelprod" colspan="2">
                                <%=rs3.getString(2)%>
                            </td>
                        </tr>
                        <tr>
                            <td class="columna1">
                                Cantidad de núcleos: <b><%=rs3.getString(5)%></b><br>
                            </td>
                            <td class="botonyprecio" rowspan="3">
                                <label class="precio" id="precio">
                                    $<%=rs3.getString(3)%>
                                </label>
                                &nbsp;
                                
                                <br>
                                <input type="button" id="ver" class="carritob" value="Ver producto">
                                <a href="vista_cpu_ven.jsp?idprod=<%=idprod%>">
                                    <input type="button" id="ver" class="carritob" value="Ver producto">
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Gráficos integrados: <b><%=rs3.getString(6)%></b><br>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Frecuencia: <b><%=rs3.getString(7)%></b>
                            </td>
                        </tr>



                    </table>
                </div>
            </div>
                            <%
                                }
                                %>
                                
                                <%
                    while (rs4.next()) {
                        idprod = Integer.parseInt(rs4.getString(1));
            %>

            <div class="tabla_prod">
                <div class="divimg_prod"> 
                    <img src="imgs/productos/<%=rs4.getString(4)%>" >
                </div>

                <div class="table_info">
                    <table class="tablap">
                        <tr>
                            <td class="titulodelprod" colspan="2">
                                <%=rs4.getString(2)%>
                            </td>
                        </tr>
                        <tr>
                            <td class="columna1">
                                Memoria: <b><%=rs4.getString(5)%></b><br>
                            </td>
                            <td class="botonyprecio" rowspan="3">
                                <label class="precio" id="precio">
                                    $<%=rs4.getString(3)%>
                                </label>
                                &nbsp;
                                
                                <br>
                                <input type="button" id="ver" class="carritob" value="Ver producto">
                                <a href="vista_gpu_ven.jsp?idprod=<%=idprod%>">
                                    <input type="button" id="ver" class="carritob" value="Ver producto">
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Tipo de memoria: <b><%=rs4.getString(6)%></b><br>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Frecuencia máxima: <b><%=rs4.getString(7)%></b>
                            </td>
                        </tr>



                    </table>
                </div>
            </div>
                            <%
                                }
                                %>
                                
                                <%
                    while (rs5.next()) {
                        idprod = Integer.parseInt(rs5.getString(1));
            %>

            <div class="tabla_prod">
                <div class="divimg_prod"> 
                    <img src="imgs/productos/<%=rs5.getString(4)%>" >
                </div>

                <div class="table_info">
                    <table class="tablap">
                        <tr>
                            <td class="titulodelprod" colspan="2">
                                <%=rs5.getString(2)%>
                            </td>
                        </tr>
                        <tr>
                            <td class="columna1">
                                Almacenamiento: <b><%=rs5.getString(5)%></b><br>
                            </td>
                            <td class="botonyprecio" rowspan="3">
                                <label class="precio" id="precio">
                                    $<%=rs5.getString(3)%>
                                </label>
                                &nbsp;
                                
                                <br>
                                <input type="button" id="ver" class="carritob" value="Ver producto">
                                <a href="vista_hdd_ven.jsp?idprod=<%=idprod%>">
                                    <input type="button" id="ver" class="carritob" value="Ver producto">
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Velocidad: <b><%=rs5.getString(6)%></b><br>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Interfaz: <b><%=rs5.getString(7)%></b>
                            </td>
                        </tr>



                    </table>
                </div>
            </div>
                            <%
                                }
                                %>
                                
                                <%
                    while (rs6.next()) {
                        idprod = Integer.parseInt(rs6.getString(1));
            %>

            <div class="tabla_prod">
                <div class="divimg_prod"> 
                    <img src="imgs/productos/<%=rs6.getString(4)%>" >
                </div>

                <div class="table_info">
                    <table class="tablap">
                        <tr>
                            <td class="titulodelprod" colspan="2">
                                <%=rs6.getString(2)%>
                            </td>
                        </tr>
                        <tr>
                            <td class="columna1">
                                Procesador: <b><%=rs6.getString(5)%></b><br>
                            </td>
                            <td class="botonyprecio" rowspan="3">
                                <label class="precio" id="precio">
                                    $<%=rs6.getString(3)%>
                                </label>
                                &nbsp;
                                
                                <br>
                                <input type="button" id="ver" class="carritob" value="Ver producto">
                                <a href="vista_laptop_ven.jsp?idprod=<%=idprod%>">
                                    <input type="button" id="ver" class="carritob" value="Ver producto">
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Memoria RAM: <b><%=rs6.getString(6)%></b><br>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Almacenamiento: <b><%=rs6.getString(7)%></b>
                            </td>
                        </tr>



                    </table>
                </div>
            </div>
                            <%
                                }
                                %>
                                
                                <%
                    while (rs7.next()) {
                        idprod = Integer.parseInt(rs7.getString(1));
            %>

            <div class="tabla_prod">
                <div class="divimg_prod"> 
                    <img src="imgs/productos/<%=rs7.getString(4)%>" >
                </div>

                <div class="table_info">
                    <table class="tablap">
                        <tr>
                            <td class="titulodelprod" colspan="2">
                                <%=rs7.getString(2)%>
                            </td>
                        </tr>
                        <tr>
                            <td class="columna1">
                                Chipset: <b><%=rs7.getString(5)%></b><br>
                            </td>
                            <td class="botonyprecio" rowspan="3">
                                <label class="precio" id="precio">
                                    $<%=rs7.getString(3)%>
                                </label>
                                &nbsp;
                                
                                <br>
                                <input type="button" id="ver" class="carritob" value="Ver producto">
                                <a href="vista_mobo_ven.jsp?idprod=<%=idprod%>">
                                    <input type="button" id="ver" class="carritob" value="Ver producto">
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Socket: <b><%=rs7.getString(6)%></b><br>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Memoria maxima: <b><%=rs7.getString(7)%></b>
                            </td>
                        </tr>



                    </table>
                </div>
            </div>
                            <%
                                }
                                %>
                                
                                <%
                    while (rs8.next()) {
                        idprod = Integer.parseInt(rs8.getString(1));
            %>

            <div class="tabla_prod">
                <div class="divimg_prod"> 
                    <img src="imgs/productos/<%=rs8.getString(4)%>" >
                </div>

                <div class="table_info">
                    <table class="tablap">
                        <tr>
                            <td class="titulodelprod" colspan="2">
                                <%=rs8.getString(2)%>
                            </td>
                        </tr>
                        <tr>
                            <td class="columna1">
                                Procesador: <b><%=rs8.getString(5)%></b><br>
                            </td>
                            <td class="botonyprecio" rowspan="3">
                                <label class="precio" id="precio">
                                    $<%=rs8.getString(3)%>
                                </label>
                                &nbsp;
                                
                                <br>
                                <input type="button" id="ver" class="carritob" value="Ver producto">
                                <a href="vista_pc_ven.jsp?idprod=<%=idprod%>">
                                    <input type="button" id="ver" class="carritob" value="Ver producto">
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Memoria RAM: <b><%=rs8.getString(6)%></b><br>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Almacenamiento: <b><%=rs8.getString(7)%></b>
                            </td>
                        </tr>



                    </table>
                </div>
            </div>
                            <%
                                }
                                %>
                                
                                <%
                    while (rs9.next()) {
                        idprod = Integer.parseInt(rs9.getString(1));
            %>

            <div class="tabla_prod">
                <div class="divimg_prod"> 
                    <img src="imgs/productos/<%=rs9.getString(4)%>" >
                </div>

                <div class="table_info">
                    <table class="tablap">
                        <tr>
                            <td class="titulodelprod" colspan="2">
                                <%=rs9.getString(2)%>
                            </td>
                        </tr>
                        <tr>
                            <td class="columna1">
                                Potencia: <b><%=rs9.getString(5)%></b><br>
                            </td>
                            <td class="botonyprecio" rowspan="3">
                                <label class="precio" id="precio">
                                    $<%=rs9.getString(3)%>
                                </label>
                                &nbsp;
                                
                                <br>
                                <input type="button" id="ver" class="carritob" value="Ver producto">
                                <a href="vista_psu_ven.jsp?idprod=<%=idprod%>">
                                    <input type="button" id="ver" class="carritob" value="Ver producto">
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Certificación 80 PLUS: <b><%=rs9.getString(6)%></b><br>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Factor de forma: <b><%=rs9.getString(7)%></b>
                            </td>
                        </tr>



                    </table>
                </div>
            </div>
                            <%
                                }
                                %>
                                
                                <%
                    while (rs10.next()) {
                        idprod = Integer.parseInt(rs10.getString(1));
            %>

            <div class="tabla_prod">
                <div class="divimg_prod"> 
                    <img src="imgs/productos/<%=rs10.getString(4)%>" >
                </div>

                <div class="table_info">
                    <table class="tablap">
                        <tr>
                            <td class="titulodelprod" colspan="2">
                                <%=rs10.getString(2)%>
                            </td>
                        </tr>
                        <tr>
                            <td class="columna1">
                                Memoria: <b><%=rs10.getString(5)%></b><br>
                            </td>
                            <td class="botonyprecio" rowspan="3">
                                <label class="precio" id="precio">
                                    $<%=rs10.getString(3)%>
                                </label>
                                &nbsp;
                                
                                <br>
                                <input type="button" id="ver" class="carritob" value="Ver producto">
                                <a href="vista_ram_ven.jsp?idprod=<%=idprod%>">
                                    <input type="button" id="ver" class="carritob" value="Ver producto">
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Frecuencia: <b><%=rs10.getString(6)%></b><br>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Tipo de memoria: <b><%=rs10.getString(7)%></b>
                            </td>
                        </tr>



                    </table>
                </div>
            </div>
                            <%
                                }
                                %>
                                
                                <%
                    while (rs11.next()) {
                        idprod = Integer.parseInt(rs11.getString(1));
            %>

            <div class="tabla_prod">
                <div class="divimg_prod"> 
                    <img src="imgs/productos/<%=rs11.getString(4)%>" >
                </div>

                <div class="table_info">
                    <table class="tablap">
                        <tr>
                            <td class="titulodelprod" colspan="2">
                                <%=rs11.getString(2)%>
                            </td>
                        </tr>
                        <tr>
                            <td class="columna1">
                                Almacenamiento: <b><%=rs11.getString(5)%></b><br>
                            </td>
                            <td class="botonyprecio" rowspan="3">
                                <label class="precio" id="precio">
                                    $<%=rs11.getString(3)%>
                                </label>
                                &nbsp;
                                
                                <br>
                                <input type="button" id="ver" class="carritob" value="Ver producto">
                                <a href="vista_ssd_ven.jsp?idprod=<%=idprod%>">
                                    <input type="button" id="ver" class="carritob" value="Ver producto">
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Vel. de lectura: <b><%=rs11.getString(6)%></b><br>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Vel. de escritura: <b><%=rs11.getString(7)%></b>
                            </td>
                        </tr>



                    </table>
                </div>
            </div>
                            <%
                                }
                                %>
            <%                                
                    rs1.close();

                    bd.cierraConexion();
                } catch (Exception ex) {
                    out.print(ex.getMessage());
                }

            %> 
        </div>
    </body>
</html>