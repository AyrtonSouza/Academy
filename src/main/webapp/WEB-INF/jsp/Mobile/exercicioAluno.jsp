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

                <div class="col-md-5" style="width:93%; margin: 0 auto;">
                    <div class="block">
                        <div class="header">
                            <h2>${exercicio.exe_nome}</h2>
                        </div>
                        <div class="content">
                            <form action="atualizarPeso" method="post">                           
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th>Série</th>
                                            <th>Repeticao</th>
                                            <th>Peso Inicial</th>
                                            <th>Peso Atual</th>

                                        </tr>
                                    </thead>
                                    <tbody>
                                    <td style="text-align: center">${treino_aluno.ta_serie}</td>
                                    <td style="text-align: center">${treino_aluno.ta_repeticao}</td>
                                    <td style="text-align: center">${peso.peso_inicial}</td>
                                    <td style="text-align: center"><input type="text" class="form-control" value="" name="peso_final"/></td>

                                    </tbody>
                                </table>                       
                                <input type="hidden" name="peso_id" value="${peso.peso_id}"/>
                                <input type="hidden" name="treId" value="${tre}"/>
                                <input type="hidden" name="apaId" value="${apa}"/>
                                <input type="submit" value="Salvar" style="float:left;" />
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