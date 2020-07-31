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
            <jsp:param name="title" value="Projeto X | Check Out"/>
        </jsp:include>
    </head>
    <body>        
        <%@ include file="../layout/nav.jsp" %>
        <%@ include file="../layout/modalLogin.jsp" %>  
        <!-- banner -->
        <div class="banner banner10">
            <div class="container">
                <h2>Check Out</h2>
            </div>
        </div>
        <!-- //banner -->    
        <!-- breadcrumbs -->
        <div class="breadcrumb_dress">
            <div class="container">
                <ul>
                    <li><a href="index.jsp"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Início</a> <i>/</i></li>
                    <li>Check Out</li>
                </ul>
            </div>
        </div>
        <!-- //breadcrumbs --> 
        <!-- check out -->
        <div class="checkout">
            <div class="container">
                <h3>My Shopping Bag</h3>
                <div class="table-responsive checkout-right animated wow slideInUp" data-wow-delay=".5s">
                    <table class="timetable_sub">
                        <thead>
                            <tr>
                                <th>Remove</th>
                                <th>Product</th>
                                <th>Quantity</th>
                                <th>Product Name</th>
                                <th>Price</th>
                            </tr>
                        </thead>
                        <tr class="rem1">
                            <td class="invert-closeb">
                                <div class="rem">
                                    <div class="close1"> </div>
                                </div>
                            </td>
                            <td class="invert-image"><a href="single.jsp"><img src="../img/w4.png" alt=" " class="img-responsive" /></a></td>
                            <td class="invert">
                                <div class="quantity"> 
                                    <div class="quantity-select">                           
                                        <div class="entry value-minus">&nbsp;</div>
                                        <div class="entry value"><span>1</span></div>
                                        <div class="entry value-plus active">&nbsp;</div>
                                    </div>
                                </div>
                            </td>
                            <td class="invert">Hand Bag</td>
                            <td class="invert">$45.99</td>
                        </tr>
                    </table>
                </div>
                <div class="checkout-left">
                    <div class="checkout-right-basket animated wow slideInRight" data-wow-delay=".5s">
                        <a href="index.jsp"><span class="glyphicon glyphicon-menu-left" aria-hidden="true"></span>Back To Shopping</a>
                    </div>
                    <div class="checkout-left-basket animated wow slideInLeft" data-wow-delay=".5s">
                        <h4>Shopping basket</h4>
                        <ul>
                            <li>Hand Bag <i>-</i> <span>$45.99</span></li>
                            <li>Watches <i>-</i> <span>$45.99</span></li>
                            <li>Sandals <i>-</i> <span>$45.99</span></li>
                            <li>Wedges <i>-</i> <span>$45.99</span></li>
                            <li>Total <i>-</i> <span>$183.96</span></li>
                        </ul>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>	
        <!-- //check out -->
        <!-- //product-nav -->
        <div class="coupons">
            <div class="container">
                <div class="coupons-grids text-center">
                    <div class="col-md-3 coupons-gd">
                        <h3>Buy your product in a simple way</h3>
                    </div>
                    <div class="col-md-3 coupons-gd">
                        <span class="glyphicon glyphicon-user" aria-hidden="true"></span>
                        <h4>LOGIN TO YOUR ACCOUNT</h4>
                        <p>Neque porro quisquam est, qui dolorem ipsum quia dolor
                            sit amet, consectetur.</p>
                    </div>
                    <div class="col-md-3 coupons-gd">
                        <span class="glyphicon glyphicon-ok" aria-hidden="true"></span>
                        <h4>SELECT YOUR ITEM</h4>
                        <p>Neque porro quisquam est, qui dolorem ipsum quia dolor
                            sit amet, consectetur.</p>
                    </div>
                    <div class="col-md-3 coupons-gd">
                        <span class="glyphicon glyphicon-credit-card" aria-hidden="true"></span>
                        <h4>MAKE PAYMENT</h4>
                        <p>Neque porro quisquam est, qui dolorem ipsum quia dolor
                            sit amet, consectetur.</p>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>
        <%@ include file="../layout/newsLetter.jsp" %>             
        <%@ include file="../layout/footer.jsp" %>
        <%@ include file="../layout/wrapper.jsp" %>
        <script type="text/javascript">
            $(document).ready(function (c) {
                $('.close1').on('click', function (c) {
                    $('.rem1').fadeOut('slow', function (c) {
                        $('.rem1').remove();
                    });
                });
            });
        </script>
        <script type="text/javascript">
            $(document).ready(function (c) {
                $('.close2').on('click', function (c) {
                    $('.rem2').fadeOut('slow', function (c) {
                        $('.rem2').remove();
                    });
                });
            });
        </script>
        <script type="text/javascript">
            $(document).ready(function (c) {
                $('.close3').on('click', function (c) {
                    $('.rem3').fadeOut('slow', function (c) {
                        $('.rem3').remove();
                    });
                });
            });
        </script>
        <script type="text/javascript">
            $(document).ready(function (c) {
                $('.close4').on('click', function (c) {
                    $('.rem4').fadeOut('slow', function (c) {
                        $('.rem4').remove();
                    });
                });
            });
        </script>
        <!--quantity-->
        <script type="text/javascript">
            $('.value-plus').on('click', function () {
                var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10) + 1;
                divUpd.text(newVal);
            });

            $('.value-minus').on('click', function () {
                var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10) - 1;
                if (newVal >= 1)
                    divUpd.text(newVal);
            });
        </script>
        <!--quantity-->
    </body>
</html>
