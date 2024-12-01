<%-- 
    Document   : G_ffp_A
    Created on : 23 may. 2022, 17:33:44
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
            String potencia = request.getParameter("potencia");
            String plus = request.getParameter("plus");
            String modul = request.getParameter("modul");
            String protecciones = request.getParameter("protecciones");
            String ffomra = request.getParameter("ffomra");
            String ventil = request.getParameter("ventil");
            String refri = request.getParameter("refri");
            String sata = request.getParameter("sata");
            String pcie = request.getParameter("pcie");
            String floopy = request.getParameter("floopy");

            if (!marca.equals("") && !potencia.equals("") && !plus.equals("")
                    && !modul.equals("") && !protecciones.equals("") && !ventil.equals("") && !ffomra.equals("")
                    && !refri.equals("") && !sata.equals("") && !pcie.equals("") && !floopy.equals("")) {

                Base bd = new Base();

                try {
                    bd.conectar();

                    String strQry2 = "select id_prod from producto order by id_prod desc limit 1;";
                    ResultSet rs = null;
                    rs = bd.consulta(strQry2);
                    int idprod;

                    rs.next();

                    idprod = Integer.parseInt(rs.getString(1));

                    String strQry1 = "insert into fuentepoder (marca_psu, potencia_psu, plus80_psu, modul_psu, prot_psu, forma_psu, ventil_psu, refri_psu, sata_psu, pcie_psu, floopy_psu, id_prod )"
                            + "values('" + marca + "' , '" + potencia + "' , '" + plus + "' , '" + modul + "' , '" + protecciones + "' , '" + ffomra + "' , '" + ventil + "' , '" + refri + "' , '" + sata + "' , '" + pcie + "' , '" + floopy + "' , '" + idprod + "' );";

                    int resultadoInsert = bd.insertar(strQry1);

                } catch (Exception juan) {
                    out.print(juan.getMessage());

                }

                response.sendRedirect("G_img.jsp");

            }


        %>
    </body>
</html>
