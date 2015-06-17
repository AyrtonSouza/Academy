<%-- 
    Document   : listAcademia
    Created on : 19/02/2015, 15:11:07
    Author     : lucas
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
                    <img src="./resources/imgs/logo.png" width="200" height="200">
                </div>
                <div class="col-md-6 col-md-offset-1">
                    <div class="block"><br/><br/><br/>
                        <div class="header">
                            <h2>Academia</h2>
                        </div>
                        <div class="content">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Id</th>
                                        <th>Nome</th>
                                        <th>CPF/CNPJ</th>
                                        <th>Endereço </th>
                                        <th>Pacote</th>
                                        <th>Editar</th>
                                        <th>Status</th>


                                    </tr>
                                </thead>
                                <tbody>

                                    <c:url value="/editarAcademia" var="editar"/>
                                    <c:url value="/alterarStatus" var="alterarStatus"/>
                                    <c:forEach items="${academia}" var="academias"  varStatus="contador" >   
                                        <tr>
                                            <td>${academias.acadId}</td>
                                            <td>${academias.acadNome}</td>
                                            <td>${academias.acadCpfCnpj}</td>
                                            <td>${academias.acadEndereco}</td>
                                            <c:forEach items="${pacote}" var="pacotes" begin="0" end="0">
                                                <td>${pacote[contador.count-1].pacNome}</td>                                        
                                            </c:forEach>

                                            <td><a class="widget-icon" href="${editar}?id=${academias.acadId}"><img src="./resources/imgs/edit.png"> Editar</a></td>
                                            <td><a href="${alterarStatus}?id=${academias.acadId}" style="float:left; width:100%;"><button type="button" class="btn btn-default btn-clean btn-block">
                                                        <c:choose>
                                                            <c:when test="${academias.acadStatus}">
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
                            <a href="cadAcademia"><button type="button" class="btn btn-default btn-clean btn-block">Cadastrar Pacote</button></a>   
                        </div>
                    </div>   
                </div>



            </div>

            <!-- Aqui sera colocado o rodape -->

        </div>
        <%@include file="/WEB-INF/jsp/includes/rodape.jspf" %>
    </body>
</html>
