<%-- 
    Document   : asesor_x_rep
    Created on : 19 abr. 2022, 10:30:08
    Author     : omarc
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="conexion.Base"%>
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
        <script src="https://kit.fontawesome.com/40eeeaf3f3.js" crossorigin="anonymous"></script>
    </head>

    <%
        String id_rep = request.getParameter("id_rep");

        Base bd = new Base();

        try {
            bd.conectar();

            String strQry1 = "select id_cli,id_ven from reporte where id_rep = '" + id_rep + "' ;";
            ResultSet rs = null;
            rs = bd.consulta(strQry1);
            rs.next();

            ResultSet rs2 = null;
            if (rs.getString(1) != null) {
                String strQry2 = "select * from reporte join cliente on reporte.id_cli"
                        + " = cliente.id_cli join ing_sopa on reporte.id_sopa = ing_sopa.id_sopa "
                        + "where id_rep = '" + id_rep + "' ;";
                rs2 = bd.consulta(strQry2);
                rs2.next();
            } else if (rs.getString(2) != null) {
                String strQry2 = "select * from reporte join vendedor on reporte.id_ven"
                        + " = vendedor.id_ven join ing_sopa on reporte.id_sopa = ing_sopa.id_sopa "
                        + "where id_rep = '" + id_rep + "' ;";
                rs2 = bd.consulta(strQry2);
                rs2.next();
            }
    %>

    <%        HttpSession miSessiondelUsuario = (HttpSession) request.getSession();
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

            <label id="txt_banner_rep">Reporte No. <%=rs2.getString(1)%> </label>

        </div>

        <div id="fondo_negro">

            <div id="contenido_x">

                <label class="label_rep" id="status">Status: <b><%=rs2.getString(5)%></b> </label> 



                <label class="label_rep" id="fecha_a">Fecha de apertura: <b><%=rs2.getString(2)%> &nbsp;</b><br></label>

                <br>


                <%
                    if (rs2.getString(3) == null) {
                %>
                <label class="label_rep" id="fecha_f">Fecha de cierre: &nbsp; <b>Sin fecha de cierre</b></label><br>
                <%
                } else {
                %>
                <label class="label_rep" id="fecha_f">Fecha de cierre: &nbsp; <b><%=rs2.getString(3)%></b></label><br>
                <%
                    }
                %> 
                <div id="izquierdo">

                    <label class="label_rep" id="usuario_L">Usuario asignado:</label>
                    <label class="label_rep" id="IDusuario_L">ID de usuario:</label>
                    <label class="label_rep" id="descripcion_L">Descripción:</label>
                    <label class="label_rep" id="descripcion_L">Solución:&nbsp; &nbsp; &nbsp;</label>
                    <label class="label_rep" id="ing_sopa_L">Ing. de Soporte asignado: </label> 
                    <label class="label_rep" id="IDing_sopa_L">ID de Ing. de <br> Soporte asignado:</label>
                </div>

                <div id="derecho">

                    <label class="label_rep" id="usuario_R"><b><%=rs2.getString(10)%></b></label>
                    <label class="label_rep" id="IDusuario_R"> <b><%=rs2.getString(7)%></b></label>
                    <textarea class="label_rep" id="descripcion_R" readonly maxlength="1500"><%=rs2.getString(4)%></textarea>
                    <textarea class="label_rep" id="solucion_R" readonly maxlength="1500"><%=rs2.getString(6)%></textarea>
                    <label class="label_rep" id="ing_sopa_R"><b><%=rs2.getString(18)%></b></label>
                    <label class="label_rep" id="IDing_sopa_R"> <b><%=rs2.getString(17)%></b></label>
                </div>


                <div id="boton">
                    <%
                        if (rs2.getString(3) == null) {
                    %>
                    <a href="asesor_x_rep_A.jsp?id_rep=<%=id_rep%>">  <button id="boton_rep">Cerrar Reporte</button> </a> 
                    <%
                    } else {
                    %>
                    <button id="boton_rep" disabled="true">Reporte Cerrado</button>
                    <%
                        }
                    %> 

                    <br><br><br><br><br>
                    <a href="asesor_reportes.jsp">  <button id="boton_rep">Regresar</button> </a>
                </div>


            </div>

        </div>

        <%                 } catch (Exception XD) {
                out.print(XD.getMessage());
            }

        %> 

    </body>