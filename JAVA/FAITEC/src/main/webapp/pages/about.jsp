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
            <jsp:param name="title" value="Projeto X | Sobre"/>
        </jsp:include>
    </head> 
    <body>         
        <%@ include file="../layout/nav.jsp" %>
        <%@ include file="../layout/modalLogin.jsp" %>
        <!-- banner -->
        <div class="banner banner10">
            <div class="container">
                <h2>About Us</h2>
            </div>
        </div>
        <!-- //banner -->   
        <!-- breadcrumbs -->
        <div class="breadcrumb_dress">
            <div class="container">
                <ul>
                    <li><a href="index.jsp"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Início</a> <i>/</i></li>
                    <li>About Us</li>
                </ul>
            </div>
        </div>
        <!-- //breadcrumbs --> 
        <!-- about -->
        <div class="about">
            <div class="container">	
                <div class="w3ls_about_grids">
                    <div class="col-md-6 w3ls_about_grid_left">
                        <p>Duis aute irure dolor in reprehenderit in voluptate velit esse 
                            cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat 
                            cupidatat non proident, sunt in culpa qui officia deserunt mollit 
                            anim id est laborum.</p>
                        <div class="col-xs-2 w3ls_about_grid_left1">
                            <span class="glyphicon glyphicon-new-window" aria-hidden="true"></span>
                        </div>
                        <div class="col-xs-10 w3ls_about_grid_left2">
                            <p>Sunt in culpa qui officia deserunt mollit 
                                anim id est laborum.Duis aute irure dolor in reprehenderit in voluptate velit esse 
                                cillum dolore eu fugiat nulla pariatur.</p>
                        </div>
                        <div class="clearfix"> </div>
                        <div class="col-xs-2 w3ls_about_grid_left1">
                            <span class="glyphicon glyphicon-flash" aria-hidden="true"></span>
                        </div>
                        <div class="col-xs-10 w3ls_about_grid_left2">
                            <p>Sunt in culpa qui officia deserunt mollit 
                                anim id est laborum.Duis aute irure dolor in reprehenderit in voluptate velit esse 
                                cillum dolore eu fugiat nulla pariatur.</p>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="col-md-6 w3ls_about_grid_right">
                        <img src="../img/52.jpg" alt=" " class="img-responsive" />
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>
        <!-- //about --> 
        <!-- team -->
        <div class="team">
            <div class="container">
                <h3>Meet Our Team</h3>
                <div class="wthree_team_grids">
                    <div class="col-md-3 wthree_team_grid">
                        <img src="../img/t4.png" alt=" " class="img-responsive" />
                        <h4>Smith Allen <span>Manager</span></h4>
                        <div class="agileits_social_button">
                            <ul>
                                <li><a href="#" class="facebook"> </a></li>
                                <li><a href="#" class="twitter"> </a></li>
                                <li><a href="#" class="google"> </a></li>
                                <li><a href="#" class="pinterest"> </a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-3 wthree_team_grid">
                        <img src="../img/t5.png" alt=" " class="img-responsive" />
                        <h4>Laura James <span>Designer</span></h4>
                        <div class="agileits_social_button">
                            <ul>
                                <li><a href="#" class="facebook"> </a></li>
                                <li><a href="#" class="twitter"> </a></li>
                                <li><a href="#" class="google"> </a></li>
                                <li><a href="#" class="pinterest"> </a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-3 wthree_team_grid">
                        <img src="../img/t6.png" alt=" " class="img-responsive" />
                        <h4>Crisp Doe <span>Director</span></h4>
                        <div class="agileits_social_button">
                            <ul>
                                <li><a href="#" class="facebook"> </a></li>
                                <li><a href="#" class="twitter"> </a></li>
                                <li><a href="#" class="google"> </a></li>
                                <li><a href="#" class="pinterest"> </a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-3 wthree_team_grid">
                        <img src="../img/t7.png" alt=" " class="img-responsive" />
                        <h4>Linda Rosy <span>Quality Checker</span></h4>
                        <div class="agileits_social_button">
                            <ul>
                                <li><a href="#" class="facebook"> </a></li>
                                <li><a href="#" class="twitter"> </a></li>
                                <li><a href="#" class="google"> </a></li>
                                <li><a href="#" class="pinterest"> </a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="clearfix"> </div>
                    <p>Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis 
                        voluptatibus maiores alias consequatur aut perferendis doloribus asperiores 
                        repellat.</p>
                </div>
            </div>
        </div>
        <!-- //team -->
        <!-- team-bottom -->
        <div class="team-bottom">
            <div class="container">
                <h3>Are You Ready For Deals? Flat <span>30% Offer </span>on Mobiles</h3>
                <p>Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis 
                    voluptatibus maiores alias consequatur aut perferendis doloribus asperiores 
                    repellat.</p>
                <a href="products.jsp">Shop Now</a>
            </div>
        </div>
        <!-- //team-bottom -->
        <%@ include file="../layout/newsLetter.jsp" %>   
        <%@ include file="../layout/footer.jsp" %>
        <%@ include file="../layout/wrapper.jsp" %>  
    </body>
</html>