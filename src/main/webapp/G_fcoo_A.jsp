<%-- 
    Document   : G_fcoo_A
    Created on : 31 mar. 2022, 14:39:41
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
            String modelo = request.getParameter("modelo");
            String socket = request.getParameter("socket");
            String medidas = request.getParameter("medidas");
            String nfan = request.getParameter("nfan");
            String confan = request.getParameter("confan");
            String rpmfan = request.getParameter("rpmfan");
            String airmax = request.getParameter("airmax");
            String energ = request.getParameter("energ");
            String ruido = request.getParameter("ruido");

            if (!marca.equals("") && !modelo.equals("") && !socket.equals("")
                    && !medidas.equals("") && !nfan.equals("") && !confan.equals("")
                    && !rpmfan.equals("") && !airmax.equals("") && !energ.equals("") && !ruido.equals("")) {

                Base bd = new Base();

                try {
                    bd.conectar();

                    String strQry2 = "select id_prod from producto order by id_prod desc limit 1;";
                    ResultSet rs = null;
                    rs = bd.consulta(strQry2);
                    int idprod;

                    rs.next();

                    idprod = Integer.parseInt(rs.getString(1));

                    String strQry1 = "insert into cooler (marca_cooler, modelo_cooler, socket_cooler, meds_cooler, nfan_cooler, confan_cooler, rpmfan_cooler, airmax_cooler, energ_cooler, ruido_cooler, id_prod)"
                            + "values('" + marca + "' , '" + modelo + "' , '" + socket + "' , '" + medidas + "' , '" + nfan + "' , '" + confan + "' , '" + rpmfan + "' , '" + airmax + "' , '" + energ + "' , '" + ruido + "' , '" + idprod + "' );";

                    int resultadoInsert = bd.insertar(strQry1);
                    out.print("checar resultado de la base " + resultadoInsert);

                } catch (Exception juan) {
                    out.print(juan.getMessage());

                }

                response.sendRedirect("G_img.jsp");

            }


        %>
    </body>
</html>
