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
                            <form action="cadTreinoAluno" method="post">
                                <table class="table">
                                    <tbody>                                    
                                    <select name="exe_id" class="form-control" style="margin-bottom: 20px;" >
                                        <c:forEach items="${exercicio}" var="exercicios">
                                            <option value="${exercicios.exe_id}">${exercicios.exe_nome}</option>
                                        </c:forEach>
                                    </select>
                                    </tbody>
                                    <div class="form-row">
                                        <div class="col-md-3">Serie:</div>
                                        <div class="col-md-9"><input type="text" class="form-control" value="" name="ta_serie"/></div>
                                    </div>
                                    <div class="form-row">
                                        <div class="col-md-3">Repeticao:</div>
                                        <div class="col-md-9"><input type="text" class="form-control" value="" name="ta_repeticao"/></div>
                                    </div>
                                    <div class="form-row">
                                        <div class="col-md-3">Peso:</div>
                                        <div class="col-md-9"><input type="text" class="form-control" value="" name="peso_inicial"/></div>
                                    </div>
                                </table>                       
                                <input type="hidden" value="${treino}" name="treino_id"/>
                                <input type="hidden" value="${aparelho.apa_id}" name="aparelho_id"/>
                                <input type="hidden" value="${aluno}" name="aluno_id"/>
                                <input type="submit" value="Cadastrar" style="float:left"/>
                            </form>

                       </div>
<!-- FIM CONTENT -->

<c:import url="Rodape.jsp" />
 
 </div>
 
    </body>
</html>