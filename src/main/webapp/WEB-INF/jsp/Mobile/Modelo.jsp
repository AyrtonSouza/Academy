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
    
    <div class="container">        
        <div class="row">                   
            <div class="col-md-12">
                <!-- Aqui sera colocado o menu --> 
                <c:import url="Topo.jsp" />

            </div>            
        </div>
        <div class="row">
            <!-- Daqui ate la embaixo e o conteudo -->
            <div class="col-md-2">
               <!-- Aqui sera colocado menu Lateral --> 
               <c:import url="Menu_Lateral.jsp" />
                
            </div>
            
            <div class="col-md-5"></div>
            
            <div class="col-md-5">
                
              <div class="block block-drop-shadow">
                    <div class="head bg-default bg-light-rtl">
                        <h2>Inbox messages</h2>
                        <div class="side pull-right">                            
                            <ul class="buttons">                                
                                <li><a href="#"><span class="icon-plus"></span></a></li>
                                <li><a href="#"><span class="icon-cogs"></span></a></li>
                            </ul>
                        </div> 
                        <div class="head-panel nm">
                            <a href="#" class="hp-info pull-left">
                                <div class="hp-icon">
                                    <span class="icon-download-alt"></span>
                                </div>
                                <span class="hp-main">25</span>
                                <span class="hp-sm">recived</span>
                            </a>
                            <a href="#" class="hp-info pull-left">
                                <div class="hp-icon">
                                    <span class="icon-upload-alt"></span>
                                </div>                                
                                <span class="hp-main">10</span>
                                <span class="hp-sm">sent</span>
                            </a>                            
                            <a href="#" class="hp-info hp-one pull-right tip" title="Refresh">
                                <div class="hp-icon">
                                    <span class="icon-refresh"></span>
                                </div>                                                 
                                <span class="hp-main">9:24 am</span>                                
                            </a>                                                 
                        </div>
                    </div>
                    <div class="content list">
                        <div class="list-item">
                            <div class="list-datetime">
                                <div class="time">9:45 am</div>
                            </div>
                            <div class="list-info">
                                <img src="img/example/user/dmitry.jpg" class="img-circle img-thumbnail"/>
                            </div>
                            <div class="list-text">
                                <a href="#" class="list-text-name">John Doe</a>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque condimentum nisl velit.</p>
                            </div>
                            <div class="list-controls">
                                <a href="#" class="widget-icon widget-icon-circle"><span class="icon-rotate-right"></span></a>
                                <a href="#" class="widget-icon widget-icon-circle"><span class="icon-pushpin"></span></a>
                                <a href="#" class="widget-icon widget-icon-circle"><span class="icon-remove"></span></a>
                            </div>
                        </div>
                        <div class="list-item">
                            <div class="list-datetime">
                                <div class="time">8:16 am</div>
                            </div>
                            <div class="list-info">
                                <img src="img/example/user/alexey.jpg" class="img-circle img-thumbnail"/>
                            </div>
                            <div class="list-text">
                                <a href="#" class="list-text-name">Brad Pitt</a>
                                <p>Duis eu libero pellentesque, dapibus ante eu, vehicula leo. Nulla gravida rutrum neque.</p>
                            </div>
                            <div class="list-controls">
                                <a href="#" class="widget-icon widget-icon-circle"><span class="icon-rotate-right"></span></a>
                                <a href="#" class="widget-icon widget-icon-circle"><span class="icon-pushpin"></span></a>
                                <a href="#" class="widget-icon widget-icon-circle"><span class="icon-remove"></span></a>
                            </div>                            
                        </div>
                        <div class="list-item">
                            <div class="list-datetime">
                                <div class="date">27.08</div>
                                <div class="time">9:59 pm</div>
                            </div>
                            <div class="list-info">
                                <img src="img/example/user/olga.jpg" class="img-circle img-thumbnail"/>
                            </div>
                            <div class="list-text">
                                <a href="#" class="list-text-name">Angelina Jolie</a>
                                <p>Morbi tincidunt, tellus ut fermentum accumsan, est justo pretium enim, eget.</p>
                            </div>
                            <div class="list-controls">
                                <a href="#" class="widget-icon widget-icon-circle"><span class="icon-rotate-right"></span></a>
                                <a href="#" class="widget-icon widget-icon-circle"><span class="icon-pushpin"></span></a>
                                <a href="#" class="widget-icon widget-icon-circle"><span class="icon-remove"></span></a>
                            </div>                            
                        </div>
                        <div class="list-item">
                            <div class="list-datetime">
                                <div class="date">27.08</div>
                                <div class="time">4:34 pm</div>
                            </div>
                            <div class="list-info">
                                <img src="img/example/user/helen.jpg" class="img-circle img-thumbnail"/>
                            </div>
                            <div class="list-text">
                                <a href="#" class="list-text-name">Keira Knightley</a>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque condimentum nisl velit.</p>
                            </div>
                            <div class="list-controls">
                                <a href="#" class="widget-icon widget-icon-circle"><span class="icon-rotate-right"></span></a>
                                <a href="#" class="widget-icon widget-icon-circle"><span class="icon-pushpin"></span></a>
                                <a href="#" class="widget-icon widget-icon-circle"><span class="icon-remove"></span></a>
                            </div>                            
                        </div>
                        <div class="list-item">
                            <div class="list-datetime">
                                <div class="date">26.08</div>
                                <div class="time">12:12 am</div>
                            </div>
                            <div class="list-info">
                                <img src="img/example/user/dmitry.jpg" class="img-circle img-thumbnail"/>
                            </div>
                            <div class="list-text">
                                <a href="#" class="list-text-name">John Doe</a>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque condimentum nisl velit.</p>
                            </div>
                            <div class="list-controls">
                                <a href="#" class="widget-icon widget-icon-circle"><span class="icon-rotate-right"></span></a>
                                <a href="#" class="widget-icon widget-icon-circle"><span class="icon-pushpin"></span></a>
                                <a href="#" class="widget-icon widget-icon-circle"><span class="icon-remove"></span></a>
                            </div>                            
                        </div>                        
                    </div>
                    <div class="footer tac">
                        <a href="#">Load more messages...</a>
                    </div>
                </div>
            </div>            
            
        </div>
        
         <!-- Aqui sera colocado o rodape -->
         <c:import url="Rodape.jsp" />
    </div>

</body>
</html>