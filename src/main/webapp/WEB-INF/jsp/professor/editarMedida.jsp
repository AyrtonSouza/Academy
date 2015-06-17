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
                    
                    <div class="col-md-2">
               <!-- Aqui sera colocado menu Lateral --> 
               <c:import url="Menu_Lateral.jsp" />
                
            </div>
            </div>
                    
            <div class="row">
                <!-- Daqui ate la embaixo e o conteudo -->
                <div class="side" style="width:100%; height:180px; margin: 0 auto; clear:both; padding:10px; margin-bottom:50px; overflow-y: scroll;">
                    <div class="block">
                        <div class="header">
                            <h2>Cadastro de Medidas</h2>
                        </div>
                        <div class="content controls">

                            <form action="adicionaMedida" method="post">
                                    
                                    <div class="form-row" style="margin-bottom: 30px;">
                                        <div class="col-md-3">Panturrilha esquerda:</div>
                                        <div class="col-md-9"><input type="text" class="form-control" value="${medidas.med_pant_esquerda}" name="med_pant_esquerda" /></div>
                                    </div>
                                    <div class="form-row" style="margin-bottom: 30px;">
                                        <div class="col-md-3">Panturrilha direita:</div>
                                        <div class="col-md-9"><input type="text" class="form-control" value="${medidas.med_pant_direita}" name="med_pant_direita"/></div>
                                    </div>
                                    <div class="form-row" style="margin-bottom: 30px;">
                                        <div class="col-md-3">Coxa esquerda:</div>
                                        <div class="col-md-9"><input type="text" class="form-control" value="${medidas.med_cox_esquerda}" name="med_cox_esquerda"/></div>
                                    </div>
                                    <div class="form-row" style="margin-bottom: 30px;">
                                        <div class="col-md-3">Coxa Direita:</div>
                                        <div class="col-md-9"><input type="text" class="form-control" value="${medidas.med_cox_direita}" name="med_cox_direita"/></div>
                                    </div>
                                    <div class="form-row" style="margin-bottom: 30px;">
                                        <div class="col-md-3">Cintura:</div>
                                        <div class="col-md-9"><input type="text" class="form-control" value="${medidas.med_cintura}" name="med_cintura"/></div>
                                    </div>
                                    <div class="form-row" style="margin-bottom: 30px;">
                                        <div class="col-md-3">Peito:</div>
                                        <div class="col-md-9"><input type="text" class="form-control" value="${medidas.med_peito}" name="med_peito"/></div>
                                    </div>
                                    <div class="form-row" style="margin-bottom: 30px;">
                                        <div class="col-md-3">Biceps esquerdo:</div>
                                        <div class="col-md-9"><input type="text" class="form-control" value="${medidas.med_biceps_esquerdo}" name="med_biceps_esquerdo"/></div>
                                    </div>
                                    <div class="form-row" style="margin-bottom: 30px;">
                                        <div class="col-md-3">Biceps direito:</div>
                                        <div class="col-md-9"><input type="text" class="form-control" value="${medidas.med_biceps_direito}" name="med_biceps_direito"/></div>
                                    </div>
                                    <div class="form-row" style="margin-bottom: 30px;">
                                        <div class="col-md-3">Antebraço esquerdo:</div>
                                        <div class="col-md-9"><input type="text" class="form-control" value="${medidas.med_antebraco_esquerdo}" name="med_antebraco_esquerdo"/></div>
                                    </div>
                                    <div class="form-row" style="margin-bottom: 30px;">
                                        <div class="col-md-3">Antebraço direito:</div>
                                        <div class="col-md-9"><input type="text" class="form-control" value="${medidas.med_antebraco_direito}" name="med_antebraco_direito"/></div>
                                    </div>
                                    <div class="form-row" style="margin-bottom: 30px;">
                                        <div class="col-md-3">Quadril</div>
                                        <div class="col-md-9"><input type="text" class="form-control" value="${medidas.med_quadril}" name="med_quadril"/></div>
                                    </div>
                                    <input type="hidden" value="${medidas.med_id}" name="med_id"/>
                                    <input type ="hidden" value="${aluno}" name="aluno_id"/>
                                    <input type="submit" value="Salvar" class="btn btn-default btn-clean btn-block box" style="width:93%; margin: 0 auto;" />
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