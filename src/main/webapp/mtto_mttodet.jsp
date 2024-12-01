<%-- 
    Document   : mtto_mttodet
    Created on : 18 abr. 2022, 17:02:44
    Author     : Mauricio
--%>

<%@page import="conexion.Base"%>
<%@page import="java.sql.ResultSet"%>
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
                    </div>
                </div>
            </div>
        </header>

        <%            String id_mtto = request.getParameter("idmtto");

            Base bd = new Base();

            try {
                bd.conectar();

                String strQry1 = "select id_cli,id_ven from evento_mtto where id_mtto = '" + id_mtto + "' ;";
                ResultSet rs = null;
                rs = bd.consulta(strQry1);
                rs.next();

                ResultSet rs2 = null;
                if (rs.getString(1) != null) {
                    String strQry2 = "select * from evento_mtto join cliente on evento_mtto.id_cli"
                            + " = cliente.id_cli join ing_mtto on evento_mtto.id_ingmt = ing_mtto.id_ingmt "
                            + "where id_mtto = '" + id_mtto + "' ;";
                    rs2 = bd.consulta(strQry2);
                    rs2.next();
                } else if (rs.getString(2) != null) {
                    String strQry2 = "select * from evento_mtto join vendedor on evento_mtto.id_ven"
                            + " = vendedor.id_ven join ing_mtto on evento_mtto.id_ingmt = ing_mtto.id_ingmt "
                            + "where id_mtto = '" + id_mtto + "' ;";
                    rs2 = bd.consulta(strQry2);
                    rs2.next();
                }
        %>
        <div class="divdetalles">

            <div class="titulomtto">
                <div class="instruccionletras">
                    Evento de mtto No.
                    <%=rs2.getString(1)%>
                </div>
                <div class="imginstruccion">
                    <img src="iconos\evento_mtto.png" alt="mtto" />
                </div> 
            </div>

            <div class="nocdos">
                <div class="detmttoinfo">
                    <div>
                        <div class="fechasdet">
                            <div>
                                Status:
                                <u><%=rs2.getString(5)%></u>
                            </div>

                            <div class="acomodarfechaasdf">
                                Fecha de apertura: 
                                <u><%=rs2.getString(2)%></u>
                                <br><br>
                                Fecha de cierre:
                                <%
                                    if (rs2.getString(3) == null) {
                                %>
                                <u>Sin fecha de cierre</u>
                                    <%
                                    } else {
                                    %>
                                <u><%=rs2.getString(3)%></u>
                                    <%
                                        }
                                    %> 
                            </div>    
                        </div>                      
                    </div>

                    <div style="margin-top: 30px">
                        Usuario asignado:
                        <u><%=rs2.getString(10)%></u>
                    </div>

                    <div style="margin-top: 30px">
                        ID de usuario asignado:
                        <u><%=rs2.getString(9)%></u>
                    </div>

                    <div>
                        Descripcion:
                        <div class="desmttodet">                            
                            <%=rs2.getString(4)%>
                        </div>

                    </div>

                    <div style="margin-top: 30px">
                        Ing. de mtto asignado:
                        <u><%=rs2.getString(17)%></u>
                    </div>

                    <div style="margin-top: 20px">
                        Id de Ing. de mtto asignado:
                        <%=rs2.getString(16)%>
                    </div>
                </div>
            </div>
        </div>
        <%
            } catch (Exception XD) {
                out.print(XD.getMessage());
            }
        %>

    </body>
</html>
