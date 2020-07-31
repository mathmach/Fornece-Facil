<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
    <head>
        <%@ include file="../includes/config.jsp" %>
        <%  //if not logged in redirect to login page
            if (!user.IsLoggedIn(request, response)) {
                out.print(session.getAttribute("user_name"));
                /*response.sendRedirect("index.jsp");
                return;*/
            }
        %>
        <jsp:include page="../layout/header.jsp" flush="true">
            <jsp:param name="title" value="Projeto X | Check Out"/>
        </jsp:include>
    </head>
    <body>        
        <%@ include file="../layout/nav.jsp" %>
        <!-- banner -->
        <div class="page-head">
            <div class="container">
                <h3>Check Out</h3>
            </div>
        </div>
        <!-- //banner -->
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
                            <td class="invert-image"><a href="single.html"><img src="../img/w4.png" alt=" " class="img-responsive" /></a></td>
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
                        <tr class="rem2">
                            <td class="invert-closeb">
                                <div class="rem">
                                    <div class="close2"> </div>
                                </div>
                            </td>
                            <td class="invert-image"><a href="single.html"><img src="../img/ep3.png" alt=" " class="img-responsive" /></a></td>
                            <td class="invert">
                                <div class="quantity"> 
                                    <div class="quantity-select">                           
                                        <div class="entry value-minus">&nbsp;</div>
                                        <div class="entry value"><span>1</span></div>
                                        <div class="entry value-plus active">&nbsp;</div>
                                    </div>
                                </div>
                            </td>
                            <td class="invert">Watches</td>
                            <td class="invert">$45.99</td>
                        </tr>
                        <tr class="rem3">
                            <td class="invert-closeb">
                                <div class="rem">
                                    <div class="close3"> </div>
                                </div>
                            </td>
                            <td class="invert-image"><a href="single.html"><img src="../img/w2.png" alt=" " class="img-responsive" /></a></td>
                            <td class="invert">
                                <div class="quantity"> 
                                    <div class="quantity-select">                           
                                        <div class="entry value-minus">&nbsp;</div>
                                        <div class="entry value"><span>1</span></div>
                                        <div class="entry value-plus active">&nbsp;</div>
                                    </div>
                                </div>
                            </td>
                            <td class="invert">Sandals</td>
                            <td class="invert">$45.99</td>
                        </tr>
                        <tr class="rem4">
                            <td class="invert-closeb">
                                <div class="rem">
                                    <div class="close4"> </div>
                                </div>
                            </td>
                            <td class="invert-image"><a href="single.html"><img src="../img/w1.png" alt=" " class="img-responsive" /></a></td>
                            <td class="invert">
                                <div class="quantity"> 
                                    <div class="quantity-select">                           
                                        <div class="entry value-minus">&nbsp;</div>
                                        <div class="entry value"><span>1</span></div>
                                        <div class="entry value-plus active">&nbsp;</div>
                                    </div>
                                </div>
                            </td>
                            <td class="invert">Wedges</td>
                            <td class="invert">$45.99</td>
                        </tr>
                    </table>
                </div>
                <div class="checkout-left">
                    <div class="checkout-right-basket animated wow slideInRight" data-wow-delay=".5s">
                        <a href="mens.html"><span class="glyphicon glyphicon-menu-left" aria-hidden="true"></span>Back To Shopping</a>
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
        <%@ include file="../layout/footer.jsp" %>
        <%@ include file="../layout/modalLogin.jsp" %>  
        <%@ include file="../layout/wrapper.jsp" %>
        <script>$(document).ready(function (c) {
                $('.close1').on('click', function (c) {
                    $('.rem1').fadeOut('slow', function (c) {
                        $('.rem1').remove();
                    });
                });
            });
        </script>
        <script>$(document).ready(function (c) {
                $('.close2').on('click', function (c) {
                    $('.rem2').fadeOut('slow', function (c) {
                        $('.rem2').remove();
                    });
                });
            });
        </script>
        <script>$(document).ready(function (c) {
                $('.close3').on('click', function (c) {
                    $('.rem3').fadeOut('slow', function (c) {
                        $('.rem3').remove();
                    });
                });
            });
        </script>
        <script>$(document).ready(function (c) {
                $('.close4').on('click', function (c) {
                    $('.rem4').fadeOut('slow', function (c) {
                        $('.rem4').remove();
                    });
                });
            });
        </script>
        <!--quantity-->
        <script>
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
