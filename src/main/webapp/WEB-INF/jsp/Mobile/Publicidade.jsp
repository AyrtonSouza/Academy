<%-- 
    Document   : Modelo
    Created on : 14/10/2014, 22:08:48
    Author     : nayronbarreto
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
    <head>  
        <!-- Aqui sera colocado o HEADE -->
        <c:import url="Header.jsp" />
    </head>
    <body class="bg-img-num1"> 
        <div>
            <a href="redirecionar"><img src="<c:url value="/resources/imagens/del.png" />" style="position: absolute; top: 20px; right: 25px"/></a>
            <img src="<c:url value="/resources/Publicidades/${image}" />" style="width: 100%"/>
        </div>
    </body>
</html>