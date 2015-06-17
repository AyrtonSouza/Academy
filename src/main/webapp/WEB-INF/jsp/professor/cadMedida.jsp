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
                <div class="side" style="width:100%; height:180px; margin: 0 auto; clear:both; padding:10px; margin-bottom:50px; overflow-y: scroll;">
                    <div class="block">
                        <div class="header">
                            <h2>Cadastro de Medidas</h2>
                        </div>
                        <div class="content controls">

                            <form action="adicionaMedida" method="post">
                                <br/><br/>    
                                <div class="form-row" style="margin-bottom: 30px;">
                                    <div class="col-md-3">Panturrilha esquerda:</div>
                                    <div class="col-md-9"><input type="text" class="form-control" value="${medida.medPantEsquerda}" nname="medPantEsquerda" /></div>
                                </div>
                                <div class="form-row" style="margin-bottom: 30px;">
                                    <div class="col-md-3">Panturrilha direita:</div>
                                    <div class="col-md-9"><input type="text" class="form-control" value="${medida.medPantDireita}" name="medPantDireita"/></div>
                                </div>
                                <div class="form-row" style="margin-bottom: 30px;">
                                    <div class="col-md-3">Coxa esquerda:</div>
                                    <div class="col-md-9"><input type="text" class="form-control" value="${medida.medCoxEsquerda}" name="medCoxEsquerda"/></div>
                                </div>
                                <div class="form-row" style="margin-bottom: 30px;">
                                    <div class="col-md-3">Coxa Direita:</div>
                                    <div class="col-md-9"><input type="text" class="form-control" value="${medida.medCoxDireita}" name="medCoxDireita"/></div>
                                </div>
                                <div class="form-row" style="margin-bottom: 30px;">
                                    <div class="col-md-3">Cintura:</div>
                                    <div class="col-md-9"><input type="text" class="form-control" value="${medida.medCintura}" name="medCintura"/></div>
                                </div>
                                <div class="form-row" style="margin-bottom: 30px;">
                                    <div class="col-md-3">Peito:</div>
                                    <div class="col-md-9"><input type="text" class="form-control" value="${medida.medPeito}" name="medPeito"/></div>
                                </div>
                                <div class="form-row" style="margin-bottom: 30px;">
                                    <div class="col-md-3">Biceps esquerdo:</div>
                                    <div class="col-md-9"><input type="text" class="form-control" value="${medida.medBicepsEsquerdo}" name="medBicepsEsquerdo"/></div>
                                </div>
                                <div class="form-row" style="margin-bottom: 30px;">
                                    <div class="col-md-3">Biceps direito:</div>
                                    <div class="col-md-9"><input type="text" class="form-control" value="${medida.medBicepsDireto}" name="medBicepsDireito"/></div>
                                </div>
                                <div class="form-row" style="margin-bottom: 30px;">
                                    <div class="col-md-3">Antebraço esquerdo:</div>
                                    <div class="col-md-9"><input type="text" class="form-control" value="${medida.medAntebracoEsquerdo}" name="medAntebracoEsquerdo"/></div>
                                </div>
                                <div class="form-row" style="margin-bottom: 30px;">
                                    <div class="col-md-3">Antebraço direito:</div>
                                    <div class="col-md-9"><input type="text" class="form-control" value="${medida.medAntebracoDireito}" name="medAntebracoDireito"/></div>
                                </div>
                                <div class="form-row" style="margin-bottom: 30px;">
                                    <div class="col-md-3">Quadril</div>
                                    <div class="col-md-9"><input type="text" class="form-control" value="${medida.medQuadril}" name="medQuadril"/></div>
                                </div>
                                <input type ="hidden" value="${aluno.usuId}" name="usuId"/>
                                <input type="submit" value="Cadastrar" class="btn btn-default btn-clean btn-block box" style="width:93%; margin: 0 auto;" />        
                            </form>

                        </div>
                    </div>
                </div>


               </div>
<!-- FIM CONTENT -->

<c:import url="Rodape.jsp" />
 
 </div>
 
    </body>
</html>