<%-- 
    Document   : G_img
    Created on : 22 may. 2022, 16:25:00
    Author     : usuario1
--%>

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
        <link rel="stylesheet" href="estilos/gestion_f.css">
        <link rel="shortcut icon" href="imgs/gabinete_white.png">
    </head>
    <script src="https://kit.fontawesome.com/40eeeaf3f3.js" crossorigin="anonymous"></script>
    <body>
    

        <%
            HttpSession miSessiondelUsuario = (HttpSession) request.getSession();
            int id = (int) (miSessiondelUsuario.getAttribute("id") == null ? 0 : miSessiondelUsuario.getAttribute("id"));
            %>
            <%
            
            Base bd = new Base();
            try {
                    bd.conectar();
                    
                    String strQry = "select id_prod from producto order by id_prod desc limit 1;";
                    ResultSet rs = null;
                    rs = bd.consulta(strQry);    
                    int idprod;
                    
                    rs.next();
                    idprod = Integer.parseInt(rs.getString(1));
                    
                    
                    String Img1 = "";
                    String Img2 = "1";
                    String Img3 = "2";
                    String Img4 = "3";
                    
                    String Tform = "G_img.jsp";
                    
                    
                    //Todo lo de arriba esta bien
                    
                    String strQry2 = "select img_prod, img1_prod, img2_prod, img3_prod from producto where id_prod = '"+idprod+"' ;";
                    
                    ResultSet rs2 = null;
                    rs2 = bd.consulta(strQry2);
                    
                    while (rs2.next()){

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
        
        
        
        <!-- Div General-->
        <div class="baseimg">
            
            <!-- Div Titulo-->
            <div class="espaciocpu"></div>
            <center>
                
            </center>
            <!-- Div Formulario-->
            <div class="formulariocpu">
                
                <div class="espacioimg"></div>
                
                <center>
                    Escoger imagenes
                </center>
                <br>
                
                <div class="espacioimg"></div>
                            
                            
                    
                    <!-- Div Imagenes-->
                    
                    <div class="subirimgmbo">
                    
                    
                    <div class="imgprincipal">
                    <form name="datosEdit1" method="post" enctype="MULTIPART/FORM-DATA" action="G_guardaimg1.jsp?idprod=<%=idprod%>&img=<%=Img1%>&tfomr=<%=Tform%>">
                        
                        <input class="inputfile" id="fileImg1" type="file" name="fileImg1" onchange="this.form.submit()"/>
                         
                        <label for="fileImg1">
                        
                        <div class="principalimgimg">
                            <img src="imgs/productos/<%=rs2.getString(1)%>"/>
                        </div>
                        
                        <div class="imgtxt">
                            <center>
                                Imagen principal
                            </center>
                        </div>
                        
                        </label> 
                    </form>
                    </div>
                    
                    
                    
                    
                    
                    
                    <div class="img2">
                    <form name="datosEdit1" method="post" enctype="MULTIPART/FORM-DATA" action="G_guardaimg1.jsp?img=<%=Img2%>&idprod=<%=idprod%>&tfomr=<%=Tform%>">   
                        
                        <input class="inputfile" id="fileImg2" type="file" name="fileImg2" onchange="this.form.submit()"/>
                        
                        <label for="fileImg2">
                         
                        <div class="principalimgimg">
                            <img src="imgs/productos/<%=rs2.getString(2)%>"/>
                        </div>

                        <div class="imgtxt">
                            <center>
                                Imagen 2
                            </center>
                        </div>
                        
                        </label> 
                    </form>
                    </div>
                    
                    
                    
                    
                    
                    <div class="img3">
                    <form name="datosEdit1" method="post" enctype="MULTIPART/FORM-DATA" action="G_guardaimg1.jsp?img=<%=Img3%>&idprod=<%=idprod%>&tfomr=<%=Tform%>"> 
                        
                        <input class="inputfile" id="fileImg3" type="file" name="fileImg3" onchange="this.form.submit()"/>
                        
                        <label for="fileImg3">
                        
                        <div class="principalimgimg">
                            <img src="imgs/productos/<%=rs2.getString(3)%>"/>
                        </div>

                        <div class="imgtxt">
                            <center>
                            Imagen 3
                            </center>
                        </div>
                        
                        </label> 
                    </form>
                    </div>
                    
                    
                    
                    
                    
                    <div class="img4">
                    <form name="datosEdit1" method="post" enctype="MULTIPART/FORM-DATA" action="G_guardaimg1.jsp?img=<%=Img4%>&idprod=<%=idprod%>&tfomr=<%=Tform%>"> 
                        
                        <input class="inputfile" id="fileImg4" type="file" name="fileImg4" onchange="this.form.submit()"/>
                        
                        <label for="fileImg4">
                         
                        <div class="principalimgimg">
                            <img src="imgs/productos/<%=rs2.getString(4)%>"/>
                        </div>

                        <div class="imgtxt">
                            <center>
                            Imagen 4
                            </center>
                        </div>
                        
                        </label> 
                    </form>
                    </div>
                    
                    
                    
                    
                    </div>
                        
                        <div class="espaciocpu"></div>


                    <!-- Div Boton-->

                    <div class="botonc">
                        <a href="G_ffinal.jsp">
                        <input type="button" class="carritob" value="Continuar"> 
                        </a>
                    </div>
                    
                    
            </div>
           
        </div>
                        
                    
                        
        
                    <%
                        
                        
                        }
                        
                    }
            catch(Exception juan){
                    out.print(juan.getMessage());
                }
            
%>
    </body>
</html>
        
        