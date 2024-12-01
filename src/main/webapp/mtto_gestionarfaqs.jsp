<%-- 
    Document   : mtto_gestionarfaqs
    Created on : 29 may. 2022, 13:31:48
    Author     : Mauricio
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

        <div class="divlistmtto">

            <div class="titulomtto">
                <div class="instruccionletras">       
                    Gestión de FAQs       
                </div>
                <div class="imginstruccion">
                    <img src="iconos\faq_logo.png" alt="versoporte" />
                </div>
            </div>

            <%            Base bd = new Base();

                try {
                    bd.conectar();

                    String strQry1 = "select fak, preg_fak from fak "
                            + "inner join evento_sopa on evento_sopa.id_mtto = fak.id_sopa "
                            + "where id_ingmt = '" + id + "' ;";
                    ResultSet rs = null;
                    rs = bd.consulta(strQry1);

                    while (rs.next()) {

                        int id_fak = Integer.parseInt(rs.getString(1));

            %>

            <div class="listamtto">
                <div class="imgmttolist"> 
                    <img src="iconos\faq1.png" alt="soporte" />
                </div>
                <div class="detalles">
                    Pregunta de la FAQ:
                    <br> <br>
                    <%=rs.getString(2)%>

                </div>
                <div class="detallesdos">
                    No. FAQ
                    <input type="submit" value="<%=rs.getString(1)%>" class="numevento" >

                    <br> <br>
                    <a href="mtto_edit_faq.jsp?id_fak=<%=id_fak%>">
                        <input class="botonmttolist" type="button" value="Ver detalles" >
                    </a>

                    <br> <br>

                    <div class="eliminar">
                        <label>
                            Eliminar FAQ &nbsp;
                        </label>

                        <a href="mtto_del_faq.jsp?id_fak=<%=id_fak%>">
                            <img src="iconos\X.png" class="ekis" alt="ekis" /> 
                        </a>
                    </div>

                </div>
            </div>

            <%
                    }

                } catch (Exception XD) {
                    out.print(XD.getMessage());
                }
            %>
        </div>
    </body>
</html>
