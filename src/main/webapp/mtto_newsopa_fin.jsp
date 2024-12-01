<%-- 
    Document   : mtto_newsopa_fin
    Created on : 18 abr. 2022, 16:59:29
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
    <body>
        <%
            HttpSession miSessiondelUsuario = (HttpSession) request.getSession();
            int id = (int) (miSessiondelUsuario.getAttribute("id") == null ? 0 : miSessiondelUsuario.getAttribute("id"));
            //int id = 1;
        %>
        <%
            String usuario = request.getParameter("usuario");
            String idusuario = request.getParameter("idusuario");
            String descripcion = request.getParameter("descripcion");
            String tipo = request.getParameter("tipo");
            String solucion = request.getParameter("solucion");

            Base bd = new Base();

            long millis = System.currentTimeMillis();
            java.sql.Date date = new java.sql.Date(millis);

            try {
                bd.conectar();

                if (usuario.equals("Cliente")) {
                    String strQry1 = "insert into evento_sopa values"
                            + "(default , '" + date + "' , null , '" + descripcion + "' , 'Mantenimiento' , '" + tipo + "' , '"+solucion+"' , '" + id + "' , '" + idusuario + "' , null );";

                    int resultadoInsert = bd.insertar(strQry1);

                } else if (usuario.equals("Vendedor")) {
                    String strQry1 = "insert into evento_sopa values"
                            + "(default , '" + date + "' , null , '" + descripcion + "' , 'Mantenimiento' , '" + tipo + "' ,  '"+solucion+"'  , '" + id + "' , null , '" + idusuario + "' );";

                    int resultadoInsert = bd.insertar(strQry1);

                }

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
                        <a href="soporte_main.jsp">Cerrar Sesión</a>
                        <a href="mtto.jsp">Inicio</a>
                        <a href="mtto_sopalist.jsp">Ver eventos de soporte</a>
                        <a href="mtto_newsopa.jsp">Nuevo evento de soporte</a>
                        <a href="mtto_mttolist.jsp">Ver eventos de mtto asignados</a>
                    </div>
                </div>
            </div>
        </header>

        <div class="finasopa">
            <div class="titulomtto">
                <div class="instruccionletras">
                    Evento generado exitosamente
                </div>
                <div class="imginstruccion">
                    <img src="iconos\evento_mtto.png" alt="soporte" />
                </div> 
            </div>

            <div class="btnsfinalizado">
                <div class="acomodarbtn">
                    <a href="mtto_sopalist.jsp">
                        <input class="btnfinalizado" type="button" value="Ver eventos" >
                    </a>
                </div>

                <div class="acomodarbtn">
                    <a href="mtto_newsopa.jsp">
                        <input class="btnfinalizado" type="button" value="Nuevo evento" >
                    </a>
                </div>
            </div>
        </div>
    </body>
</html>
