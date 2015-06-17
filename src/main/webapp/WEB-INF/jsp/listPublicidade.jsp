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
<html lang="en">
    <head>  
        <!-- Aqui sera colocado o HEADE -->
        <%@include file="/WEB-INF/jsp/includes/topo.jspf" %>
    </head>
    <body class="bg-img-num1"> 

        <div class="container">        
            <div class="row">                   
                <div class="col-md-12">
                    <!-- Aqui sera colocado o menu --> 
                   

                </div>            
            </div>
            <div class="row" style="height:520px;">
                <!-- Daqui ate la embaixo e o conteudo -->
                <div class="col-md-2">
                    <!-- Aqui sera colocado menu Lateral --> 
                   

                </div>

                <div class="col-md-5" style="width:83%;">
                    <div class="block">
                        <div class="header">
                            <h2>Publicidade</h2>
                        </div>
                        <div class="content">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Id</th>
                                        <th>Nome Empresa</th>
                                        <th>Academia</th>
                                        <th>Hora</th>
                                        <th>Dias</th>
                                        <th>Editar</th>
                                        <th>Remover</th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <c:url value="editarPublicidade" var="editar"/>
                                    <c:url value="removerPublicidade" var="remover"/>

                                    <c:forEach items="${publicidades}" var="pub" varStatus="contador">   
                                        <tr>
                                            <td>${pub.pubId}</td>
                                            <td>${pub.pubNome}</td>
                                            <c:forEach items="${todasAcademias}" var="academias" begin="0" end="0">
                                                <td>${todasAcademias[contador.count-1].acadNome}</td>                                        
                                            </c:forEach>
                                            <c:forEach items="${horas}" var="hora" begin="0" end="0">
                                                <td>${horas[contador.count-1].hora}</td>                                        
                                            </c:forEach>
                                            <td>${pub.pubDias}</td>
                                            <td><a class="widget-icon" href="${editar}?id=${pub.pubId}"><span class="icon-pencil"></span></a></td>
                                            <td><a class="widget-icon widget-icon-dark" href="${remover}?id=${pub.pubId}"  ><span class="icon-trash"></span></a></td>                                                                                    
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>                       
                            <a href="cadPublicidade" style="float:left; width:100%;"><button type="button" class="btn btn-default btn-clean btn-block">Cadastrar Publicidade</button></a>
                        </div>

                    </div>   
                </div>



            </div>

            <!-- Aqui sera colocado o rodape -->
            
        </div>
         <%@include file="/WEB-INF/jsp/includes/rodape.jspf" %>
    </body>
</html>
