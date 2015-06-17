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
               <div class="side" style="width:100%; height:155px; margin: 0 auto; clear:both; padding:10px; margin-bottom:50px;">
           <div class="block">
                   <div class="header">
                        <h2>Cadastro do Treino</h2>
                    </div>
                    <div class="content controls">
                        <br/><br/> 
                        <input type="hidden" name="fk_usu_id" value="${usuario.usu_id}"/>
                         <div class="form-row">
                            <div class="col-md-3">Treino:</div>
                            <div class="col-md-9">
                                <select name="fk_tre_id" class="form-control" style="margin-bottom: 20px;" >
                                    <c:forEach items="${treino}" var="treinos">
                                        <option value="${treinos.tre_id}">${treinos.tre_nome}</option>
                                    </c:forEach>
                                </select>
                            </div>
                        </div>
                         <div class="form-row">
                            <div class="col-md-3">Aparelho:</div>
                            <div class="col-md-9">
                                <select name="fk_apa_id" class="form-control" style="margin-bottom: 20px;">
                                    <c:forEach items="${aparelho}" var="aparelhos">
                                        <option value="${aparelhos.apa_id}">${aparelhos.apa_nome}</option>
                                    </c:forEach>
                                </select>
                            </div>
                        </div> 
                        
                         <div class="form-row">
                            <div class="col-md-3" >Exercicio:</div>
                            <div class="col-md-9">
                                <select name="fk_exe_id" class="form-control" style="margin-bottom: 20px;">
                            
                                </select>
                            </div>
                        </div>
                       
                        <div class="form-row" style="margin-bottom: 30px;">
                            <div class="col-md-3">Série:</div>
                            <div class="col-md-9"><input type="text" class="form-control" name="ta_serie" /></div>
                        </div>
                         <div class="form-row" style="margin-bottom: 30px;">
                            <div class="col-md-3">Repetição:</div>
                            <div class="col-md-9"><input type="text" class="form-control" name="ta_repeticao"/></div>
                        </div>
                        <div class="form-row" style="margin-bottom: 30px;">
                            <div class="col-md-3">Peso:</div>
                            <div class="col-md-9"><input type="text" class="form-control" name="ta_peso"/></div>
                        </div>
                       
                     <input type="submit" value="Cadastrar" class="btn btn-default btn-clean btn-block box" style="width:93%; margin: 0 auto;" />        
                    </div>
               
                </div> 
                   
                </div> 
                
             </div>
<!-- FIM CONTENT -->

<c:import url="Rodape.jsp" />

 
 </div>
 
    </body>
</html>