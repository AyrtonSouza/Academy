<%-- 
    Document   : Modelo
    Created on : 14/10/2014, 22:08:48
    Author     : nayronbarreto
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>  
    <!-- Aqui sera colocado o HEADE -->
    
</head>
<body class="bg-img-num1"> 
   
    <%@include file="/WEB-INF/jsp/includes/topo.jspf" %>
   
    <div class="container">        
        <br/><br/>
        <div class="row row_custom">
               <div class="col-md-2 col-md-offset-2">   
                 <img src="${path}/resources/imgs/logo.png" width="200" height="200">
               </div>
            <div class="col-md-5 col-md-offset-1"> 
              <div class="block block-drop-shadow">
                  <div class="block">
                    <div class="header">
                        <h2>Cadastro de Usuario</h2>
                    </div>
                     
                     
                    <div class="content controls">
                       
                        <form action="adicionaUsuario" method="post">
                              
                        <div class="form-row">
                            <div class="col-md-3">Nome:</div>
                            <div class="col-md-9"><input type="text" class="form-control" value="${usuario.usuNome}" name="usuNome"/></div>
                        </div>
                         
                        <div class="form-row">
                            <div class="col-md-3">E-mail</div>
                            <div class="col-md-9"><input type="email" class="form-control" value="${usuario.usuEmail.toString}" name="usuEmail"/></div>
                        </div>
                        <div class="form-row">
                            <div class="col-md-3">CPF</div>
                            <div class="col-md-9"><input type="text" class="form-control" value="${usuario.usuCpf}" name="usuCpf"/></div>
                        </div>
                        <div class="form-row">
                            <div class="col-md-3">Endereco</div>
                            <div class="col-md-9"><input type="text" class="form-control" value="${usuario.usuEndereco}" name="usuEndereco"/></div>
                        </div>
                        <div class="form-row">
                            <div class="col-md-3">Senha</div>
                            <div class="col-md-9"><input type="password" class="form-control" value="${usuario.usuSenha}" name="usuSenha"/></div>
                        </div>
                        
                        
                            
                            <input type="hidden" value="${sessionScope.usuarioLogado.usuStatus}" name="usuStatus"/>
                            <input type="hidden" value="${sessionScope.usuarioLogado.fkAcadId}" name="fkAcadId"/>
                            <input type="hidden" value="${usuario.fkPermiId}" name="fkPermiId"/>
                            <input type="hidden" value="${usuario.usuId}" name="usuId"/> 
                            <input type="submit" value="Cadastrar" style="float:left"/>
                            </form>
                      
                    </div>
                </div>     
                   
                    
                </div>
            </div>  <!-- AQUI -->             
            
        </div>
        
         <!-- Aqui sera colocado o rodape -->
        
    </div>
        <%@include file="/WEB-INF/jsp/includes/rodape.jspf" %>

</body>
</html>