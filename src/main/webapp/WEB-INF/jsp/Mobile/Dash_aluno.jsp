<%-- 
    ument   : Modelo
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
        <c:url var="publicidade" value="mobile/mostrarPublicidade" />
        <c:import url="Header.jsp" />

    </head>
    <body class="bg-img-num1"> 
        <script type="text/javascript">
            ${document}.ready(function(){
                  $.getJSON('${publicidade}',{
                      ajax:true;
                  }); 
                
            });
            
            
        </script>
 <div id="home" data-role="page">      
        <c:import url="Topo.jsp" />


<!-- INICÍO CONTENT -->
    <div data-role="content"  style="text-align:center" data-tap-toggle="false">
  <img  src="../../../inb/resources/imgs/fitness.png" is="image">

      <ul id="gk-1112sfCC" data-role="listview" data-inset="true" is="page-listview" pagesize="30">
        <li>
            <a href="listarTreinoAluno" style="min-height: 27px;"><img src="../../../inb/resources/imgs/alteres.png" alt="USA" class="ui-li-thumb" style=" padding:5px 0px 0px 15px"><h4>Meus Treinos</h4></a>
        </li>
      </ul>
       <ul id="gk-1112sfCC" data-role="listview" data-inset="true" is="page-listview" pagesize="30">
        <li>
            <a href="#" style="min-height: 27px;"><img src="../../../inb/resources/imgs/statics.png" alt="USA" class="ui-li-thumb" style=" padding:5px 0px 0px 15px; width:48px;height:48px;"><h4>Gráfico</h4></a>
        </li>
      </ul>
        
         <ul id="gk-1112sfCC" data-role="listview" data-inset="true" is="page-listview" pagesize="30">
        <li>
            <a href="listarMedidas" style="min-height: 27px;"><img src="../../../inb/resources/imgs/measure2.png" alt="USA" class="ui-li-thumb" style=" padding:5px 0px 0px 15px;width:48px;height:48px;"><h4>Medidas</h4></a>
        </li>
      </ul>
       
    </div>
<!-- FIM CONTENT -->

<c:import url="Rodape.jsp" />

 
 </div>
 
    </body>
</html>