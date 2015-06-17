<%--
    Document   : editarAcademia
    Created on : 20/10/2014, 16:25:03
    Author     : inb-02
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<!DOCTYPE html>
<html lang="en">
    <head>  
        <!-- Aqui sera colocado o HEADE -->
        <%@include file="/WEB-INF/jsp/includes/topo.jspf" %>
    </head>
    <body class="bg-img-num1"> 

        <div class="container">        
            <div class="row">                   
                <div class="col-md-12">
                    <!-- Aqui sera colocado o menu --> 


                </div>            
            </div>
            <div class="row">
                <!-- Daqui ate la embaixo e o conteudo -->
                <div class="col-md-2">
                    <!-- Aqui sera colocado menu Lateral --> 


                </div>

                <div class="col-md-5"></div>

                <div class="col-md-6" style="margin-bottom: 130px;">

                    <div class="block block-drop-shadow">
                        <div class="block">
                            <div class="header">
                                <h2>Alteração de dados da Academia</h2>
                            </div>
                            <div class="content controls">

                                <form action="adicionaPublicidade" method="post" enctype="multipart/form-data">                           
                                    <div class="form-row">
                                        <div class="col-md-3">Nome Empresa:</div>
                                        <div class="col-md-9"><input type="text" class="form-control" value="" name="pubNome"/></div>
                                    </div>
                                    <div class="form-row">
                                        <div class="col-md-3">Publicidade:</div>
                                        <div class="col-md-9"><input type="file" class="form-control" value="" name="imagem" /></div>
                                    </div>

                                    <div class="form-row">
                                        <div class="col-md-3">Academias:</div>
                                        <div class="col-md-9">
                                            <select name="fkAcadId" >
                                                <c:forEach items="${academias}" var="acad">       
                                                    <option value="${acad.acadId}"/>${acad.acadNome}</option>                                                                                                           
                                                </c:forEach>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="col-md-3">Mes:</div>
                                        <div class="col-md-9">
                                            <select name="fkMesId" >
                                                <c:forEach items="${meses}" var="mes">       
                                                    <option value="${mes.mesId}"/>${mes.mesNome}</option>                                                                                                           
                                                </c:forEach>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="col-md-3">Hora:</div>
                                        <div class="col-md-9">
                                            <select name="fkHoraId" >
                                                <c:forEach items="${horas}" var="hora">       
                                                    <option value="${hora.horaId}"/>${hora.hora}</option>                                                                                                           
                                                </c:forEach>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="col-md-3">Dias:</div>
                                        <div class="col-md-9">
                                            <table>
                                                <tr>
                                                    <td style="width: 100px;"><input type="checkbox" name="dias" value="Segunda" style="width: 20px; float: left;">Segunda<br></td>
                                                    <td style="width: 100px;"><input type="checkbox" name="dias" value="Terca" style="width: 20px; float: left;">Terca<br></td>
                                                    <td style="width: 100px;"><input type="checkbox" name="dias" value="Quarta" style="width: 20px; float: left;">Quarta<br></td>
                                                    <td style="width: 100px;"><input type="checkbox" name="dias" value="Quinta" style="width: 20px; float: left;">Quinta<br></td>
                                                    <td style="width: 100px;"><input type="checkbox" name="dias" value="Sexta" style="width: 20px; float: left;">Sexta<br></td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                    <input type="submit" value="Salvar" style="float:left;" />
                                </form>
                            </div>
                        </div>     


                    </div>
                </div>  <!-- AQUI -->          

            </div>

            <!-- Aqui sera colocado o rodape -->
            <%@include file="/WEB-INF/jsp/includes/rodape.jspf" %>
        </div>

    </body>
</html>