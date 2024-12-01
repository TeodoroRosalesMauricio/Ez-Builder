<%-- 
    Document   : sopa_newfaq
    Created on : 2 jun. 2022, 09:14:40
    Author     : usuario1
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="conexion.Base"%>
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
    <body>
        <%
            HttpSession miSessiondelUsuario = (HttpSession) request.getSession();
            int id = (int) (miSessiondelUsuario.getAttribute("id") == null ? 0 : miSessiondelUsuario.getAttribute("id"));
            //int id = 1;
        %>
        <%
            String idmtto = request.getParameter("idmtto");

            Base bd = new Base();

            try {
                bd.conectar();

                String strQry2 = "select des_rep,sol_mtto from evento_mtto where id_mtto = '"+idmtto+"';";
                ResultSet rs2 = null;
                rs2 = bd.consulta(strQry2);
                rs2.next();

                String strQry1 = "insert into fak "
                            + "values(default, null, '"+idmtto+"',  null, '"+rs2.getString(1)+"' , '"+rs2.getString(2)+"' );";

                    int resultadoInsert = bd.insertar(strQry1);

            } catch (Exception juan) {
                out.print(juan.getMessage());
            }
        %>

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

        <div class="finasopa">
            <div class="titulomtto">
                <div class="instruccionletras">
                    FAQ publicada exitosamente
                </div>
                <div class="imginstruccion">
                    <img src="iconos\faq_logo2.png" alt="soporte" />
                </div> 
            </div>

            <div class="btnsfinalizado">
                <div class="acomodarbtn">
                    <a href="sopa_gestionarfaq.jsp">
                        <input class="btnfinalizado" type="button" value="Ver FAQs" >
                    </a>
                </div>

                <div class="acomodarbtn">
                    <a href="sopa_publicarfaq.jsp">
                        <input class="btnfinalizado" type="button" value="Nueva FAQ" >
                    </a>
                </div>
            </div>
        </div>
    </body>
</html>
