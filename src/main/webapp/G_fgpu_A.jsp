<%-- 
    Document   : G_fpu_A
    Created on : 22 may. 2022, 16:24:24
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
        <link rel="stylesheet" href="estilos/gestion_f.css">
        <link rel="shortcut icon" href="imgs/gabinete_white.png">
    </head>
    <script src="https://kit.fontawesome.com/40eeeaf3f3.js" crossorigin="anonymous"></script>
    <body>

        <%
            HttpSession miSessiondelUsuario = (HttpSession) request.getSession();
            int id = (int) (miSessiondelUsuario.getAttribute("id") == null ? 0 : miSessiondelUsuario.getAttribute("id"));

        %>
        <%            String marca = request.getParameter("marca");
            String serie = request.getParameter("serie");
            String gpu = request.getParameter("gpu");
            String cuda = request.getParameter("cuda");
            String fboost = request.getParameter("fboost");
            String memoria = request.getParameter("memoria");
            String tmem = request.getParameter("tmem");
            String interfaz = request.getParameter("interfaz");
            String res = request.getParameter("res");
            String energ = request.getParameter("energ");
            String psu = request.getParameter("psu");
            String fmaxima = request.getParameter("fmaxima");
            String dport = request.getParameter("dport");

            if (!marca.equals("") && !serie.equals("") && !gpu.equals("")
                    && !cuda.equals("") && !fboost.equals("") && !memoria.equals("")
                    && !tmem.equals("") && !interfaz.equals("") && !res.equals("")
                    && !energ.equals("") && !psu.equals("") && !fmaxima.equals("") && !dport.equals("")) {

                Base bd = new Base();

                try {
                    bd.conectar();

                    String strQry = "select id_prod from producto order by id_prod desc limit 1;";
                    ResultSet rs = null;
                    rs = bd.consulta(strQry);
                    int idprod;

                    rs.next();

                    idprod = Integer.parseInt(rs.getString(1));

                    String strQry1 = "insert into tar_grafica (marca_gpu, serie_gpu, gpu, ncuda_gpu, fboost, memoria_gpu, tipomem_gpu, interf_gpu, res_gpu, energ_gpu, psu_gpu, hdmi_gpu, dport_gpu, id_prod )"
                            + "values('" + marca + "' , '" + serie + "' , '" + gpu + "' , '" + cuda + "' , '" + fboost + "' , '" + memoria + "' , '" + tmem + "' , '" + interfaz + "' , '" + res + "' , '" + energ + "' , '" + psu + "' , '" + fmaxima + "' , '" + dport + "' , '" + idprod + "' );";

                    int resultadoInsert = bd.insertar(strQry1);

                } catch (Exception juan) {
                    out.print(juan.getMessage());

                }

                response.sendRedirect("G_img.jsp");

            }


        %>
    </body>
</html>


