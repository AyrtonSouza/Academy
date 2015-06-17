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
            <div class="row">                   
                <div class="col-md-12">
                    <!-- Aqui sera colocado o menu --> 
                    <c:import url="Topo.jsp" />

                </div>            
            </div>
            <div class="row">
                <!-- Daqui ate la embaixo e o conteudo -->
                <div class="col-md-2">
                    <!-- Aqui sera colocado menu Lateral --> 
                    <c:import url="Menu_Lateral.jsp" />

                </div>

                <div class="col-md-5" style="width:83%; margin: 0 auto;">
                    <div class="block">
                        <div class="header">
                            <h2>Aparelhos</h2>
                        </div>
                        <div class="content">
                            <form action="escolheExercicio" method="post">
                                <table class="table">
                                    <tbody>                                    
                                    <select name="apa_id" class="form-control" style="margin-bottom: 20px;" >
                                        <c:forEach items="${aparelho}" var="aparelhos">
                                            <option value="${aparelhos.apa_id}">${aparelhos.apa_nome}</option>
                                        </c:forEach>
                                    </select>
                                    </tbody>
                                </table>
                                <input type="hidden" value="${treino.tre_id}" name="treino_id"/>
                                <input type="hidden" value="${aluno}" name="aluno_id"/>
                                <input type="submit" value="Proximo" style="float:left"/> 
                            </form>
                        </div>

                    </div>   
                </div>
 </div>
</div>
                                
<!-- FIM CONTENT -->

<c:import url="Rodape.jsp" />

 
 </div>
 
    </body>
</html>