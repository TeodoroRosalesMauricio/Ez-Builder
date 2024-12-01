<%-- 
    Document   : mtto_newsopa
    Created on : 18 abr. 2022, 16:57:38
    Author     : Mauricio
--%>

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
    
        <div class="newsopa">
            <div class="titulomtto">
                <div class="instruccionletras">
                    Nuevo evento de soporte
                </div>
                <div class="imginstruccion">
                    <img src="iconos\evento_mtto.png" alt="soporte" />
                </div> 
            </div>

            <div class="noc">

                <form class="formsopa" action="mtto_newsopa_fin.jsp" method="post">
                    <div class="divsform">
                        Usuario asignado
                    </div>
                    <div class="divsform">
                        <select class="campossopa" name="usuario" required>
                            <option value="Cliente">Cliente</option>
                            <option value="Vendedor">Vendedor</option>
                        </select>
                    </div>

                    <div class="divsform">
                        Id de usuario
                    </div>
                    <div class="divsform">
                        <input class="campossopa" type="number" name="idusuario" min="1" required>
                    </div>

                    <div class="divsform">
                        Descripción
                    </div>
                    <div class="divsform">
                        <input class="campossopaa" type="textarea" name="descripcion" required>
                    </div>
                    
                    <div class="divsform">
                        Solucion
                    </div>
                    <div class="divsform">
                        <input class="campossopaa" type="textarea" name="solucion" required>
                    </div>

                    <div class="divsform">
                    Tipo de mantenimiento
                    </div>
                    <div class="divsform">
                        <select class="campossopa" name="tipo" required>
                            <option value="Correctivo">Correctivo</option>
                            <option value="Preventivo">Preventivo</option>
                        </select>
                    </div>

                    <div class="btngenerarsopa">
                        <input class="btnsopa" type="submit" value="Generar evento" >  
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>
