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

                <div class="col-md-5">

                    <div class="side" style="width:100%; height:155px; margin: auto; clear:both; padding:10px; margin-bottom:50px;">
                        <div class="content" style="padding:0px; margin:0px;">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Alunos</th>
                                    </tr>
                                </thead>
                                <tbody>   

                                    <c:forEach items="${alunos}" var ="alunos" >
                                        <tr>
                                            <td class="box" style="float:left; padding:0px; margin:0px;"><p style="float:left; padding:0px; margin:0px; width:50px;"><img src="${path}/img/user_img.png" >${alunos.usuNome}</p>
                                            <td style="float:left; padding:0px; margin:0px;"><a href="escolheTreino?alunoid=${alunos.usuId}"><button type="button"  class="btn btn-default btn-clean" style="margin-left:2px;">Cad. Trein</button></a></td>
                                            <td style="float:left; padding:0px; margin:0px;"><a href="cadMedida?alunoid=${alunos.usuId}"><button type="button"  class="btn btn-default btn-clean" style="margin-left:2px;">Cad. Med.</button></a></td>
                                            <td style="float:left; padding:0px; margin:0px;"><a href="atualizarMedida?alunoid=${alunos.usuId}"><button type="button"  class="btn btn-default btn-clean" style="margin-left:2px;">At. Med.</button></a></td>
                                                
                                                
                                                
                                             
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