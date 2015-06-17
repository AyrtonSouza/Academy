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
    </head>
    <body class="bg-img-num1"> 
   <%@include file="/WEB-INF/jsp/includes/topo.jspf" %>
    <div class="container">        
        <div class="row row_custom">
            <div class="col-md-2 col-md-offset-2">   
                 <img src="./resources/imgs/logo.png" width="200" height="200">
               </div>
               <div class="col-md-5 col-md-offset-1">     

                    <div class="block block-drop-shadow">
                        <div class="block">
                            <div class="header">
                                <h2>Cadastro de Aparelho</h2>
                            </div>
                            <div class="content controls">

                                <form action="adicionaAparelho" method="post">
                                       
                                    <div class="form-row">
                                        <div class="col-md-3">Nome:</div>
                                        <div class="col-md-9"><input type="text" class="form-control" value="${aparelho.apaNome}" name="apaNome"/></div>
                                    </div>
                                    
                                    <input type="hidden" value="${aparelho.apaId}" name="apaId"/>
                                    <input type="submit" value="Cadastrar" style="float:left"/>
                                </form>
                            </div>
                        </div>     
                    </div>
                </div>  <!-- AQUI -->             
            </div>
  <%@include file="/WEB-INF/jsp/includes/rodape.jspf" %>
            <!-- Aqui sera colocado o rodape -->

        </div>
    </body>
</html>