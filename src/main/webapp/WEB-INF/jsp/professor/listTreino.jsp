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
        <c:import url="Header.jsp" />

    </head>
    <body class="bg-img-num1"> 

        <div id="home" data-role="page">      
            <c:import url="Topo.jsp" />


            <!-- INICÍO CONTENT -->
            <div data-role="content"  style="text-align:center" data-tap-toggle="false">

                <!-- Daqui ate la embaixo e o conteudo -->
                <div class="col-md-5" style="width:83%; margin: 0 auto;">
                    <div class="block">
                        <div class="header">
                            <h2>Treinos</h2>
                        </div>
                        <div class="content">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Nome</th>
                                        <th>Editar</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:url value="/editarTreino" var="editar" />
                                    <c:forEach items="${treino}" var="treinos" varStatus="contador">   
                                        <tr>                                           
                                            <td>${treinos.treNome}</td>
                                            <td><a class="widget-icon" href="${editar}?id=${treinos.treId}"><span class="icon-pencil"></span></a></td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>                       
                        </div>

                    </div>   
                    <a href="cadTreino" style="float:left; width:100%;"><button type="button" class="btn btn-default btn-clean btn-block">Cadastrar Treinos</button></a>
                </div>


            </div>
            <!-- FIM CONTENT -->

            <c:import url="Rodape.jsp" />

        </div>

    </body>
</html>