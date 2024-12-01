<%-- 
    Document   : sopa_publicarfaq
    Created on : 2 jun. 2022, 08:24:33
    Author     : usuario1
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
                        <a href="sopa_main.jsp">Inicio</a>
                        <a href="sopa_reportes.jsp">Ver Reportes</a>
                        <a href="sopa_eventos.jsp">Ver Eventos</a>
                        <a href="sopa_fevento.jsp">Nuevo Evento</a>
                        <a href="soporte_main.jsp">Cerrar Sesión</a>
                    </div>
                </div>
            </div>
        </header>
        
        <div class="divlistmtto">
            
            <div class="titulomtto">
                <div class="instruccionletras">       
                    Eventos de mtto    
                </div>
                <div class="imginstruccion">
                    <img src="iconos\ver_soporte.png" alt="versoporte" />
                </div>
            </div>
        
        <% 
            Base bd = new Base();
            
            try{
                bd.conectar();
                
                String strQry1 = "select id_mtto,fec_in,fec_fi,stat_rep from evento_mtto "
                        + "where id_ingmt = '"+id+"' and stat_rep = 'Cerrado';";
                ResultSet rs = null;
                rs = bd.consulta(strQry1);
                
                
                while (rs.next()) {
                    
        %>
        
            <div class="listamtto">
                <div class="imgmttolist"> 
                    <img src="iconos\ver_soporte2.png" alt="soporte" />
                </div>
                <div class="detalles">
                    Estatus: 
                    <%=rs.getString(4)%>
                    <br><br>
                    Fecha de apertura:
                    <%=rs.getString(2)%>
                    <br><br>
                    Fecha de cierre:
                    <%
                        if(rs.getString(3) == null){
                    %>
                            Sin fecha de cierre
                    <%
                        }
                        else{
                    %>
                            <%=rs.getString(3)%>
                    <%
                        }
                    %> 
                </div>
                <div class="detallesdos">
                    No. evento
                    <input type="submit" value="<%=rs.getString(1)%>" class="numevento" >
                    <br><br>
                    
                    <a href="sopa_faqdet.jsp?idmtto=<%=rs.getString(1)%>">
                        <input class="botonmttolist" type="button" value="Ver detalles" >
                    </a>
                        <br><br>
                        
                    <div class="eliminar">
                        <label>
                            Generar FAQ &nbsp;
                        </label>
                         
                        <a href="sopa_newfaq.jsp?idmtto=<%=rs.getString(1)%>">
                            <img src="iconos\X.png" class="ekis" alt="ekis" /> 
                        </a>
                    </div>
                    
                </div>
            </div>
        
        <% 
                }
                
            }
            catch(Exception XD){
                out.print(XD.getMessage());
            }
        %>
        </div>
    </body>
</html>

