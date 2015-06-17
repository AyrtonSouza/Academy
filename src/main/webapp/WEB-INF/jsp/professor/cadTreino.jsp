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


<c:url var="acharExercicios" value="treinos/aparelho" />
<script type="text/javascript">
    $(document).ready(function () {
        $('#aparelho').change(
                function () {
                    $.getJSON('${acharExercicios}', {
                        stateName: $(this).val(),
                        ajax: 'true'
                    }, function (data) {
                        var options = [];
                        options.push('<option value="">Selecione..</option>');
                        var len = data.length;
                        for (var i = 0; i < len; i++) {
                            options.push('<option value="' + data[i].exeId + '">' + data[i].exeNome + '</option>');
                        }
                     

                        $('#exercicio').html(options.join('')).prop('disabled', false);
                    });
                });
    });
</script>
    <div data-role="content"  style="text-align:center" data-tap-toggle="false">
            <div class="row">
                <!-- Daqui ate la embaixo e o conteudo -->
               <div class="side" style="width:100%; height:155px; margin: 0 auto; clear:both; padding:10px; margin-bottom:50px;">
           <div class="block">
                    <div class="header">
                        <h2>Cadastro de Treino</h2>
                    </div>
                    <div class="content controls">
                         
                      <form action="adicionaTreino" method="post">
                        <div class="form-row" style="margin-bottom: 30px;">
                            <div class="col-md-3">Nome do Treino:</div>
                            <div class="col-md-9">
                                <input type="text" class="form-control" name = "treNome"  value=""/></div>
                        </div>
                          <div class="form-row">
                            <div class="col-md-3">Aparelho:</div>
                            <div class="col-md-9">
                                <select id="aparelho" name="fkApaId" class="form-control" style="margin-bottom: 20px;" >
                                    <c:forEach items="${aparelhos}" var="treinos">
                                        <option value="${treinos.apaId}">${treinos.apaNome}</option>
                                    </c:forEach>
                                </select>
                            </div>
                        </div>
                          <div class="form-row">
                                <div class="col-sm-3">Exercicio</div>
                                <div class="col-sm-9">
                                    <select id="exercicio" name="fkExeId">
                                          <option value=" ">  </option>
                                    </select>
                                </div>
                            </div>
                          
                          <input type="hidden" name="fkAcadId" value="${sessionScope.usuarioLogado.fkAcadId}"/>
                          <input type="submit" value="Cadastrar" class="btn btn-default btn-clean btn-block box" style="width:93%; margin: 0 auto;" />        
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