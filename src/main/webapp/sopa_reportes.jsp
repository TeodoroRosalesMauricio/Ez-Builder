<%-- 
    Document   : sopa_reportes
    Created on : 22 abr. 2022, 14:28:53
    Author     : usuario1
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="conexion.Base"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Reportes</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
        <link rel="stylesheet" href="estilos/barra.css">
        <link rel="shortcut icon" href="iconos\soporte_tec2.png">
        <link rel="stylesheet" type="text/css" href="estilos/dropdown/default.css" />
        <link rel="stylesheet" type="text/css" href="estilos/dropdown/component.css" />
        <link rel="stylesheet" type="text/css" href="estilos/soporte/asesor.css" />
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

        <!-- Banner-->
        <img src="imgs\soporte\banner_reportes.png" alt="Reportes" class="banner_main" />


        <%                        Base bd = new Base();
            try {
                bd.conectar();
                String strQry = "select * from reporte where id_sopa = '" +id+ "'";
                ResultSet rs = null;
                rs = bd.consulta(strQry);

                int id_rep;

                while (rs.next()) {
                    id_rep = Integer.parseInt(rs.getString(1));
        %>

        <div id="lista_rep"> 

            <div id="img_rep"> <a href="sopa_reportes_vista.jsp?id_rep=<%=id_rep%>">

                    <%
                        if (rs.getString(3) == null) {
                    %>
                    <img src="iconos\reporte2.png" alt="Reportes" />
                    <%
                    } else {
                    %>
                    <img src="iconos\cerrado.png" alt="Reportes" />
                    <%
                        }
                    %> 



                </a> </div>

            <div id="caract_rep">
                <label>Estatus: <%=rs.getString(5)%></label>
                <label>Fecha de apertura: <%=rs.getString(2)%></label>
                <%
                    if (rs.getString(3) == null) {
                %>
                <label>Fecha de cierre: </label>
                <%
                } else {
                %>
                <label>Fecha de cierre: <%=rs.getString(3)%></label>
                <%
                    }
                %> 
            </div>

            <div id="caract_rep_2">


                <div id="caract_rep_2-1">
                    No. Reporte&nbsp;<input type="button" value="<%=rs.getString(1)%>" id="num_rep"> 
                </div>

                <div id="caract_rep_2-2">
                    
                </div>
            </div>
        </div>

        <%                                }
                rs.close();

                bd.cierraConexion();
            } catch (Exception ex) {
                out.print(ex.getMessage());
            }

        %> 
    </body>