<%-- 
    Document   : G_flap_A
    Created on : 31 mar. 2022, 15:43:14
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
            String procesador = request.getParameter("procesador");
            String ram = request.getParameter("ram");
            String graficos = request.getParameter("graficos");
            String disk = request.getParameter("disk");
            String pantalla = request.getParameter("pantalla");
            String puertos = request.getParameter("puertos");
            String bateria = request.getParameter("bateria");
            String conectividad = request.getParameter("conectividad");
            String dimensiones = request.getParameter("dimensiones");
            String peso = request.getParameter("peso");
            String so = request.getParameter("so");
            
            
            if (!marca.equals("") && !procesador.equals("") && !ram.equals("") 
                    && !graficos.equals("") && !disk.equals("") && !pantalla.equals("")
                    && !puertos.equals("") && !bateria.equals("") && !conectividad.equals("")
                    && !dimensiones.equals("") && !peso.equals("") && !so.equals("")) {
                
                Base bd = new Base();
                
                try {
                    bd.conectar();
                    
                    String strQry2 = "select id_prod from producto order by id_prod desc limit 1;";
                    ResultSet rs = null;
                    rs = bd.consulta(strQry2);    
                    int idprod;

                    rs.next();

                    idprod = Integer.parseInt(rs.getString(1));
                    
                    String strQry1 = "insert into laptop (marca_laptop, cpu_laptop, ram_laptop, gpu_laptop, disk_laptop, screen_laptop, puertos_laptop, batery_laptop, conect_laptop, tam_laptop, peso_laptop, so_laptop, id_prod)"
                                + "values('"+marca+"' , '"+procesador+"' , '"+ram+"' , '"+graficos+"' , '"+disk+"' , '"+pantalla+"' , '"+puertos+"' , '"+bateria+"' , '"+conectividad+"' , '"+dimensiones+"' , '"+peso+"' , '"+so+"' , '"+idprod+"' );";
                    
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
        