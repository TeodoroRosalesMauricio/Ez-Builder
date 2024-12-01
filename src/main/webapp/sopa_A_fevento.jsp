<%-- 
    Document   : sopa_A_fevento
    Created on : 22 abr. 2022, 12:53:55
    Author     : usuario1
--%>

<%@page import="java.sql.Date"%>
<%@page import="fecha_sql.fecha"%>
<%@page import="conexion.Base"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Crear</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
        <link rel="stylesheet" href="estilos/barra.css">
        <link rel="shortcut icon" href="iconos\soporte_tec2.png">
        <link rel="stylesheet" type="text/css" href="estilos/dropdown/default.css" />
        <link rel="stylesheet" type="text/css" href="estilos/dropdown/component.css" />
        <link rel="stylesheet" type="text/css" href="estilos/sopa.css" />
        <link rel="stylesheet" type="text/css" href="estilos/soporte/main.css" />
        <script src="scripts/dropdown/modernizr.custom.js"></script>
        <script src="https://kit.fontawesome.com/40eeeaf3f3.js" crossorigin="anonymous"></script>
    </head>

    <%
        HttpSession miSessiondelUsuario = (HttpSession) request.getSession();
        int id = (int) (miSessiondelUsuario.getAttribute("id") == null ? 0 : miSessiondelUsuario.getAttribute("id"));

    %>
    <%        
        String usuario = request.getParameter("usuario");
        String id_usr = request.getParameter("id_usuario");
        String desc = request.getParameter("descripcion");
        String solucion = request.getParameter("solucion");
        String id_mtto = request.getParameter("id_mtto");

        // Se establece el status En proceso
        String status = "En proceso";

        // Se genera la fecha actual
        long millis = System.currentTimeMillis();
        java.sql.Date date = new java.sql.Date(millis);
        Date fecha_actual = date;

        // Inicializamos la variable
        String strQry1 = " ";

        // Se checa de que usuario se trata
        if (usuario.equals("cliente")) {

            String id_cli = id_usr;

            strQry1 = "insert into evento_mtto (fec_in, des_rep, stat_rep, sol_mtto, id_ingmt, id_cli)"
                    + "values('" + fecha_actual + "' , '" + desc + "', '" + status + "' , '" + solucion + "' , '" + id_mtto + "' , '" + id_cli + "' );";

        } else if (usuario.equals("vendedor")) {

            String id_ven = id_usr;
            strQry1 = "insert into evento_mtto (fec_in, des_rep, stat_rep, sol_mtto, id_ingmt, id_ven)"
                    + "values('" + fecha_actual + "' , '" + desc + "', '" + status + "' , '" + solucion + "' , '" + id_mtto + "', '" + id_ven + "' );";
        }

        // Se verifica que no hayan espacios en blanco
        if (!usuario.equals("") && !id_usr.equals("") && !desc.equals("")
                && !id_mtto.equals("")) {

            Base bd = new Base();

            try {
                bd.conectar();

                int resultadoInsert = bd.insertar(strQry1);
                //out.print("checar resultado de la base " + resultadoInsert);
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

        <!-- Banner -->
        <img src="imgs\soporte\sopa_A_fevento.png" alt="Asesor de Soporte" class="banner_main" />

        <!-- Div para imágenes -->
        <div id="div2">

            <a href="sopa_eventos.jsp" title="Ver evento de mtto" alt="Ver evento de mtto" ><img src="imgs\soporte\sopa_vereventosmtto.png" alt="Ver evento de mtto" class="perfiles"/></a>
            <a href="sopa_fevento.jsp" title="Nuevo evento de mtto" alt="Nuevo evento de mtto"><img src="imgs\soporte\sopa_eventosmtto.png" alt="Nuevo evento de mtto" class="perfiles"/></a>

        </div>

        <%                } catch (Exception juan) {
                    out.print(juan.getMessage());
                }
            }
        %>
    </body>
</html>
