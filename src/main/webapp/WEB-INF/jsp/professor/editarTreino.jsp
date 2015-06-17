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

                            <form action="adicionaTreino" method="post">
                                <c:forEach items="${treino}" var="treinos" >
                                           <div class="form-row" style="margin-bottom: 30px;">
                                               <div class="col-md-3">Nome do Treino:</div>
                                               <div class="col-md-9">
                                                   <input type="text" class="form-control" name = "tre_nome"  value="${treinos.tre_nome}"/></div>
                                           </div>
                                                   <input type="hidden" name ="tre_id" value="${treinos.tre_id}"/>                                             
                                                   <input type="hidden" name="fk_acad_id" value="${treinos.fk_acad_id}"/>
                                           <input type="submit" value="Cadastrar" class="btn btn-default btn-clean btn-block box" style="width:93%; margin: 0 auto;" />        
                            </c:forEach>
                        </form>

    </div>

                 

<!-- FIM CONTENT -->

<c:import url="Rodape.jsp" />
 
 </div>
 
    </body>
</html>