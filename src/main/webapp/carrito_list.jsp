<%-- 
    Document   : carrito_list
    Created on : 20 nov. 2021, 13:37:37
    Author     : Mauricio


--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="conexion.Base"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="estilos/carrito.css">
        <script  src="scripts/carrito.js"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    </head>
    <body>
        <%
            HttpSession miSessiondelUsuario = (HttpSession) request.getSession();
            int id = (int) (miSessiondelUsuario.getAttribute("id") == null ? 0 : miSessiondelUsuario.getAttribute("id"));
            //int id = 1;
        %>

        <%--Queda expresamente prohibida la reproducción total o parcial de este
            fragmento de código ni de cualquiera de sus contenidos sin el permiso 
            expreso y por escrito de EZ-Software. --%>

        <%            Base bd = new Base();
            try {
                bd.conectar();
                String strQry = "select carrito.cantidad,producto.id_prod,img_prod,"
                        + "nom_prod,sku_prod,prec_prod from cliente "
                        + "inner join carrito on cliente.id_cli = carrito.id_cli "
                        + "inner join producto on producto.id_prod = carrito.id_prod "
                        + "where cliente.id_cli = '" + id + "'; ";

                ResultSet rs = null;
                rs = bd.consulta(strQry);

                String strQry2 = "select carrito.cantidad * producto.prec_prod from cliente "
                        + "inner join carrito on cliente.id_cli = carrito.id_cli "
                        + "inner join producto on producto.id_prod = carrito.id_prod "
                        + "where cliente.id_cli = '" + id + "'; ";

                ResultSet rs2 = null;
                rs2 = bd.consulta(strQry2);

                int idprod;
                boolean si = false;
                while (rs.next() && rs2.next()) {
                    si = true;
                    idprod = Integer.parseInt(rs.getString(2));
        %>

        <!-- Producto agregado -->
        <div class="list_prod_car">

            <!-- Imagen del producto -->
            <div class="img_prod_list">
                <div class="div_img_list">
                    <img src="imgs/productos/<%=rs.getString(3)%>" >
                </div>
            </div>

            <!-- Nombre del producto -->
            <div >

                <label class="tit_prin">

                    <%=rs.getString(4)%>
                </label>
                <br>
                <label class="sub_tit">
                    SKU:
                    <%=rs.getString(5)%>
                </label>
            </div>

            <!-- Cantidad -->
            <div class="div_list_info">
                <label class="sub_tit">
                    Cantidad 
                </label>
                <br><br>
                <div class="forms">
                    <a href="A_menos.jsp?idprod=<%=idprod%>">
                        <input type="submit" value="<" class="boton_form" >
                    </a>
                    &nbsp;&nbsp;
                    <label>
                        <%=rs.getString(1)%>
                    </label>
                    &nbsp;&nbsp;
                    <a href="A_mas.jsp?idprod=<%=idprod%>">
                        <input type="submit" value=">" class="boton_form" >
                    </a>
                </div>
            </div>

            <!-- Precio unitario -->
            <div class="div_list_info">      
                <label class="sub_tit">
                    Precio
                </label>
                <br><br>
                <label class="tit_prin">
                    $<%=rs.getString(6)%>
                </label>
            </div>

            <!-- Subtotal -->
            <div class="div_list_info">
                <label class="sub_tit">
                    Subtotal
                </label>
                <br><br>
                <label class="tit_prin">
                    $<%=rs2.getString(1)%>
                </label>
            </div>

            <!-- Boton para borrar el producto -->
            <div class="basurita1">
                <div class="basurita">
                    <a href="A_borrar_prod.jsp?idprod=<%=idprod%>">
                        <img src="iconos/basura_1.png" >  <!-- agregar imagen de borracion xdxd -->
                    </a>
                </div>
            </div>

        </div>

        <%
            }
            if (si == false) {
        %>
        No ha agregado ningún producto al carrito de compras
        <%
                }
                rs.close();
                bd.cierraConexion();
            } catch (Exception ex) {
                out.print(ex.getMessage());
            }

        %>
    </body>
</html>
