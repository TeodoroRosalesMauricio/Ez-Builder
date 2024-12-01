<%-- 
    Document   : G_fssd_A
    Created on : 23 may. 2022, 18:03:25
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
            String linea = request.getParameter("linea");
            String capacidad = request.getParameter("capacidad");
            String vesc = request.getParameter("vesc");
            String vlec = request.getParameter("vlec");
            String ubic = request.getParameter("ubic");
            String tipo = request.getParameter("tipo");
            String interf = request.getParameter("interf");
            String temp = request.getParameter("temp");
            String forma = request.getParameter("forma");
            
            if (!marca.equals("") && !linea.equals("") && !capacidad.equals("") 
                    && !vesc.equals("") && !vlec.equals("") && !ubic.equals("")
                    && !tipo.equals("") && !interf.equals("") && !temp.equals("") && !forma.equals("")) {
                
                Base bd = new Base();
                
                try {
                    bd.conectar();
                    
                    String strQry2 = "select id_prod from producto order by id_prod desc limit 1;";
                    ResultSet rs = null;
                    rs = bd.consulta(strQry2);    
                    int idprod;

                    rs.next();

                    idprod = Integer.parseInt(rs.getString(1));
                    
                    String strQry1 = "insert into ssd (marca_ssd, linea_ssd, cap_ssd, vesc_ssd, vlec_ssd, ubic_ssd, tipo_ssd, interf_ssd, temp_ssd, forma_ssd, id_prod )"
                                + "values('"+marca+"' , '"+linea+"' , '"+capacidad+"' , '"+vesc+"' , '"+vlec+"' , '"+ubic+"' , '"+tipo+"' , '"+interf+"' , '"+temp+"' , '"+forma+"' , '"+idprod+"' );";
                    
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
        
