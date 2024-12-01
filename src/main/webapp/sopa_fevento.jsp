<%-- 
    Document   : sopa_fevento
    Created on : 22 abr. 2022, 12:52:53
    Author     : usuario1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Nuevo Evento</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
        <link rel="stylesheet" href="estilos/barra.css">
        <link rel="shortcut icon" href="iconos\soporte_tec2.png">
        <link rel="stylesheet" type="text/css" href="estilos/dropdown/default.css" />
        <link rel="stylesheet" type="text/css" href="estilos/dropdown/component.css" />
        <link rel="stylesheet" type="text/css" href="estilos/sopa.css" />
        <script src="scripts/dropdown/modernizr.custom.js"></script>
        <script  src="scripts/validaciones.js"></script>
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



        <!-- Div de banner principal-->
        <img src="imgs\soporte\sopa_fevento.png" alt="Asesor de Soporte" class="banner_main" />

        <div id="fondo2_negro">

            <div id="contenido2_x">

                <div id="izquierdo2">
                    <label class="label_rep" id="sleect_user_L">Usuario asignado:</label>
                    <label class="label_rep" id="sleect_user_L">ID de usuario: </label>
                    <label class="label_rep" id="descripcion2_L">Descripción:&nbsp;&nbsp;</label> 
                    <label class="label_rep" id="descripcion2_L">Solucion:</label>
                    <label class="label_rep" id="sleect_user_L">ID de Ing. de <br>Mantenimiento: </label>
                </div>

                <form action="sopa_A_fevento.jsp" method="post" name="formulario1">
                    <div id="derecho2">

                        <div id="select_user">
                            <select class="label_rep" id="sleect_user_R" name="usuario" required> 
                                <option value="cliente">Cliente</option>
                                <option value="vendedor" >Vendedor</option>
                            </select>
                        </div>

                        <div  id="idusr">
                            <input type="number" name="id_usuario" value="" placeholder="1" class="input_rep" id="id_user" min="1" max="100" required >
                        </div>
                        
                        <textarea class="label_rep" name="descripcion" id="descripcion_E" maxlength="1500" placeholder="Describa lo requerido en el evento de mtto" required  ></textarea>

                        <textarea class="label_rep2" name="solucion" id="descripcion_E2" maxlength="1500" placeholder="Describa lo requerido en el evento de mtto" required  ></textarea>
                        
                        <div  id="idmtto">
                            <input type="number" name="id_mtto" value="" placeholder="1" class="input_rep" id="id_mtto" min="1" max="100" required>
                        </div>

                    </div>

                    <div id="boton2">  <a href="asesor_n_rep_A.jsp"> <button type="submit" id="boton_rep2">Generar Evento</button> </a> </div>
                </form>
            </div>

        </div>
    </body> 
</html>
