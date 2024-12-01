<%-- 
    Document   : G_fcpu_A
    Created on : 28 mar. 2022, 19:50:54
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
            String linea = request.getParameter("linea");
            String socket = request.getParameter("socket");
            String nucleos = request.getParameter("nucleos");
            String hilos = request.getParameter("hilos");
            String graficos = request.getParameter("graficos");
            String cooler = request.getParameter("cooler");
            String cache = request.getParameter("cache");
            String tcache = request.getParameter("tcache");
            String fbase = request.getParameter("fbase");
            String fmaxima = request.getParameter("fmaxima");
            String litografia = request.getParameter("litografia");
            String overlook = request.getParameter("overlook");
            String tdp = request.getParameter("tdp");
            String pci = request.getParameter("pci");

            if (!marca.equals("") && !modelo.equals("") && !linea.equals("")
                    && !socket.equals("") && !nucleos.equals("") && !hilos.equals("")
                    && !graficos.equals("") && !cooler.equals("") && !cache.equals("")
                    && !tcache.equals("") && !fbase.equals("") && !fmaxima.equals("")
                    && !litografia.equals("") && !overlook.equals("") && !tdp.equals("") && !pci.equals("")) {

                Base bd = new Base();

                try {
                    bd.conectar();

                    String strQry2 = "select id_prod from producto order by id_prod desc limit 1;";
                    ResultSet rs = null;
                    rs = bd.consulta(strQry2);
                    int idprod;

                    rs.next();

                    idprod = Integer.parseInt(rs.getString(1));

                    String strQry1 = "insert into procesador (marca_cpu, modelo_cpu, linea_cpu, socket_cpu, nucl_cpu, hilos_cpu, graph_cpu, cooler_cpu, cache_cpu, tcache_cpu, frecbase_cpu, frecmax_cpu, lito_cpu, over_cpu, tdp_cpu, pci_cpu, id_prod )"
                            + "values('" + marca + "' , '" + modelo + "' , '" + linea + "' , '" + socket + "' , '" + nucleos + "' , '" + hilos + "' , '" + graficos + "' , '" + cooler + "' , '" + cache + "' , '" + tcache + "' , '" + fbase + "' , '" + fmaxima + "' , '" + litografia + "' , '" + overlook + "' , '" + tdp + "' , '" + pci + "' , '" + idprod + "' );";

                    int resultadoInsert = bd.insertar(strQry1);

                } catch (Exception juan) {
                    out.print(juan.getMessage());

                }

                response.sendRedirect("G_img.jsp");

            }


        %>
    </body>
</html>
