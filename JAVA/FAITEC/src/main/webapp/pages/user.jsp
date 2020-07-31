<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--
Author: Matheus Machado Guerzoni Duarte
Layout: W3layouts
Layout URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="pt-BR">
    <head>
        <%@ include file="../include/config.jsp" %>
        <%@ include file="../include/login.jsp" %>        
        <jsp:include page="../layout/header.jsp" flush="true">
            <jsp:param name="title" value="Projeto X | Perfil"/>
        </jsp:include>        
    </head> 
    <body>
        <%@ include file="../layout/nav.jsp" %>
        <%@ include file="../layout/modalLogin.jsp" %>
        <!-- banner -->
        <div class="banner banner10">
            <div class="container">
                <h2>Minha conta</h2>
            </div>
        </div>
        <!-- //banner -->   
        <!-- breadcrumbs -->
        <div class="breadcrumb_dress">
            <div class="container">
                <ul>
                    <li><a href="index.jsp"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Início</a> <i>/</i></li>
                    <li>Minha conta</li>
                </ul>
            </div>
        </div>
        <!-- //breadcrumbs -->         
        <%  if (session.getAttribute("loggedin") == null) {
                errList.add("Você deve se logar primeiro");
        %>
        <%@ include file="../layout/newsLetter.jsp" %>
        <%@ include file="../layout/footer.jsp" %>
        <%@ include file="../layout/wrapper.jsp" %>  
        <script type="text/javascript">
            $("#modalLogin").modal("show");
        </script>
        <%} else {%>
        <div class="container">
            <aside class="panel panel-default user-panel">
                <div class="row">
                    <div class="col-lg-3 col-md-3 col-sm-4 col-xs-12">
                        <div class="sidebar-user">
                            <!-- navigation -->
                            <section class="navbar navbar-default">
                                <!-- Brand and toggle get grouped for better mobile display -->
                                <div class="navbar-header">
                                    <div class="user-info">
                                        <div class="image">
                                            <img src="../img/avatar.jpg" class="img-circle">
                                        </div>
                                        <div class="name">
                                            <p><% out.print(session.getAttribute("user_name")); %></p>                                            
                                            <a href="logout.jsp">Sair</a>
                                        </div>
                                        <button type="button" class="navbar-toggle collapsed navbar-toggle-user" data-toggle="collapse" data-target="#bs-megadropdown-tabs-user">
                                            <span class="sr-only">Toggle navigation</span>
                                            <i class="arrow" aria-hidden="true"></i>
                                        </button>
                                    </div>
                                </div>
                                <div id="bs-megadropdown-tabs-user" class="collapse navbar-collapse navbar-fixed-left">
                                    <ul class="nav navbar-center">
                                        <li><a href="#">Minha conta</a></li>
                                        <li><a href="#">Meus pedidos</a></li>
                                        <li><a href="#">Meus dados cadastrais</a></li>
                                        <li><a href="#">Meus dados de acesso</a></li>
                                        <li><a href="#">Meus endereços</a></li>
                                        <li><a href="#">Minhas avaliações</a></li>
                                        <li><a href="#">Atendimento</a></li>
                                    </ul>
                                </div>
                            </section>
                        </div>
                    </div>
                </div>
            </aside>
        </div>        
        <%}
        %>
        <%@ include file="../layout/newsLetter.jsp" %>
        <%@ include file="../layout/footer.jsp" %>
        <%@ include file="../layout/wrapper.jsp" %>  
    </body>
</html>