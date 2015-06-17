<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html><html lang="en">

    <head>  
        <!-- Aqui sera colocado o HEADE -->
        <c:import url="Header.jsp" />
    </head>
    <body> 

<div id="page2" data-role="page">
      
 <c:import url="Topo.jsp" />
 
    <!-- INICÍO CONTENT -->
    <div role="main" class="ui-content" style="text-align:center">

   <div style="width:100%; height:40px; background: #111238; line-height:1px; padding-left: 20px;" >
        <h4 style="color:white; text-shadow: 2px 2px 4px #000000; font-size: 18px; font-weight: bold; float:left;">Treinos</h4>
   </div>                             
<c:forEach items="${todosTreinos}" var="treinos">   

    <a href="listarAparelhosTreino?id=${treinos.tre_id}"><button type="button" class="btn btn-default btn-block">${treinos.tre_nome}</button></a>
<br/>

</c:forEach>

    </div>   
    <c:import url="Rodape.jsp" />
  </div>


    </body>
</html>
