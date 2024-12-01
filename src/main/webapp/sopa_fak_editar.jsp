<%-- 
    Document   : sopa_fak_editar
    Created on : 2 jun. 2022, 09:40:32
    Author     : usuario1
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="conexion.Base"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Editar FAQ</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
        <link rel="stylesheet" href="estilos/barra.css">
        <link rel="shortcut icon" href="iconos\soporte_tec2.png">
        <link rel="stylesheet" type="text/css" href="estilos/dropdown/default.css" />
        <link rel="stylesheet" type="text/css" href="estilos/dropdown/component.css" />
        <link rel="stylesheet" type="text/css" href="estilos/soporte/main.css" />
        <link rel="stylesheet" type="text/css" href="estilos/soporte/asesor.css" />
        <link rel="stylesheet" href="estilos/mtto.css">
        <script src="scripts/dropdown/modernizr.custom.js"></script>
        <script src="https://kit.fontawesome.com/40eeeaf3f3.js" crossorigin="anonymous"></script>
    </head>

    <%        HttpSession miSessiondelUsuario = (HttpSession) request.getSession();
        int id = (int) (miSessiondelUsuario.getAttribute("id") == null ? 0 : miSessiondelUsuario.getAttribute("id"));
    %>

    <%
        String id_fak = request.getParameter("id_fak");

        Base bd = new Base();

        try {
            bd.conectar();

            String strQry1 = "select fak, preg_fak, res_fak from fak where fak = '" + id_fak + "' ;";
            ResultSet rs = null;
            rs = bd.consulta(strQry1);

            while (rs.next()) {
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
        <div id="banner_x_faq">

            <img src="iconos\faq_logo2.png" alt="Información de apoyo" id="img_banner_faq"/>  

            <label id="txt_banner_faq">FAQ No. <%=rs.getString(1)%> </label>

        </div>

        <div id="fondo_negro_faqs">

            <form action="sopa_fak_editada.jsp" method="post" name="formulario1">

                <div id="contenido_x">



                    <div id="izquierdo">
                        <label class="label_rep" id="descripcion_L">Pregunta:</label>

                        <label class="label_rep" id="descripcion_L_faqs">Respuesta:</label>
                    </div>

                    <div id="derecho">
                        <textarea class="label_rep" name="pregunta" id="descripcion_R"  required maxlength="1500"><%=rs.getString(2)%></textarea>
                        <textarea class="label_rep" name="respuesta" id="descripcion_R"  required maxlength="1500"><%=rs.getString(3)%></textarea>
                    </div>


                    <div id="boton">

                        <a href="sopa_fak_editada.jsp?id_fak=<%=id_fak%>"> <button name="id_faq" value="<%=id_fak%>" type="submit" id="boton_rep">Editar</button> </a> 

                    </div>

                </div>
            </form>
        </div>

        <%    }

            } catch (Exception XD) {
                out.print(XD.getMessage());
            }
        %> 

    </body>
</html>
