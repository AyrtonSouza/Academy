<%-- 
    Document   : listUsuario
    Created on : 19/02/2015, 15:11:07
    Author     : Ayrton
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body class="bg-img-num1"> 
        <%@include file="/WEB-INF/jsp/includes/topo.jspf" %>
        <div class="container">        

            <div class="row row_custom">
                <!-- Daqui ate la embaixo e o conteudo -->
                <div class="col-md-2 col-md-offset-1">   
                    <img src="../resources/imgs/logo.png" width="200" height="200">
                </div>
                <div class="col-md-6 col-md-offset-1">
                    <div class="block"><br/><br/><br/>
                        <div class="header">
                            <h2>Alunos</h2>
                        </div>
                        <div class="content">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Id</th>
                                        <th>Nome</th>
                                        <th>CPF/CNPJ</th>
                                        <th>Email</th>
                                        <th>Endereço</th>
                                        <th>Editar</th>
                                        <th>Status</th>


                                    </tr>
                                </thead>
                                <tbody>

                                    <c:url value="/academia/editarUsuario" var="editar"/>
                                    <c:url value="/alterarStatus" var="alterarStatus"/>
                                    <c:forEach items="${usuario}" var="usuarios">   
                                        <tr>
                                            <td>${usuarios.usuId}</td>
                                            <td>${usuarios.usuNome}</td>
                                            <td>${usuarios.usuCpf}</td>
                                            <td>${usuarios.usuEmail}</td>
                                            <td>${usuarios.usuEndereco}</td>
                                            <td><a class="widget-icon" href="${editar}?id=${usuarios.usuId}"><img src="../resources/imgs/edit.png"> Editar</a></td>
                                            <td><a href="${alterarStatus}?id=${usuarios.usuId}" style="float:left; width:100%;"><button type="button" class="btn btn-default btn-clean btn-block">
                                                        <c:choose>
                                                            <c:when test="${usuarios.usuStatus}">
                                                                <c:out value="Ativo"/>
                                                            </c:when>
                                                            <c:otherwise>
                                                                <c:out value="Inativo"/>                                                                            
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </button></a></td>

                                        </tr>
                                    </c:forEach>

                                </tbody>
                            </table>                       
                            <a href="${caminho}"><button type="button" class="btn btn-default btn-clean btn-block">Cadastrar Aluno</button></a>   
                        </div>
                    </div>   
                </div>



            </div>

            <!-- Aqui sera colocado o rodape -->

        </div>
        <%@include file="/WEB-INF/jsp/includes/rodape.jspf" %>
    </body>
</html>
