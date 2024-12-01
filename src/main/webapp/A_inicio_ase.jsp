<%-- 
    Document   : A_inicio
    Created on : 27 nov. 2021, 15:50:50
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
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    </head>
    <script src="https://kit.fontawesome.com/40eeeaf3f3.js" crossorigin="anonymous"></script>
    <body>
        <%
            String usuario = request.getParameter("correo");
            String contra = request.getParameter("contrasena");
            if (usuario == null) {
                usuario = "0";
            } else {
                if (usuario.equals("")) {
                    usuario = "0";
                }
            }
            if (contra == null) {
                contra = "0";
            } else {
                if (contra.equals("")) {
                    contra = "0";
                }
            }

            if (!usuario.equals("0") && !usuario.equals("0")) {

                Base bd = new Base();

                try {
                    bd.conectar();
                    String strQry = "select * from asesor where user_ase = '" + usuario + "' and pass_ase = '" + contra + "' ;";

                    ResultSet rs = null;

                    rs = bd.consulta(strQry);

                    if (rs.next()) {
                        HttpSession miSessiondelUsuario = (HttpSession) request.getSession();
                        int id = rs.getInt("id_ase");
                        miSessiondelUsuario.setAttribute("id", id);
                        response.sendRedirect("asesor_main.jsp");
                    } else {
        %>

        <script>
            swal({
                text: 'El correo o contraseña son incorrectos',
                icon: "warning",
            });
        </script>

        <!-- Fondo negro-->
        <div class="div_header">

            <!-- Logo -->
            <div class="logo">
                <a title="logo_inicio" href="soporte_main.jsp"><img src="iconos\soporte_tec2.png" alt="Inicio"/></a>
            </div>

            <!-- partial -->
            <script  src="scripts/script.js"></script>
        </div>

        <!-- Fondo gris-->
        <div class="gris"></div>

        <!-- Inicio de sesion -->
        <div style="height: 450px; width: 40%;" class="contenedor">

            <div class="contenedorIn">

                <p style="font-size: 30px; color: black;"><b>Iniciar Sesión</b></p>
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

        <%
                    }
                } catch (Exception XD) {
                    out.print(XD.getMessage());
                }
            }
        %>  
    </body>
</html>
