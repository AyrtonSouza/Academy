<%-- 
    Document   : Modelo
    Created on : 14/10/2014, 22:08:48
    Author     : nayronbarreto
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="en">
    <head>  
        <!-- Aqui sera colocado o HEADE -->

    </head>
    <body class="bg-img-num1"> 
 <%@include file="/WEB-INF/jsp/includes/topo.jspf" %>
        <div class="container">  
           
            <div class="row row_custom">
                <!-- Daqui ate la embaixo e o conteudo -->
               <div class="col-md-4 col-md-offset-1"><br/><br/><br/>   
                 <img src="./resources/imgs/exercicio.jpg" width="400" height="270">
               </div>
                <div class="col-md-5 col-md-offset-1">
                    <div class="block">
                        <div class="header">
                            <h2>Exercícios</h2>
                        </div>
                        <div class="content">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Id</th>
                                        <th>Nome</th>
                                        <th>Aparelho</th>

                                    </tr>
                                </thead>
                                <tbody>

                                    <c:url value="/editarExercicio" var="editar"/>
                                    <c:url value="/removerExercicio" var="remover"/>
                                    <c:forEach items="${exercicios}" var="exercicios"  >   
                                        <tr>
                                            <td>${exercicios.exeId}</td>
                                            <td>${exercicios.exeNome}</td>
                                            
                                            <td><a class="widget-icon" href="${editar}?id=${apa.id}"><img src="./resources/imgs/edit.png"> Editar</a></td>
                                            <td><a class="widget-icon widget-icon-dark" href="${remover}?id=${apa.id}"><img src="./resources/imgs/del.png"> Deletar</a></td>                                                                     
                                        </tr>
                                    </c:forEach>

                                </tbody>
                            </table>                       
                            <a href="cadPacote"><button type="button" class="btn btn-default btn-clean btn-block">Cadastrar Pacote</button></a>   
                        </div>
                    </div>   
                </div>



            </div>

            <!-- Aqui sera colocado o rodape -->

        </div>
            <%@include file="/WEB-INF/jsp/includes/rodape.jspf" %>

    </body>
</html>