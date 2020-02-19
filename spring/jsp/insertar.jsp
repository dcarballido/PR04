<%-- 
    Document   : insertar
    Created on : 19-feb-2020, 18:09:47
    Author     : aaron
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insertar Usuario</title>
        <!-- Añadimos el Bootstrap -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
        
        <script type="text/javascript">
           $(document).ready(function () {
               //cuando pulsemos el boton con id boton
                $("#boton").click(function () {
                    //alert("hola");
                   var pasar = true
                   var emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;        
                
                
                   if ($("#correo_usuario").val() === "") {
                       $("#error_email").html("Ingrese un correo de usuario");
                       pasar = false;
                   } else {
                        if(!emailReg.test($("#correo_usuario").val())) {
                            $("#error_email").html("Inserta un email valido,ejemplo: ejemplo@ejemplo.com");
                            pasar = false;
                        }else{

                      //$("#error_email").css("color","greenyellow");
                       $("#error_email").html("");
                   }
                   }
                   
                   
                   
                     if ($("#password_usuario").val() === "") {
                      $("#error_password").html("Ingrese password de usuario");
                      pasar = false;
                  } else {   
                     // $("#error_password").css("color","greenyellow");
                      $("#error_password").html("");
                  }
                  return pasar;
              });
           });
        </script>
    </head>
    <body>
        <form:form method = "POST" action = "insertar" modelAttribute="usuarios" >
         <table>
            <tr>
               <td>Correro Usuario</td>
               <td><form:input path = "correo_usuario" /></td>
               <td><form:errors path="correo_usuario" style="color: red;" /></td>
               <td><span id="error_email" style="color: red;"></span></td>
            </tr>
            <tr>
               <td>Password Usuario</td>
               <td><form:password path = "password_usuario" /></td>
               <td><form:errors path="password_usuario" style="color: red;" /></td>
               <td><span id="error_password" style="color: red;"></span></td>
            </tr>
            <tr>
               <td colspan = "2">
                  <input type = "submit" value = "Registrar" id="boton"/>
               </td>
            </tr>
         </table>  
      </form:form>
        
        <script type="text/javascript">
            //el blur hace que se ejecute cuando pierda el foco.
            $('#correo_usuario').blur(
                function() {
                    //este mensaje va a recibir el mensaje del servidor, pq primero va al servidor a coger el mensaje y luego lo ejecuta.
                    $('#error_email').load('myajax', "email="+$('#correo_usuario').val())
                }
            )
    
            $('#password_usuario').blur(
                function() {
                    //este mensaje va a recibir el mensaje del servidor, pq primero va al servidor a coger el mensaje y luego lo ejecuta.
                    $('#error_password').load('myajax1', "pass="+$('#password_usuario').val())
                }
            )
            
        </script>
    </body>
</html>
