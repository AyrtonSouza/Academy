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

                <div class="col-md-5" style="width:83%; margin: 0 auto;">
                    <div class="block">
                        <div class="header">
                            <h2>Exercicios</h2>
                        </div>
                        <div class="content">
                            <table class="table">
                                <tbody>                                    
                                    <c:forEach items="${exercicios}" var="exec">   
                                    <tr>
                                        <a href="exercicioAluno?treId=${treino}&apaId=${aparelho}&exeId=${exec.exe_id}"><button type="button" class="btn btn-default btn-block">${exec.exe_nome}</button></a>
                                        <br>
                                    </tr>
                                    </c:forEach>
                                </tbody>
                            </table>                       
                        </div>

                    </div>   
                </div>



            </div>
<!-- FIM CONTENT -->

<c:import url="Rodape.jsp" />

 
 </div>
 
    </body>
</html>