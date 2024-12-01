<%-- 
    Document   : A_registro
    Created on : 26 nov. 2021, 19:25:16
    Author     : Mauricio
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="conexion.Base"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EZ-builder</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
        <link rel="stylesheet" href="estilos/registro.css">
        <link rel="shortcut icon" href="imgs/gabinete_white.png">
        <script  src="scripts/validaciones.js"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    </head>
    <script src="https://kit.fontawesome.com/40eeeaf3f3.js" crossorigin="anonymous"></script>
    <body>
        <%
            String nombre = request.getParameter("nombres");
            String paterno = request.getParameter("paterno");
            String materno = request.getParameter("materno");
            String contra = request.getParameter("contrasena");
            String correo = request.getParameter("correo");
            String telefono = request.getParameter("telefono");

            if (!nombre.equals("") && !paterno.equals("") && !materno.equals("")
                    && !contra.equals("") && !correo.equals("") && !telefono.equals("")) {

                Base bd = new Base();

                try {
                    bd.conectar();

                    String strQry = "select mail_cli from cliente;";
                    ResultSet rs = null;

                    rs = bd.consulta(strQry);

                    boolean repetido = false;
                    while (rs.next()) {
                        if (rs.getString(1).equals(correo)) {
                            repetido = true;
                        }
                    }

                    if (repetido == false) {
                        String strQry1 = "insert into cliente (nom_cli, mail_cli, pass_cli, apat_cli, amat_cli, tel_cli)"
                                + "values('" + nombre + "' , '" + correo + "' , '" + contra + "' , '" + paterno + "' , '" + materno + "' , '" + telefono + "' );";

                        int resultadoInsert = bd.insertar(strQry1);
                        out.print("checar resultado de la base " + resultadoInsert);

                        String strQry2 = "select * from cliente where mail_cli = '" + correo + "' ;";

                        ResultSet rs2 = null;

                        rs2 = bd.consulta(strQry2);

                        if (rs2.next()) {
                            HttpSession miSessiondelUsuario = (HttpSession) request.getSession();
                            int id = rs2.getInt("id_cli");
                            miSessiondelUsuario.setAttribute("id", id);
                            response.sendRedirect("principal_cli.jsp");
                        }

                    } else {

        %>

        <script>
            swal({
                text: 'El correo introducido ya está en uso',
                icon: "warning",
            });
        </script>

        <!-- Fondo negro-->
        <div class="div_header">

            <!-- Logo -->
            <div class="logo">
                <a title="logo_inicio" href="principal.jsp"><img src="iconos\logo_blanco.png" alt="Inicio" /></a>
            </div>

            <!-- partial -->
            <script  src="scripts/script.js"></script>
        </div>

        <!-- Fondo gris-->
        <div class="gris"></div>

        <!-- Registro -->
        <div class="contenedor">

            <!-- Registrate -->
            <div class="contenedorR">
                ¡Regístrate! 
            </div><!-- xd -->

            <!-- link pal vendedor -->
            <div class="contenedorV">
                <a title="link pal vendedor" href="registro_ven.jsp">Crear cuenta de vendedor</a>
            </div>


            <!-- Formulario -->
            <div class="contenedorForm">
                <form action="A_registro.jsp" method="post" name="f1">

                    <!-- Parte superior del formulario -->
                    <center> <b>
                            Cuenta Personal
                        </b></center>

                    <br>

                    <hr class="linea">

                    <br>


                    <label for="Nombres">Nombres</label>
                    <br>
                    <input type="text" id="Nombres" name="nombres" onkeypress="return letras(event)"
                           maxlength="40" required class="inputs">
                    <br>
                    <br>

                    <!-- Parte dividida del formulario -->
                    <div class="contenedorForm2">



                        <!-- Parte derecha del formulario -->
                        <div class="contenedorFormD">

                            <label for="Materno">Apellido Materno</label>
                            <br>
                            <input type="text" id="Materno" name="materno" onkeypress="return letras(event)"
                                   maxlength="20" required class="inputs">
                            <br>
                            <br>
                            <label for="Telefono">Teléfono</label>
                            <br>
                            <input type="text" id="Telefono" name="telefono" onkeypress="return numeros(event)"
                                   maxlength="10" required class="inputs">
                            <br>
                            <br>
                            <label for="Ccontrasena">Confirmar contraseña</label>
                            <br>
                            <input type="password" id="Ccontrasena" name="ccontrasena" 
                                   required class="inputs">

                        </div>



                        <!-- Parte izquierda del formulario -->
                        <div class="contenedorFormI">

                            <label for="Paterno">Apellido Paterno</label>
                            <br>
                            <input type="text" id="Paterno" name="paterno" onkeypress="return letras(event)"
                                   maxlength="20" required class="inputs">
                            <br>
                            <br>
                            <label for="Correo">Correo Electrónico</label>
                            <br>
                            <input type="email" id="Correo" name="correo" 
                                   maxlength="50" required class="inputs">
                            <br>
                            <br>
                            <label for="Contrasena">Contraseña</label>
                            <br>
                            <input type="password" id="Contrasena" name="contrasena" 
                                   maxlength="50" required class="inputs">

                        </div>

                    </div>

                    <!-- Parte inferior -->
                    <br>
                    <div class="botonc">
                        <input type="submit" class="carritob" value="Registrarse" onClick="return comprobar()">                       
                    </div>
                    <br>

                </form>

                <div class="divchikito">
                    <center>
                        ¿Ya tienes una cuenta? haz clic <a href="inicios.jsp"> aquí </a>
                    </center>
                </div>


            </div>

        </div>        

        <%                    }
                } catch (Exception juan) {
                    out.print(juan.getMessage());
                }
            }
        %> 
    </body>
</html>
