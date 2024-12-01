<%-- 
    Document   : G_fpc_A
    Created on : 2 abr. 2022, 13:44:47
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
            String procesador = request.getParameter("procesador");
            String ram = request.getParameter("ram");
            String graficos = request.getParameter("graficos");
            String disk = request.getParameter("disk");
            String psu = request.getParameter("psu");
            String caract = request.getParameter("caract");
            String so = request.getParameter("so");
            
            
            if (!marca.equals("") && !procesador.equals("") && !ram.equals("") 
                    && !graficos.equals("") && !disk.equals("") && !psu.equals("")
                    && !caract.equals("") && !so.equals("")) {
                
                Base bd = new Base();
                
                try {
                    bd.conectar();
                    
                    String strQry2 = "select id_prod from producto order by id_prod desc limit 1;";
                    ResultSet rs = null;
                    rs = bd.consulta(strQry2);    
                    int idprod;

                    rs.next();

                    idprod = Integer.parseInt(rs.getString(1));
                    
                    String strQry1 = "insert into pc (marca_pc, cpu_pc, ram_pc, gpu_pc, disk_pc, psu_pc, caract_pc, so_pc, id_prod)"
                                + "values('"+marca+"' , '"+procesador+"' , '"+ram+"' , '"+graficos+"' , '"+disk+"' , '"+psu+"' , '"+caract+"' , '"+so+"' , '"+idprod+"' );";
                    
                    int resultadoInsert = bd.insertar(strQry1);
                            
                        }

                        catch(Exception juan){
                    out.print(juan.getMessage());

                    }
            
                response.sendRedirect("G_img.jsp");
                
                }
            
            
%>
    </body>
</html>
        