<%-- 
    Document   : sopa_faqs
    Created on : 2 jun. 2022, 08:22:09
    Author     : usuario1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Ing. de Soporte</title>
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
                        <a href="sopa_main.jsp">Inicio</a>
                        <a href="sopa_reportes.jsp">Ver Reportes</a>
                        <a href="sopa_eventos.jsp">Ver Eventos</a>
                        <a href="sopa_fevento.jsp">Nuevo Evento</a>
                        <a href="soporte_main.jsp">Cerrar Sesión</a>
                    </div>
                </div>
            </div>
        </header>
                
                
        <div class="faqs">
            <div class="titulomtto">
                <div class="instruccionletras">       
                    Editor de FAQs
                </div>
                <div class="imginstruccion">
                    <img src="iconos\faq_logo.png" alt="soporte" />
                </div>                
            </div>
               
            <div class="faqscuadros">
                
                <a href="sopa_publicarfaq.jsp">
                    <div class="cuadritosmtto"> 
                        <div>
                            Publicar FAQ
                        </div>
                        
                        <div class="imgcuadrito">
                            <img src="iconos\publicar.png" alt="publicar" />
                        </div>
                    </div>                    
                </a>
        
                <a href="sopa_gestionarfaq.jsp">     
                    <div class="cuadritosmtto">
                        <div>
                            Gestionar FAQs
                        </div>
                        
                        <div class="imgcuadrito">
                            <img src="iconos\ver_faq.png" alt="gestionar" />
                        </div>
                    </div>
                </a>    
           
            </div>
        </div>
    </body>
</html>
                