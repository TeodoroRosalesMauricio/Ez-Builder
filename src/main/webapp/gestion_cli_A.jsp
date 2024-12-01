<%-- 
    Document   : gestion_cli_A
    Created on : 15 may. 2022, 14:03:41
    Author     : usuario1
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="conexion.Base"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Gestion de datos</title>
        <link rel="stylesheet" type="text/css" href="estilos/dropdown/default.css" />
        <link rel="stylesheet" type="text/css" href="estilos/dropdown/component.css" />
        <script src="scripts/dropdown/modernizr.custom.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
        <link rel="stylesheet" href="estilos/barra.css">
        <link rel="stylesheet" href="estilos/principal.css">
        <link rel="stylesheet" href="estilos/gestion_u.css">
        <link rel="shortcut icon" href="imgs/gabinete_white.png">
        <script src="scripts/validaciones.js"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js" type="text/javascript"></script>
    </head>
    <script>

        function cambiar() {

            $("#Nombre").attr("readonly", false);
            $("#Correo").attr("readonly", false);
            $("#Contrasena").attr("readonly", false);
            $("#Telefono").attr("readonly", false);
            $("#amat").attr("readonly", false);
            $("#apat").attr("readonly", false);

            document.getElementById("switch").style.display = 'none';
            document.getElementById("subir").style.display = 'inline';
            document.getElementById("espacioid").style.display = 'inline';
            document.getElementById("rectanguloid").style.display = 'inline';

        }

    </script>
    <script src="https://kit.fontawesome.com/40eeeaf3f3.js" crossorigin="anonymous"></script>
    <body>
        <%
            HttpSession miSessiondelUsuario = (HttpSession) request.getSession();
            int id = (int) (miSessiondelUsuario.getAttribute("id") == null ? 0 : miSessiondelUsuario.getAttribute("id"));
        %>
        <%
            String nombre = request.getParameter("Nombre");
            String correo = request.getParameter("Correo");
            String contra = request.getParameter("Contrasena");
            String telefono = request.getParameter("Telefono");
            String amat = request.getParameter("amat");
            String apat = request.getParameter("apat");

            if (!nombre.equals("") && !contra.equals("") && !correo.equals("") && !amat.equals("") && !apat.equals("") && !telefono.equals("")) {

                Base bd = new Base();

                try {
                    bd.conectar();

                    String strQry2 = "select mail_cli from cliente where id_cli <> '" + id + "';";
                    ResultSet rs2 = null;

                    rs2 = bd.consulta(strQry2);

                    boolean repetido = false;
                    while (rs2.next()) {
                        if (rs2.getString(1).equals(correo)) {
                            repetido = true;
                        }
                    }

                    if (repetido == false) {
                        String strQry1 = "update cliente set nom_cli = '" + nombre + "', mail_cli = '" + correo + "', pass_cli = '" + contra + "', apat_cli = '" + apat + "', amat_cli = '" + amat + "', tel_cli = '" + telefono + "' where id_cli = '" + id + "';";

                        int resultadoInsert = bd.insertar(strQry1);
                        out.print("checar resultado de la base " + resultadoInsert);

                        response.sendRedirect("gestion_cli.jsp");
                    } else {
        %>    





        <%
            try {
                bd.conectar();
                String strQry = "select * from cliente where id_cli = '" + id + "';";

                ResultSet rs = null;
                rs = bd.consulta(strQry);

                while (rs.next()) {


        %>


        <script>
        swal({
            text: 'El correo introducido ya está en uso',
            icon: "warning",
        });
        </script>



        <!-- Barra superior -->
        <header>

            <!-- Barra superior -->
            <div class="div_header">

                <!-- partial:index.partial.html -->
                <header class="barra_sip">

                    <!-- Logo -->
                    <div class="logo">
                        <a title="Inicio" href="principal_cli.jsp"><img src="iconos\logo_blanco.png" alt="Inicio" /></a>
                    </div>

                    <!-- Barra de búsqueda -->
                    <div class="div_barra">
                        <form name="barra" method="post" action="busqueda_cli.jsp">
                            <div class="div_barra2">
                                <input type="search" name="busqueda" id="search" class="barra_busqueda" placeholder="¿Qué vamos a comprar hoy?">
                                <button type="submit" class="boton_barra">
                                    <i class="fa fa-search"></i>
                                </button>
                            </div>
                        </form>
                    </div>

                    <div id="categ_menu">
                        <div class="main">
                            <nav class="cbp-hsmenu-wrapper" id="cbp-hsmenu-wrapper">
                                <div class="cbp-hsinner">
                                    <ul class="cbp-hsmenu">

                                        <li>
                                            <a href="#">Componentes</a>
                                            <ul class="cbp-hssubmenu cbp-hssub-rows">
                                                <li><a href="busqueda_cpu_cli.jsp"><img src="iconos\cpu.png" alt="xd"/><span>Procesadores</span></a></li>
                                                <li><a href="busqueda_gpu_cli.jsp"><img src="iconos\gpu.png" alt="xd"/><span>Tarjetas Gráficas</span></a></li>
                                                <li><a href="busqueda_ram_cli.jsp"><img src="iconos\ram.png" alt="xd"/><span>Memorias RAM</span></a></li>
                                                <li><a href="busqueda_mobo_cli.jsp"><img src="iconos\motherboard.png" alt="xd"/><span>Tarjetas Madre</span></a></li>
                                                <li><a href="busqueda_hdd_cli.jsp"><img src="iconos\hdd.png" alt="xd"/><span>Discos Duros</span></a></li>
                                                <li><a href="busqueda_ssd_cli.jsp"><img src="iconos\ssd.png" alt="xd"/><span>Unidades de Estado Sólido</span></a></li>
                                                <li><a href="busqueda_psu_cli.jsp"><img src="iconos\pws.png" alt="xd"/><span>Fuentes de Poder</span></a></li>
                                            </ul>
                                        </li>

                                        <li><a href="busqueda_pc_cli.jsp">PC's de escritorio</a></li>

                                        <li><a href="busqueda_laptop_cli.jsp">Laptops</a></li>

                                        <li>
                                            <a href="#">Periféricos</a>
                                            <ul class="cbp-hssubmenu cbp-hssub-rows">
                                                <li><a href="busqueda_case_cli.jsp"><img src="iconos\gabinete2.png" alt="xd"/><span>Gabinetes</span></a></li>
                                                <li><a href="busqueda_cooler_cli.jsp"><img src="iconos\cooler_2.png" alt="xd"/><span>Disipadores</span></a></li>
                                            </ul>
                                        </li>

                                    </ul>
                                </div>
                            </nav>
                        </div>
                    </div>
                    <script src="scripts/dropdown/cbpHorizontalSlideOutMenu.min.js"></script>
                    <script>
        var menu = new cbpHorizontalSlideOutMenu(document.getElementById('cbp-hsmenu-wrapper'));
                    </script>
                </header>
            </div>


            <!-- Dorpdown de Mi cuenta -->
            <div class="dropdown2">
                <div class="dropdown">
                    <button title="Mi cuenta Cliente" class="dropbtn"></button>
                    <div class="dropdown-content">
                        <a href="gestion_cli.jsp">Mi cuenta</a>
                        <a href="pasa_build.jsp">PC-Builder</a>
                        <a href="mis_ensamblajes.jsp">Mis ensamblajes</a>
                        <a href="cerrar_sesion.jsp">Cerrar Sesión</a>
                    </div>
                </div>
            </div>

            <!-- Botón del carrito -->
            <div class="carrito"><a title="Carrito" href="carrito.jsp"><img src="iconos\carrito.png" alt="Inicio" /></a></div>

        </header>

        <!-- Div General-->
        <div class="basec">

            <!-- Div Titulo-->
            <div class="espacio"></div>
            <center>
                Gestión de Cuenta de Cliente
            </center>
            <!-- Div Formulario-->
            <div class="formularioc">

                <div class="espacio"></div>

                <center>
                    Datos de cuenta
                </center>
                <br>

                <form action="gestion_cli_A.jsp" method="post" name="f1">


                    <div class="espacio"></div>
                    <div class="rectangulo">

                        <div class="texto">
                            <label for="Nombre">Nombre</label>
                        </div>

                        <div class="barra">

                            <input type="text" id="Nombre" name="Nombre" value="<%=rs.getString(2)%>"
                                   maxlength="30" readonly="readonly" required class="input" style="width: 95%">

                        </div>
                    </div>


                    <div class="espacio"></div>
                    <div class="rectangulo">

                        <div class="texto">
                            <label for="apat">Apellido paterno</label>
                        </div>

                        <div class="barra">
                            <input type="text" id="apat" name="apat" value="<%=rs.getString(5)%>"
                                   maxlength="30" readonly="readonly" required class="input" style="width: 80%">
                        </div>
                    </div>


                    <div class="espacio"></div>
                    <div class="rectangulo">

                        <div class="texto">
                            <label for="amat">Apellido materno</label>
                        </div>

                        <div class="barra">
                            <input type="text" id="amat" name="amat" value="<%=rs.getString(6)%>"
                                   maxlength="30" readonly="readonly" required class="input" style="width: 80%">
                        </div>
                    </div>


                    <div class="espacio"></div>
                    <div class="rectangulo">

                        <div class="texto">
                            <label for="Correo">Correo Electrónico</label>
                        </div>

                        <div class="barra">
                            <input type="text" id="Correo" name="Correo" value="<%=rs.getString(3)%>"
                                   maxlength="30" readonly="readonly" required class="input" style="width: 80%">
                        </div>
                    </div>


                    <div class="espacio"></div>
                    <div class="rectangulo">

                        <div class="texto">
                            <label for="Telefono">Teléfono</label>
                        </div>

                        <div class="barra">
                            <input type="text" id="Telefono" name="Telefono" onkeypress="return numeros(event)" value="<%=rs.getString(7)%>"
                                   maxlength="15" readonly="readonly" required class="input" style="width: 50%">
                        </div>
                    </div>


                    <div class="espacio"></div>
                    <div class="rectangulo">

                        <div class="texto">
                            <label for="Contrasena">Contraseña</label>
                        </div>

                        <div class="barra">
                            <input type="password" id="Contrasena" name="Contrasena" value="<%=rs.getString(4)%>"
                                   maxlength="20" readonly="readonly" required class="input" style="width: 70%">
                        </div>
                    </div>



                    <div class="espacio" id="espacioid" style="display: none"></div>
                    <div class="rectangulo" id="rectanguloid" style="display: none">

                        <div class="texto">
                            <label for="CContrasena">Confirmar contraseña</label>
                        </div>

                        <div class="barra">
                            <input type="password" id="Ccontrasena" name="CContrasena" value=""
                                   maxlength="20" required class="input" style="width: 70%">
                        </div>
                    </div>

                    <!-- Div Boton-->


                    <div class="botonc">
                        <input id="subir" type="submit" class="carritoa" value="Continuar" style="display: none" onClick="return comprobar()">                       
                    </div>



                </form>

                <div class="botonc">
                    <button id="switch" type="button" class="carritob" style="display: inline" onclick="cambiar()"> Cambiar datos </button>                       
                </div>             

            </div>

        </div>




        <%

                }

            } catch (Exception juan) {
                out.print(juan.getMessage());
            }

        %>






        <%                                    }

                } catch (Exception juan) {
                    out.print(juan.getMessage());
                }
            }


        %>
    </body>
</html>

