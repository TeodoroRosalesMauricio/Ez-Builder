<%-- 
    Document   : G_fgabi_A
    Created on : 30 mar. 2022, 16:40:29
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
            String forma = request.getParameter("forma");
            String mbocomp = request.getParameter("mbocomp");
            String prefan = request.getParameter("prefan");
            String disk = request.getParameter("disk");
            String ports = request.getParameter("ports");
            String fan = request.getParameter("fan");
            String expan = request.getParameter("expan");
            String maxcpu = request.getParameter("maxcpu");
            String maxgpu = request.getParameter("maxgpu");
            String psu = request.getParameter("psu");
            String meds = request.getParameter("meds");

            if (!marca.equals("") && !modelo.equals("") && !forma.equals("")
                    && !mbocomp.equals("") && !prefan.equals("") && !disk.equals("")
                    && !ports.equals("") && !fan.equals("") && !expan.equals("")
                    && !maxcpu.equals("") && !maxgpu.equals("") && !psu.equals("")
                    && !meds.equals("")) {

                Base bd = new Base();

                try {
                    bd.conectar();

                    String strQry2 = "select id_prod from producto order by id_prod desc limit 1;";
                    ResultSet rs = null;
                    rs = bd.consulta(strQry2);
                    int idprod;

                    rs.next();

                    idprod = Integer.parseInt(rs.getString(1));

                    String strQry1 = "insert into gabinete (marca_case, modelo_case, forma_case, mbocomp_case, prefan_case, disk_case, ports_case, fan_case, expan_case, maxcpu_case, maxgpu_case, psu_case, meds_case, id_prod )"
                            + "values('" + marca + "' , '" + modelo + "' , '" + forma + "' , '" + mbocomp + "' , '" + prefan + "' , '" + disk + "' , '" + ports + "' , '" + fan + "' , '" + expan + "' , '" + maxcpu + "' , '" + maxgpu + "' , '" + psu + "', '" + meds + "' , '" + idprod + "' );";

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
