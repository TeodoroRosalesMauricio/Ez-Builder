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
        <%
            String marca = request.getParameter("marca");
            String modelo = request.getParameter("modelo");
            String plataforma = request.getParameter("plataforma");
            String socket = request.getParameter("socket");
            String chipset = request.getParameter("chipset");
            String forma = request.getParameter("forma");
            String ramcomp = request.getParameter("ramcomp");
            String nram = request.getParameter("nram");
            String maxram = request.getParameter("maxram");
            String ramfrec = request.getParameter("ramfrec");
            String arqgram = request.getParameter("arqgram");
            String puertos = request.getParameter("puertos");
            String conectores = request.getParameter("conectores");
            String pcie = request.getParameter("pcie");
            String m2con = request.getParameter("m2con");
            String sata = request.getParameter("sata");
            String sound = request.getParameter("sound");
            String ethernet = request.getParameter("ethernet");
            String wifi = request.getParameter("wifi");
            String bluetooth = request.getParameter("bluetooth");
            
            if (!marca.equals("") && !modelo.equals("") && !plataforma.equals("") 
                    && !socket.equals("") && !chipset.equals("") && !forma.equals("")
                    && !ramcomp.equals("") && !nram.equals("") && !maxram.equals("")
                    && !ramfrec.equals("") && !arqgram.equals("") && !puertos.equals("")
                    && !conectores.equals("") && !pcie.equals("") && !m2con.equals("")
                    && !sata.equals("") && !sound.equals("") && !ethernet.equals("") && !wifi.equals("") && !bluetooth.equals("")) {
                
                Base bd = new Base();
                
                try {
                    bd.conectar();
                    
                    String strQry2 = "select id_prod from producto order by id_prod desc limit 1;";
                    ResultSet rs = null;
                    rs = bd.consulta(strQry2);    
                    int idprod;

                    rs.next();

                    idprod = Integer.parseInt(rs.getString(1));
                    
                    String strQry1 = "insert into mobo (marca_mobo, modelo_mobo, platf_mobo, socket_mobo, chipset_mobo, forma_mobo, ramcomp_mobo, nram_mobo, maxram_mobo, ramfrec_mobo, arqram_mobo, puertos_mobo, conectors_mobo, pcie_mobo, m2con_mobo, sata_mobo, sound_mobo, ethernet_mobo, wifi_mobo, blue_mobo, id_prod )"
                                + "values('"+marca+"' , '"+modelo+"' , '"+plataforma+"' , '"+socket+"' , '"+chipset+"' , '"+forma+"' , '"+ramcomp+"' , '"+nram+"' , '"+maxram+"' , '"+ramfrec+"' , '"+arqgram+"' , '"+puertos+"' , '"+conectores+"' , '"+pcie+"' , '"+m2con+"' , '"+sata+"' , '"+sound+"' , '"+ethernet+"' , '"+wifi+"' , '"+bluetooth+"' , '"+idprod+"' );";
                    
                    int resultadoInsert = bd.insertar(strQry1);
                        out.print("checar resultado de la base " + resultadoInsert);
                    
                        }

                        catch(Exception juan){
                    out.print(juan.getMessage());

                    }
            
                response.sendRedirect("G_img.jsp");
                
                }
            
            
%>
    </body>
</html>
        