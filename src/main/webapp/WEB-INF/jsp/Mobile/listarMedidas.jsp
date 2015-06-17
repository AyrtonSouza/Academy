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
                        <div class="content" style="padding:0px; margin:0 auto;">
                             <div class="col-md-5" style="margin: 0 auto; text-align:center">
                            <table class="table" style="padding:0px; margin:0 auto;">
                                <thead>
                                    <tr>
                                        <th>Medidas</th>
                                   </tr>
                                </thead>
                                <tbody>                                       
                                    <tr>
                                        <td class="box">Panturrilha Esquerda</td> 
                                        <td class="box">${medidas.med_pant_esquerda}</td> 
                                    </tr>
                                    <tr>
                                        <td class="box">Panturrilha Direita</td> 
                                        <td class="box">${medidas.med_pant_direita}</td> 
                                    </tr>
                                    <tr>
                                        <td class="box">Coxa Esquerda</td> 
                                        <td class="box">${medidas.med_cox_esquerda}</td> 
                                    </tr>
                                    <tr>
                                        <td class="box">Coxa Direita</td> 
                                        <td class="box">${medidas.med_cox_direita}</td> 
                                    </tr>
                                    <tr>
                                        <td class="box">Cintura</td> 
                                        <td class="box">${medidas.med_cintura}</td> 
                                    </tr>
                                    <tr>
                                        <td class="box">Peito</td> 
                                        <td class="box">${medidas.med_peito}</td> 
                                    </tr>
                                    <tr>
                                        <td class="box">Bíceps Esquerdo</td> 
                                        <td class="box">${medidas.med_biceps_esquerdo}</td> 
                                    </tr>
                                    <tr>
                                        <td class="box">Bíceps Direito</td> 
                                        <td class="box">${medidas.med_biceps_direito}</td> 
                                    </tr>
                                    <tr>
                                        <td class="box">Antebraço Esquerdo</td> 
                                        <td class="box">${medidas.med_antebraco_esquerdo}</td> 
                                    </tr>
                                    <tr>
                                        <td class="box">Antebraço Direito</td> 
                                        <td class="box">${medidas.med_antebraco_direito}</td> 
                                    </tr>
                                    <tr>
                                        <td class="box">Quadril</td> 
                                        <td class="box">${medidas.med_quadril}</td> 
                                    </tr>
                                </tbody>
                            </table>                       
                        </div>
                    </div>
<!-- FIM CONTENT -->

<c:import url="Rodape.jsp" />
 
 </div>
 
    </body>
</html>