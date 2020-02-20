<%-- 
    Document   : recursos
    Created on : 19-Feb-2020, 17:20:57
    Author     : Administrator
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Recursos</h1>
        
        <c:if test="${sessionScope.nombreLogin == null}">
            <% response.sendRedirect("login"); %>
        </c:if>
        
        <a href="logout">log out</a>
        
        <h1>Sesión de ${sessionScope.nombreLogin} </h1>
        
        <a href="insertar" class="btn btn-danger">Insertar</a>
        
            
            
                <c:forEach var="producte" items="${milista_producte}" > <!--me invento una variable animal y entonces se situa en el animal de la primera posición de la array list y asi va recorriendo toda la array list.-->
                    <div>
                        Id: <p>${producte.prod_id}</p>
                        Nom: <p>${producte.prod_nom}</p>
                        Foto: <p>${producte.prod_foto}</p>
                        Serie: <p>${producte.serie_id}</p>
                        Descripció: <p>${producte.prod_descripcio}</p>
                        Descompte: <p>${producte.prod_descompte}</p>
                        
                        <a href="modificar?id=${producte.prod_id}" class="btn btn-info">Editar</a>
                        <a href="eliminar?id=${producte.prod_id}" class="btn btn-danger">Eliminar</a>
                    </div>
                </c:forEach>
            
            
        
        
        

    </body>
</html>
