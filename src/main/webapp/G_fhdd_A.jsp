<%-- 
    Document   : G_fhdd_A
    Created on : 23 may. 2022, 18:28:38
    Author     : usuario1
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="conexion.Base"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Publicar</title>
        <link rel="stylesheet" type="text/css" href="estilos/dropdown/default.css" />
        <link rel="stylesheet" type="text/css" href="estilos/dropdown/component.css" />
        <script src="scripts/dropdown/modernizr.custom.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
        <link rel="stylesheet" href="estilos/barra.css">
        <link rel="stylesheet" href="estilos/principal.css">
        <link rel="stylesheet" href="estilos/gestion.css">
        <link rel="stylesheet" href="estilos/pc_build.css">
        <link rel="shortcut icon" href="imgs/gabinete_white.png">
    </head>
    <script src="https://kit.fontawesome.com/40eeeaf3f3.js" crossorigin="anonymous"></script>
    <body>

        <%
            HttpSession miSessiondelUsuario = (HttpSession) request.getSession();
            int id = (int) (miSessiondelUsuario.getAttribute("id") == null ? 0 : miSessiondelUsuario.getAttribute("id"));

        %>
        <%            String marca = request.getParameter("marca");
            String linea = request.getParameter("linea");
            String capacidad = request.getParameter("capacidad");
            String vel = request.getParameter("vel");
            String cache = request.getParameter("cache");
            String ubicacion = request.getParameter("ubicacion");
            String tipo = request.getParameter("tipo");
            String interfaz = request.getParameter("interfaz");
            String elec = request.getParameter("elec");
            String tamano = request.getParameter("tamano");

            if (!marca.equals("") && !linea.equals("") && !capacidad.equals("")
                    && !vel.equals("") && !cache.equals("") && !ubicacion.equals("")
                    && !tipo.equals("") && !interfaz.equals("") && !elec.equals("") && !tamano.equals("")) {

                Base bd = new Base();

                try {
                    bd.conectar();

                    String strQry2 = "select id_prod from producto order by id_prod desc limit 1;";
                    ResultSet rs = null;
                    rs = bd.consulta(strQry2);
                    int idprod;

                    rs.next();

                    idprod = Integer.parseInt(rs.getString(1));

                    String strQry1 = "insert into hdd (marca_hdd, linea_hdd, cap_hdd, vel_hdd, cache_hdd, ubic_hdd, tipo_hdd, interf_hdd, electr_hdd, tamaño_hdd, id_prod )"
                            + "values('" + marca + "' , '" + linea + "' , '" + capacidad + "' , '" + vel + "' , '" + cache + "' , '" + ubicacion + "' , '" + tipo + "' , '" + interfaz + "' , '" + elec + "' , '" + tamano + "' , '" + idprod + "' );";

                    int resultadoInsert = bd.insertar(strQry1);

                } catch (Exception juan) {
                    out.print(juan.getMessage());

                }

                response.sendRedirect("G_img.jsp");

            }


        %>
    </body>
</html>
