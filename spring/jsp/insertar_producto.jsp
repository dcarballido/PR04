<%-- 
    Document   : insertar_producto
    Created on : 19-feb-2020, 20:01:12
    Author     : aaron
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insertar Producto</title>
        <!-- Añadimos el Bootstrap -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    </head>
    <body>
        <form:form method = "POST" action = "insertar_producto" modelAttribute="producte" >
         <table>
            <tr>
               <td>Nombre Producto</td>
               <td><form:input path = "prod_nom" /></td>
               <td><form:errors path="prod_nom" style="color: red;" /></td>
               <td><span id="error_nom" style="color: red;"></span></td>
            </tr>
            <tr>
               <td>Foto Producto</td>
               <td><form:input path = "prod_foto" /></td>
               <td><form:errors path="prod_foto" style="color: red;" /></td>
               <td><span id="error_foto" style="color: red;"></span></td>
            </tr>
            <tr>
               <td>Precio Producto</td>
               <td><form:input path = "prod_preu" /></td>
               <td><form:errors path="prod_preu" style="color: red;" /></td>
               <td><span id="error_preu" style="color: red;"></span></td>
            </tr>
            <tr>
               <td>Descripcion Producto</td>
               <td><form:textarea path = "prod_descripcio" /></td>
               <td><form:errors path="prod_descripcio" style="color: red;" /></td>
               <td><span id="error_descripcio" style="color: red;"></span></td>
            </tr>
            <tr>
               <td>Descuento Producto</td>
               <td><form:input path = "prod_desconte" /></td>
               <td><form:errors path="prod_desconte" style="color: red;" /></td>
               <td><span id="error_desconpte" style="color: red;"></span></td>
            </tr>
               <td colspan = "2">
                  <input type = "submit" value = "Registrar" id="boton"/>
               </td>
            </tr>
         </table>  
        </form:form>
    </body>
</html>
