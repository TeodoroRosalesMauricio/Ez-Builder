<%-- 
    Document   : mtto
    Created on : 18 abr. 2022, 15:26:29
    Author     : Mauricio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>EZ-builder</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
        <link rel="stylesheet" href="estilos/barra.css">
        <link rel="shortcut icon" href="iconos\soporte_tec2.png">
        <link rel="stylesheet" type="text/css" href="estilos/dropdown/default.css" />
        <link rel="stylesheet" type="text/css" href="estilos/dropdown/component.css" />
        <link rel="stylesheet" type="text/css" href="estilos/soporte/main.css" />
        <link rel="stylesheet" href="estilos/mtto.css">
        <script src="scripts/dropdown/modernizr.custom.js"></script>
        <script src="https://kit.fontawesome.com/40eeeaf3f3.js" crossorigin="anonymous"></script>
    </head>

    <%
        HttpSession miSessiondelUsuario = (HttpSession) request.getSession();
        int id = (int) (miSessiondelUsuario.getAttribute("id") == null ? 0 : miSessiondelUsuario.getAttribute("id"));

    %>
    
    <body>
        <header>

            <!-- Barra superior -->
            <div class="div_header">

                <!-- partial:index.partial.html -->
                <header class="barra_sip">



                    <div id="img_sopa">
                        <img src="iconos\soporte_tec2.png" align="left" alt="Inicio" />
                        <label>Soporte técnico</label>

                    </div>

            </div>


            <!-- Dorpdown de Mi cuenta -->
            <div class="dropdown2" id="drop_sopa" >
                <div class="dropdown">
                    <button title="Mi cuenta Cliente" class="dropbtn"></button>
                    <div class="dropdown-content">
                        <a href="soporte_main.jsp">Cerrar Sesión</a>
                        <a href="mtto.jsp">Inicio</a>
                        <a href="mtto_sopalist.jsp">Ver eventos de soporte</a>
                        <a href="mtto_newsopa.jsp">Nuevo evento de soporte</a>
                        <a href="mtto_mttolist.jsp">Ver eventos de mtto asignados</a>
                        <a href="mtto_faqs.jsp">Editor de FAQs</a>
                    </div>
                </div>
            </div>
        </header>
                
        <div class="mtto">
            <div class="titulomtto">
                <div class="instruccionletras">       
                    Ingeniero de mantenimiento             
                </div>
                <div class="imginstruccion">
                    <img src="iconos\ing_sop.png" alt="soporte" />
                </div>                
            </div>
               
            <div class="cuadromtto">
                <a href="mtto_sopalist.jsp">
                    <div class="cuadritosmtto"> 
                        <div>
                            Ver eventos de soporte
                        </div>
                        
                        <div class="imgcuadrito">
                            <img src="iconos\ver_soporte.png" alt="soporte" />
                        </div>
                    </div>                    
                </a>
        
                <a href="mtto_newsopa.jsp">     
                    <div class="cuadritosmtto">
                        <div>
                            Nuevo evento de soporte
                        </div>
                        
                        <div class="imgcuadrito">
                            <img src="iconos\evento_mtto.png" alt="mtto" />
                        </div>
                    </div>
                </a>    
          
                <a href="mtto_mttolist.jsp">   
                    <div class="cuadritosmtto">
                        <div>
                            Ver eventos de mtto asignados
                        </div>
                        
                        <div class="imgcuadrito">
                            <img src="iconos\ver.png" alt="ver" />
                        </div>
                    </div>
                </a>
                
                <a href="mtto_faqs.jsp">   
                    <div class="cuadritosmtto">
                        <div>
                            Editor de FAQs
                        </div>
                        
                        <div class="imgcuadrito">
                            <img src="iconos\faq_logo2.png" alt="ver" />
                        </div>
                    </div>
                </a>
                
            </div>
        </div>
    </body>
</html>
