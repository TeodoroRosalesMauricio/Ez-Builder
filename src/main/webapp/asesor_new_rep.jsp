<%-- 
    Document   : asesor_n_reporte
    Created on : 19 abr. 2022, 20:52:11
    Author     : omarc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Ver Reporte</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
        <link rel="stylesheet" href="estilos/barra.css">
        <link rel="shortcut icon" href="iconos\soporte_tec2.png">
        <link rel="stylesheet" type="text/css" href="estilos/dropdown/default.css" />
        <link rel="stylesheet" type="text/css" href="estilos/dropdown/component.css" />
        <link rel="stylesheet" type="text/css" href="estilos/soporte/asesor.css" />
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

                        <a href="asesor_main.jsp">Inicio</a>
                        <a href="asesor_reportes_faq.jsp">Nueva FAQ</a>
                        <a href="asesor_new_faq2.jsp">Nueva FAQ sin evento</a>
                        <a href="asesor_ges_faqs.jsp">Gestionar FAQs</a>
                        <a href="asesor_main.jsp">Volver</a>
                        <a href="soporte_main.jsp">Cerrar Sesión</a>
                    </div>
                </div>
            </div>
        </header>


        <!-- Div de banner principal-->
        <div id="banner_x">

            <img src="iconos\nuevo_rep.png" alt="Información de apoyo" id="img_banner_rep"/>  

            <label id="txt_banner_rep2"> Nuevo Reporte </label>

        </div>

        <div id="fondo2_negro">

            <div id="contenido2_x">

                <div id="izquierdo2">

                    <label class="label_rep" id="sleect_user_L">Usuario asignado:</label>
                    <label class="label_rep" id="sleect_user_L">ID de usuario: </label>
                    <label class="label_rep" id="descripcion2_L">Descripción:</label>
                    <label class="label_rep" id="descripcion3_L">Solución: &nbsp;&nbsp;&nbsp; </label>
                    <label class="label_rep" id="sleect_user_L">ID de Ing. de <br>Soporte asignado: </label>
                </div>

                <form action="asesor_rep_succes.jsp" method="post" name="formulario1">
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

                        <textarea class="label_rep" name="descripcion" id="descripcion_R" maxlength="1500" placeholder="Describe el problema reportado" required  ></textarea>

                        <textarea class="label_rep" name="solucion" id="descripcion_R" maxlength="1500" placeholder="Escribe la solución al problema reportado" required  ></textarea>


                        <div  id="idusr">
                            <input type="number" name="id_inge" value="" placeholder="1" class="input_rep" id="id_user" min="1" max="100" required>
                        </div>

                    </div>

                    <div id="boton2">  <a href="asesor_n_rep_A.jsp"> <button type="submit" id="boton_rep2">Generar Reporte</button> </a> 


                    </div>

                </form>

                <br><br><br><br><br> <br><br><br><br><br> <br><br><br><br><br> <br><br><br><br><br><br>
                <a href="asesor_main.jsp">  <button id="boton_rep_back">Regresar</button> </a>

            </div>

        </div>
    </body> 