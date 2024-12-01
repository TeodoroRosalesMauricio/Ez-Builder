<%-- 
    Document   : mtto_sopadet
    Created on : 18 abr. 2022, 17:04:21
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
        
        <% 
            String idmtto = request.getParameter("idmtto");
            
            Base bd = new Base();
            
            try{
                bd.conectar();
                
                String strQry1 = "select id_cli,id_ven from evento_sopa where id_mtto = '"+idmtto+"' ;";
                ResultSet rs = null;
                rs = bd.consulta(strQry1);
                rs.next();
                
                ResultSet rs2 = null;
                if(rs.getString(1) != null){
                    String strQry2 = "select evento_sopa.*,ing_mtto.nom_mtto,cliente.id_cli,nom_cli from ing_mtto "
                            + "inner join evento_sopa on ing_mtto.id_ingmt = evento_sopa.id_ingmt "
                            + "inner join cliente on cliente.id_cli = evento_sopa.id_cli "
                            + "where id_mtto = '"+idmtto+"' ;";
                    rs2 = bd.consulta(strQry2);
                    rs2.next();
                }
                else if(rs.getString(2) != null){
                    String strQry2 = "select evento_sopa.*,ing_mtto.nom_mtto,vendedor.id_ven,name_ven from ing_mtto "
                            + "inner join evento_sopa on ing_mtto.id_ingmt = evento_sopa.id_ingmt "
                            + "inner join vendedor on vendedor.id_ven = evento_sopa.id_ven "
                            + "where id_mtto = '"+idmtto+"' ;";
                    rs2 = bd.consulta(strQry2);
                    rs2.next();
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
        
        <div class="divdetalles">
            <div class="titulomtto">
                <div class="instruccionletras">
                    Evento de sopa No. 
                    <%=rs2.getString(1)%>
                </div>
                <div class="imginstruccion">
                    <img src="iconos\evento_mtto.png" alt="soporte" />
                </div> 
            </div>

            <div class="nocdos">
                <div class="detsopainfo">
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
                                    if(rs2.getString(3) == null){
                                %>
                                        <u>Sin fecha de cierre</u>
                                <%
                                    }
                                    else{
                                %>
                                        <u><%=rs2.getString(3)%></u>
                                <%
                                    }
                                %> 
                            </div>
                        </div> 
                    </div>
                    
                    <div>
                        Usuario asignado:
                        <u><%=rs2.getString(13)%></u>
                    </div>
                    
                    <div>
                        Id usuario:                        
                        <%=rs2.getString(12)%>                        
                    </div>
                    
                    <div>
                        Descripcion:
                        <div class="desmttodet">
                            <%=rs2.getString(4)%>
                        </div>
                    </div>
                        
                        <div>
                        Solicion:
                        <div class="desmttodet">
                            <%=rs2.getString(7)%>
                        </div>
                    </div>
                    
                    <div style="margin-top: 30px">
                        Tipo de mantenimiento:
                        <u><%=rs2.getString(6)%></u>
                    </div>
                    
                    <div>
                        Ing. de soporte asignado: 
                        <u><%=rs2.getString(11)%></u>
                    </div>
                    
                    <div>
                        Id de ing. de sop. asignado:
                        <%=rs2.getString(8)%>
                    </div>
                    
                            <%
                                if(rs2.getString(5).equals("Cerrado")){
                            %>
                           
                    
                            <%
                        }
                        else{
                    %>
                    <div class="btncerrareventodet">
                        <a href="A_mtto_cerrar.jsp?idmtto=<%=idmtto%>">
                            <input class="botonmttolist" type="button" value="Cerrar evento" >
                        </a>
                    </div>
                    <%
                        }
                    %>
                                       
                </div>
            </div>
        </div>
        <% 
            }
            catch(Exception XD){
                out.print(XD.getMessage());
            }
        %>
        
    </body>
</html>
