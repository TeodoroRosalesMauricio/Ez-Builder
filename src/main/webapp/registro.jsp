<%-- 
    Document   : Registro
    Created on : 16 nov. 2021, 20:35:25
    Author     : usuario1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>EZ-builder</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
        <link rel="stylesheet" href="estilos/registro.css">
        <link rel="shortcut icon" href="imgs/gabinete_white.png">
        <script  src="scripts/validaciones.js"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    </head>
    <script src="https://kit.fontawesome.com/40eeeaf3f3.js" crossorigin="anonymous"></script>
    <body>



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


            <div class="contenedorV">
                <a title="link pal vendedor" href="registro_ven.jsp">Crear cuenta de vendedor</a>
            </div>


            <!-- Formulario -->
            <div class="contenedorForm">
                <form action="A_registro.jsp" method="post" name="f1">

                    <!-- Parte superior del formulario -->
                    <center> <b>
                            CUENTA PERSONAL
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
                            
                            <input type="password" id="Ccontrasena" name="ccontrasena" 
                                placeholder="Confirmar contraseña"   required class="inputs">

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
                          
                            <input type="password" id="Contrasena" name="contrasena" 
                                 placeholder="Contraseña"  maxlength="50" required class="inputs">

                        </div>

                    </div>

                    <!-- Parte inferior -->
                    <br><br>
                    <div class="botonc">
                        <input type="submit" class="carritob" value="REGISTRARSE" onClick="return comprobar()">                       
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

    </body>
</html>