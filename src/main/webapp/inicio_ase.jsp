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

        <!-- Inicio de sesion -->
        <div style="height: 450px; width: 40%;" class="contenedor">

            <div class="contenedorIn">

                <p style="font-size: 30px; color: black;"><b>Iniciar Sesion</b></p>
                <br>  

                <!-- Formulario -->
                <form action="A_inicio_ase.jsp" method="post" name="f1">

                    <label for="Correo">Usuario</label>
                    <br>
                    <input id="Correo" name="correo" class="inputs" required>
                    <br>
                    <br>
                    <label for="Contrasena">Contraseña</label>
                    <br>
                    <input type="password" id="Contrasena" name="contrasena" class="inputs" required>

                    <!-- Parte inferior -->
                    <br><br>
                    <div class="botonc">
                        <input type="submit" class="carritob" value="Iniciar Sesion">                      
                    </div>
                    <br>

                </form>

            </div>



        </div>
    </body>
</html>




























