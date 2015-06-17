<%-- 
    Document   : cadAcademia
    Created on : 19/02/2015, 15:11:40
    Author     : lucas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<body class="bg-img-num1"> 
    <%@include file="/WEB-INF/jsp/includes/topo.jspf" %>
    <div class="container">        
        <div class="row row_custom">
            <div class="col-md-2 col-md-offset-2">   
                <img src="./resources/imgs/logo.png" width="200" height="200">
            </div>
            <div class="col-md-5 col-md-offset-1">   
                <div class="block block-drop-shadow">
                    <div class="block">
                        <div class="header">
                            <h2>Cadastro de Academia</h2>
                        </div>

                        <div class="content controls">


                            <form action="adicionaAcademia" method="post">



                                <div class="form-row">
                                    <div class="col-md-3">Nome:</div>
                                    <div class="col-md-9"><input type="text" class="form-control" value="${academia.acadNome}" name="acadNome"/></div>
                                </div>

                                <div class="form-row">
                                    <div class="col-md-3">CPF/CNPJ:</div>
                                    <div class="col-md-9"><input type="text" class="form-control" value="${academia.acadCpfCnpj}" name="acadCpfCnpj"/></div>
                                </div>

                                <div class="form-row">
                                    <div class="col-md-3">Endereço:</div>
                                    <div class="col-md-9"><input type="text" class="form-control" value="${academia.acadEndereco}" name="acadEndereco"/></div>
                                </div>

                                <div class="form-row">
                                    <div class="col-md-3">Logo:</div>
                                    <div class="col-md-9"><input type="file" class="form-control" value="${academia.acadLogo.toString}" name="acadLogo"/></div>
                                </div>

                                <div class="form-row">
                                    <div class="col-md-3">Pacote:</div>
                                    <div class="col-md-9"><select name="fkPacId" class="form-control"  >
                                            <c:forEach items="${pacote}" var="listaPacotes">       
                                                <c:choose>
                                                    <c:when test="${listaPacotes.pacId == academia.fkPacId}">
                                                        <option selected value="${listaPacotes.pacId}"/>${listaPacotes.pacNome}</option>                                                   
                                                    </c:when>
                                                    <c:otherwise>
                                                        <option value="${listaPacotes.pacId}"/>${listaPacotes.pacNome}</option>                                                                                                           
                                                    </c:otherwise>
                                                </c:choose>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>




                                <input type="hidden" value="${academia.acadId}"/>                        
                                <input type="hidden" value="${academia.acadStatus}"/>          
                                <input type="submit" value="Cadastrar" style="float:left"/>
                            </form>

                        </div>
                    </div>     


                </div>
            </div>  <!-- AQUI -->             

        </div>

        <!-- Aqui sera colocado o rodape -->

    </div>
    <%@include file="/WEB-INF/jsp/includes/rodape.jspf" %>
</body>
</html>
