<%-- 
    Document   : login
    Created on : 23-ene-2020, 16:00:55
    Author     : aaron
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Añadimos el Bootstrap -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap-theme.min.css">

        <!-- Latest compiled and minified JavaScript -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <!--end bootstrap -->

        
        
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <div style="width: 280px;height: 100px;background-color: lightblue;margin-left: 500px;margin-top:200px ;align-items: center;border-radius: 10px;">
        <form:form modelAttribute="usuarios" method="POST" action="login">
            <b style="margin-left: 5px;">Usuario</b>
                <form:input path="correo_usuario" style="margin-top:5px;margin-left:5px;"/>
                <span id="error_nombre" style="color: red;"></span><br>
                
                <b style="margin-left: 5px;">Password</b>
                <form:password path="password_usuario" />
                <span id="error_edat" style="color: red;"></span><br>
        
                <input type="submit" value="Enviar" id="boton" />
            </form:form>
        </div>
    </body>
</html>
