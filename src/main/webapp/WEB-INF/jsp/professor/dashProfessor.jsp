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
        <img  src="../../../resources/imgs/fitness.png" is="image">

      <ul id="gk-1112sfCC" data-role="listview" data-inset="true" is="page-listview" pagesize="30">
        <li>
            <a href="treinos/listAluno" style="min-height: 27px;"><img src="../../Academy/resources/imagens/users.png" alt="USA" class="ui-li-thumb" style=" padding:5px 0px 0px 15px"><h4>Alunos</h4></a>
        </li>
      </ul>
       <ul id="gk-1112sfCC" data-role="listview" data-inset="true" is="page-listview" pagesize="30">
        <li>
            <a href="treinos/listTreino" style="min-height: 27px;"><img src="../../Academy/resources/imagens/alteres.png" alt="USA" class="ui-li-thumb" style=" padding:5px 0px 0px 15px; width:48px;height:48px;"><h4>Treinos</h4></a>
        </li>
      </ul>
        
         <ul id="gk-1112sfCC" data-role="listview" data-inset="true" is="page-listview" pagesize="30">
        <li>
            <a href="#listarMedidas" style="min-height: 27px;"><img src="../../Academy/resources/imagens/statics.png" alt="USA" class="ui-li-thumb" style=" padding:5px 0px 0px 15px;width:48px;height:48px;"><h4>Gráficos</h4></a>
        </li>
      </ul>
       
    </div>
<!-- FIM CONTENT -->

<c:import url="Rodape.jsp" />
 
 </div>
 
    </body>
</html>