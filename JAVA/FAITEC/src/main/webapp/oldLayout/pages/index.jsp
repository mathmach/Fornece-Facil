<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="pt-BR">
    <head>
        <%@ include file="../includes/config.jsp" %>
        <%! List<String> errList = new ArrayList<>();%>
        <%  if (user.IsLoggedIn(request, response)) {
                out.print(session.getAttribute("user_name"));
                /*response.sendRedirect("index.jsp");
                return;*/
            }

            if (request.getParameter("submit") != null) {
                errList.clear();

                String username = request.getParameter("username");
                String password = request.getParameter("password");

                try {
                    if (user.login(username, password, request, response)) {
                        session.setAttribute("user_name", username);
                        response.sendRedirect("index.jsp");
                        return;
                    } else {
                        errList.add("Usuário ou senha inválido ou sua conta não foi ativada.");
                    }
                } catch (SQLException e) {
                    errList.add("Usuário ou senha inválido ou sua conta não foi ativada.");
                }
            }
        %>
        <jsp:include page="../layout/header.jsp" flush="true">
            <jsp:param name="title" value="Projeto X | Home"/>
        </jsp:include>
        <!-- pignose css -->
        <link href="../includes/vendors/pignose.layerslider/dist/css/pignose.parallaxslider.min.css" rel="stylesheet" type="text/css" media="all" />
        <!-- //pignose css -->
    </head>
    <body>     
        <%@ include file="../layout/nav.jsp" %>
        <!-- banner -->
        <div class="banner-grid">
            <div id="visual">
                <div class="slide-visual">
                    <!-- Slide Image Area (1000 x 424) -->
                    <ul class="slide-group">
                        <li><img class="img-responsive" src="../img/ba1.jpg" alt="Dummy Image" /></li>
                        <li><img class="img-responsive" src="../img/ba2.jpg" alt="Dummy Image" /></li>
                        <li><img class="img-responsive" src="../img/ba3.jpg" alt="Dummy Image" /></li>
                    </ul>

                    <!-- Slide Description Image Area (316 x 328) -->
                    <div class="script-wrap">
                        <ul class="script-group">
                            <li><div class="inner-script"><img class="img-responsive" src="../img/baa1.jpg" alt="Dummy Image" /></div></li>
                            <li><div class="inner-script"><img class="img-responsive" src="../img/baa2.jpg" alt="Dummy Image" /></div></li>
                            <li><div class="inner-script"><img class="img-responsive" src="../img/baa3.jpg" alt="Dummy Image" /></div></li>
                        </ul>
                        <div class="slide-controller">
                            <a href="#" class="btn-prev"><img src="../img/btn_prev.png" alt="Prev Slide" /></a>
                            <a href="#" class="btn-play"><img src="../img/btn_play.png" alt="Start Slide" /></a>
                            <a href="#" class="btn-pause"><img src="../img/btn_pause.png" alt="Pause Slide" /></a>
                            <a href="#" class="btn-next"><img src="../img/btn_next.png" alt="Next Slide" /></a>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="clearfix"></div>
            </div>

        </div>
        <!-- //banner -->
        <!-- content -->

        <div class="new_arrivals">
            <div class="container">
                <h3><span>new </span>arrivals</h3>
                <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium</p>
                <div class="new_grids">
                    <div class="col-md-4 new-gd-left">
                        <img src="../img/wed1.jpg" alt=" " />
                        <div class="wed-brand simpleCart_shelfItem">
                            <h4>Wedding Collections</h4>
                            <h5>Flat 50% Discount</h5>
                            <p><i>$250</i> <span class="item_price">$500</span><a class="item_add hvr-outline-out button2" href="#">add to cart </a></p>
                        </div>
                    </div>
                    <div class="col-md-4 new-gd-middle">
                        <div class="new-levis">
                            <div class="mid-img">
                                <img src="../img/levis1.png" alt=" " />
                            </div>
                            <div class="mid-text">
                                <h4>up to 40% <span>off</span></h4>
                                <a class="hvr-outline-out button2" href="product.html">Shop now </a>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="new-levis">
                            <div class="mid-text">
                                <h4>up to 50% <span>off</span></h4>
                                <a class="hvr-outline-out button2" href="product.html">Shop now </a>
                            </div>
                            <div class="mid-img">
                                <img src="../img/dig.jpg" alt=" " />
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="col-md-4 new-gd-left">
                        <img src="../img/wed2.jpg" alt=" " />
                        <div class="wed-brandtwo simpleCart_shelfItem">
                            <h4>Spring / Summer</h4>
                            <p>Shop Men</p>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
        <!-- //content -->

        <!-- content-bottom -->

        <div class="content-bottom">
            <div class="col-md-7 content-lgrid">
                <div class="col-sm-6 content-img-left text-center">
                    <div class="content-grid-effect slow-zoom vertical">
                        <div class="img-box"><img src="../img/p1.jpg" alt="image" class="img-responsive zoom-img"></div>
                        <div class="info-box">
                            <div class="info-content simpleCart_shelfItem">
                                <h4>Mobiles</h4>
                                <span class="separator"></span>
                                <p><span class="item_price">$500</span></p>
                                <span class="separator"></span>
                                <a class="item_add hvr-outline-out button2" href="#">add to cart </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 content-img-right">
                    <h3>Special Offers and 50%<span>Discount On</span> Mobiles</h3>
                </div>

                <div class="col-sm-6 content-img-right">
                    <h3>Buy 1 get 1  free on <span> Branded</span> Watches</h3>
                </div>
                <div class="col-sm-6 content-img-left text-center">
                    <div class="content-grid-effect slow-zoom vertical">
                        <div class="img-box"><img src="../img/p2.jpg" alt="image" class="img-responsive zoom-img"></div>
                        <div class="info-box">
                            <div class="info-content simpleCart_shelfItem">
                                <h4>Watches</h4>
                                <span class="separator"></span>
                                <p><span class="item_price">$250</span></p>
                                <span class="separator"></span>
                                <a class="item_add hvr-outline-out button2" href="#">add to cart </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="col-md-5 content-rgrid text-center">
                <div class="content-grid-effect slow-zoom vertical">
                    <div class="img-box"><img src="../img/p4.jpg" alt="image" class="img-responsive zoom-img"></div>
                    <div class="info-box">
                        <div class="info-content simpleCart_shelfItem">
                            <h4>Shoes</h4>
                            <span class="separator"></span>
                            <p><span class="item_price">$150</span></p>
                            <span class="separator"></span>
                            <a class="item_add hvr-outline-out button2" href="#">add to cart </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
        <!-- //content-bottom -->
        <!-- product-nav -->

        <div class="product-easy">
            <div class="container">
                <div class="sap_tabs">
                    <div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
                        <ul class="resp-tabs-list">
                            <li class="resp-tab-item" aria-controls="tab_item-0" role="tab"><span>Latest Designs</span></li> 
                            <li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><span>Special Offers</span></li> 
                            <li class="resp-tab-item" aria-controls="tab_item-2" role="tab"><span>Collections</span></li> 
                        </ul>				  	 
                        <div class="resp-tabs-container">
                            <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
                                <div class="col-md-3 product-men">
                                    <div class="men-pro-item simpleCart_shelfItem">
                                        <div class="men-thumb-item">
                                            <img src="../img/a1.png" alt="" class="pro-image-front">
                                            <img src="../img/a1.png" alt="" class="pro-image-back">
                                            <div class="men-cart-pro">
                                                <div class="inner-men-cart-pro">
                                                    <a href="single.html" class="link-product-add-cart">Quick View</a>
                                                </div>
                                            </div>
                                            <span class="product-new-top">New</span>

                                        </div>
                                        <div class="item-info-product ">
                                            <h4><a href="single.html">Air Tshirt Black</a></h4>
                                            <div class="info-product-price">
                                                <span class="item_price">$45.99</span>
                                                <del>$69.71</del>
                                            </div>
                                            <a href="#" class="item_add single-item hvr-outline-out button2">Add to cart</a>									
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 product-men">
                                    <div class="men-pro-item simpleCart_shelfItem">
                                        <div class="men-thumb-item">
                                            <img src="../img/a8.png" alt="" class="pro-image-front">
                                            <img src="../img/a8.png" alt="" class="pro-image-back">
                                            <div class="men-cart-pro">
                                                <div class="inner-men-cart-pro">
                                                    <a href="single.html" class="link-product-add-cart">Quick View</a>
                                                </div>
                                            </div>
                                            <span class="product-new-top">1+1 Offer</span>

                                        </div>
                                        <div class="item-info-product ">
                                            <h4><a href="single.html">Next Blue Blazer</a></h4>
                                            <div class="info-product-price">
                                                <span class="item_price">$99.99</span>
                                                <del>$109.71</del>
                                            </div>
                                            <a href="#" class="item_add single-item hvr-outline-out button2">Add to cart</a>									
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 product-men">
                                    <div class="men-pro-item simpleCart_shelfItem">
                                        <div class="men-thumb-item">
                                            <img src="../img/a3.png" alt="" class="pro-image-front">
                                            <img src="../img/a3.png" alt="" class="pro-image-back">
                                            <div class="men-cart-pro">
                                                <div class="inner-men-cart-pro">
                                                    <a href="single.html" class="link-product-add-cart">Quick View</a>
                                                </div>
                                            </div>
                                            <span class="product-new-top">New</span>

                                        </div>
                                        <div class="item-info-product ">
                                            <h4><a href="single.html">Air Tshirt Black </a></h4>
                                            <div class="info-product-price">
                                                <span class="item_price">$119.99</span>
                                                <del>$120.71</del>
                                            </div>
                                            <a href="#" class="item_add single-item hvr-outline-out button2">Add to cart</a>									
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 product-men">
                                    <div class="men-pro-item simpleCart_shelfItem">
                                        <div class="men-thumb-item">
                                            <img src="../img/a4.png" alt="" class="pro-image-front">
                                            <img src="../img/a4.png" alt="" class="pro-image-back">
                                            <div class="men-cart-pro">
                                                <div class="inner-men-cart-pro">
                                                    <a href="single.html" class="link-product-add-cart">Quick View</a>
                                                </div>
                                            </div>
                                            <span class="product-new-top">New</span>

                                        </div>
                                        <div class="item-info-product ">
                                            <h4><a href="single.html">Maroon Puma Tshirt</a></h4>
                                            <div class="info-product-price">
                                                <span class="item_price">$79.99</span>
                                                <del>$120.71</del>
                                            </div>
                                            <a href="#" class="item_add single-item hvr-outline-out button2">Add to cart</a>									
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 product-men yes-marg">
                                    <div class="men-pro-item simpleCart_shelfItem">
                                        <div class="men-thumb-item">
                                            <img src="../img/a5.png" alt="" class="pro-image-front">
                                            <img src="../img/a5.png" alt="" class="pro-image-back">
                                            <div class="men-cart-pro">
                                                <div class="inner-men-cart-pro">
                                                    <a href="single.html" class="link-product-add-cart">Quick View</a>
                                                </div>
                                            </div>
                                            <span class="product-new-top">Combo Pack</span>

                                        </div>
                                        <div class="item-info-product ">
                                            <h4><a href="single.html">Multicoloured TShirts</a></h4>
                                            <div class="info-product-price">
                                                <span class="item_price">$129.99</span>
                                                <del>$150.71</del>
                                            </div>
                                            <a href="#" class="item_add single-item hvr-outline-out button2">Add to cart</a>									
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 product-men yes-marg">
                                    <div class="men-pro-item simpleCart_shelfItem">
                                        <div class="men-thumb-item">
                                            <img src="../img/a6.png" alt="" class="pro-image-front">
                                            <img src="../img/a6.png" alt="" class="pro-image-back">
                                            <div class="men-cart-pro">
                                                <div class="inner-men-cart-pro">
                                                    <a href="single.html" class="link-product-add-cart">Quick View</a>
                                                </div>
                                            </div>
                                            <span class="product-new-top">New</span>

                                        </div>
                                        <div class="item-info-product ">
                                            <h4><a href="single.html">Air Tshirt Black </a></h4>
                                            <div class="info-product-price">
                                                <span class="item_price">$129.99</span>
                                                <del>$150.71</del>
                                            </div>
                                            <a href="#" class="item_add single-item hvr-outline-out button2">Add to cart</a>									
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 product-men yes-marg">
                                    <div class="men-pro-item simpleCart_shelfItem">
                                        <div class="men-thumb-item">
                                            <img src="../img/a7.png" alt="" class="pro-image-front">
                                            <img src="../img/a7.png" alt="" class="pro-image-back">
                                            <div class="men-cart-pro">
                                                <div class="inner-men-cart-pro">
                                                    <a href="single.html" class="link-product-add-cart">Quick View</a>
                                                </div>
                                            </div>
                                            <span class="product-new-top">New</span>

                                        </div>
                                        <div class="item-info-product ">
                                            <h4><a href="single.html">Dresses</a></h4>
                                            <div class="info-product-price">
                                                <span class="item_price">$129.99</span>
                                                <del>$150.71</del>
                                            </div>
                                            <a href="#" class="item_add single-item hvr-outline-out button2">Add to cart</a>									
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 product-men yes-marg">
                                    <div class="men-pro-item simpleCart_shelfItem">
                                        <div class="men-thumb-item">
                                            <img src="../img/a2.png" alt="" class="pro-image-front">
                                            <img src="../img/a2.png" alt="" class="pro-image-back">
                                            <div class="men-cart-pro">
                                                <div class="inner-men-cart-pro">
                                                    <a href="single.html" class="link-product-add-cart">Quick View</a>
                                                </div>
                                            </div>
                                            <span class="product-new-top">New</span>

                                        </div>
                                        <div class="item-info-product ">
                                            <h4><a href="single.html">Wedding Blazers</a></h4>
                                            <div class="info-product-price">
                                                <span class="item_price">$129.99</span>
                                                <del>$150.71</del>
                                            </div>
                                            <a href="#" class="item_add single-item hvr-outline-out button2">Add to cart</a>									
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 product-men yes-marg">
                                    <div class="men-pro-item simpleCart_shelfItem">
                                        <div class="men-thumb-item">
                                            <img src="../img/g1.png" alt="" class="pro-image-front">
                                            <img src="../img/g1.png" alt="" class="pro-image-back">
                                            <div class="men-cart-pro">
                                                <div class="inner-men-cart-pro">
                                                    <a href="single.html" class="link-product-add-cart">Quick View</a>
                                                </div>
                                            </div>
                                            <span class="product-new-top">New</span>

                                        </div>
                                        <div class="item-info-product ">
                                            <h4><a href="single.html">Dresses</a></h4>
                                            <div class="info-product-price">
                                                <span class="item_price">$45.99</span>
                                                <del>$69.71</del>
                                            </div>
                                            <a href="#" class="item_add single-item hvr-outline-out button2">Add to cart</a>									
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 product-men yes-marg">
                                    <div class="men-pro-item simpleCart_shelfItem">
                                        <div class="men-thumb-item">
                                            <img src="../img/g2.png" alt="" class="pro-image-front">
                                            <img src="../img/g2.png" alt="" class="pro-image-back">
                                            <div class="men-cart-pro">
                                                <div class="inner-men-cart-pro">
                                                    <a href="single.html" class="link-product-add-cart">Quick View</a>
                                                </div>
                                            </div>
                                            <span class="product-new-top">New</span>

                                        </div>
                                        <div class="item-info-product ">
                                            <h4><a href="single.html"> Shirts</a></h4>
                                            <div class="info-product-price">
                                                <span class="item_price">$45.99</span>
                                                <del>$69.71</del>
                                            </div>
                                            <a href="#" class="item_add single-item hvr-outline-out button2">Add to cart</a>									
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 product-men yes-marg">
                                    <div class="men-pro-item simpleCart_shelfItem">
                                        <div class="men-thumb-item">
                                            <img src="../img/g3.png" alt="" class="pro-image-front">
                                            <img src="../img/g3.png" alt="" class="pro-image-back">
                                            <div class="men-cart-pro">
                                                <div class="inner-men-cart-pro">
                                                    <a href="single.html" class="link-product-add-cart">Quick View</a>
                                                </div>
                                            </div>
                                            <span class="product-new-top">New</span>

                                        </div>
                                        <div class="item-info-product ">
                                            <h4><a href="single.html">Shirts</a></h4>
                                            <div class="info-product-price">
                                                <span class="item_price">$45.99</span>
                                                <del>$69.71</del>
                                            </div>
                                            <a href="#" class="item_add single-item hvr-outline-out button2">Add to cart</a>									
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 product-men yes-marg">
                                    <div class="men-pro-item simpleCart_shelfItem">
                                        <div class="men-thumb-item">
                                            <img src="../img/mw2.png" alt="" class="pro-image-front">
                                            <img src="../img/mw2.png" alt="" class="pro-image-back">
                                            <div class="men-cart-pro">
                                                <div class="inner-men-cart-pro">
                                                    <a href="single.html" class="link-product-add-cart">Quick View</a>
                                                </div>
                                            </div>
                                            <span class="product-new-top">New</span>

                                        </div>
                                        <div class="item-info-product ">
                                            <h4><a href="single.html">T shirts</a></h4>
                                            <div class="info-product-price">
                                                <span class="item_price">$45.99</span>
                                                <del>$69.71</del>
                                            </div>
                                            <a href="#" class="item_add single-item hvr-outline-out button2">Add to cart</a>									
                                        </div>
                                    </div>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
                                <div class="col-md-3 product-men">
                                    <div class="men-pro-item simpleCart_shelfItem">
                                        <div class="men-thumb-item">
                                            <img src="../img/w1.png" alt="" class="pro-image-front">
                                            <img src="../img/w1.png" alt="" class="pro-image-back">
                                            <div class="men-cart-pro">
                                                <div class="inner-men-cart-pro">
                                                    <a href="single.html" class="link-product-add-cart">Quick View</a>
                                                </div>
                                            </div>
                                            <span class="product-new-top">New</span>

                                        </div>
                                        <div class="item-info-product ">
                                            <h4><a href="single.html">Wedges</a></h4>
                                            <div class="info-product-price">
                                                <span class="item_price">$45.99</span>
                                                <del>$69.71</del>
                                            </div>
                                            <a href="#" class="item_add single-item hvr-outline-out button2">Add to cart</a>									
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 product-men">
                                    <div class="men-pro-item simpleCart_shelfItem">
                                        <div class="men-thumb-item">
                                            <img src="../img/w2.png" alt="" class="pro-image-front">
                                            <img src="../img/w2.png" alt="" class="pro-image-back">
                                            <div class="men-cart-pro">
                                                <div class="inner-men-cart-pro">
                                                    <a href="single.html" class="link-product-add-cart">Quick View</a>
                                                </div>
                                            </div>
                                            <span class="product-new-top">New</span>

                                        </div>
                                        <div class="item-info-product ">
                                            <h4><a href="single.html">Sandals</a></h4>
                                            <div class="info-product-price">
                                                <span class="item_price">$45.99</span>
                                                <del>$69.71</del>
                                            </div>
                                            <a href="#" class="item_add single-item hvr-outline-out button2">Add to cart</a>									
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 product-men">
                                    <div class="men-pro-item simpleCart_shelfItem">
                                        <div class="men-thumb-item">
                                            <img src="../img/mw1.png" alt="" class="pro-image-front">
                                            <img src="../img/mw1.png" alt="" class="pro-image-back">
                                            <div class="men-cart-pro">
                                                <div class="inner-men-cart-pro">
                                                    <a href="single.html" class="link-product-add-cart">Quick View</a>
                                                </div>
                                            </div>
                                            <span class="product-new-top">New</span>

                                        </div>
                                        <div class="item-info-product ">
                                            <h4><a href="single.html">Casual Shoes</a></h4>
                                            <div class="info-product-price">
                                                <span class="item_price">$45.99</span>
                                                <del>$69.71</del>
                                            </div>
                                            <a href="#" class="item_add single-item hvr-outline-out button2">Add to cart</a>									
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 product-men">
                                    <div class="men-pro-item simpleCart_shelfItem">
                                        <div class="men-thumb-item">
                                            <img src="../img/mw3.png" alt="" class="pro-image-front">
                                            <img src="../img/mw3.png" alt="" class="pro-image-back">
                                            <div class="men-cart-pro">
                                                <div class="inner-men-cart-pro">
                                                    <a href="single.html" class="link-product-add-cart">Quick View</a>
                                                </div>
                                            </div>
                                            <span class="product-new-top">New</span>

                                        </div>
                                        <div class="item-info-product ">
                                            <h4><a href="single.html">Sport Shoes</a></h4>
                                            <div class="info-product-price">
                                                <span class="item_price">$45.99</span>
                                                <del>$69.71</del>
                                            </div>
                                            <a href="#" class="item_add single-item hvr-outline-out button2">Add to cart</a>									
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 product-men yes-marg">
                                    <div class="men-pro-item simpleCart_shelfItem">
                                        <div class="men-thumb-item">
                                            <img src="../img/ep2.png" alt="" class="pro-image-front">
                                            <img src="../img/ep2.png" alt="" class="pro-image-back">
                                            <div class="men-cart-pro">
                                                <div class="inner-men-cart-pro">
                                                    <a href="single.html" class="link-product-add-cart">Quick View</a>
                                                </div>
                                            </div>
                                            <span class="product-new-top">New</span>

                                        </div>
                                        <div class="item-info-product ">
                                            <h4><a href="single.html">Watches</a></h4>
                                            <div class="info-product-price">
                                                <span class="item_price">$45.99</span>
                                                <del>$69.71</del>
                                            </div>
                                            <a href="#" class="item_add single-item hvr-outline-out button2">Add to cart</a>									
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 product-men yes-marg">
                                    <div class="men-pro-item simpleCart_shelfItem">
                                        <div class="men-thumb-item">
                                            <img src="../img/ep3.png" alt="" class="pro-image-front">
                                            <img src="../img/ep3.png" alt="" class="pro-image-back">
                                            <div class="men-cart-pro">
                                                <div class="inner-men-cart-pro">
                                                    <a href="single.html" class="link-product-add-cart">Quick View</a>
                                                </div>
                                            </div>
                                            <span class="product-new-top">New</span>

                                        </div>
                                        <div class="item-info-product ">
                                            <h4><a href="single.html">Watches</a></h4>
                                            <div class="info-product-price">
                                                <span class="item_price">$45.99</span>
                                                <del>$69.71</del>
                                            </div>
                                            <a href="#" class="item_add single-item hvr-outline-out button2">Add to cart</a>									
                                        </div>
                                    </div>
                                </div>

                                <div class="clearfix"></div>						
                            </div>
                            <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-2">
                                <div class="col-md-3 product-men">
                                    <div class="men-pro-item simpleCart_shelfItem">
                                        <div class="men-thumb-item">
                                            <img src="../img/g1.png" alt="" class="pro-image-front">
                                            <img src="../img/g1.png" alt="" class="pro-image-back">
                                            <div class="men-cart-pro">
                                                <div class="inner-men-cart-pro">
                                                    <a href="single.html" class="link-product-add-cart">Quick View</a>
                                                </div>
                                            </div>
                                            <span class="product-new-top">New</span>

                                        </div>
                                        <div class="item-info-product ">
                                            <h4><a href="single.html">Dresses</a></h4>
                                            <div class="info-product-price">
                                                <span class="item_price">$45.99</span>
                                                <del>$69.71</del>
                                            </div>
                                            <a href="#" class="item_add single-item hvr-outline-out button2">Add to cart</a>									
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 product-men">
                                    <div class="men-pro-item simpleCart_shelfItem">
                                        <div class="men-thumb-item">
                                            <img src="../img/g2.png" alt="" class="pro-image-front">
                                            <img src="../img/g2.png" alt="" class="pro-image-back">
                                            <div class="men-cart-pro">
                                                <div class="inner-men-cart-pro">
                                                    <a href="single.html" class="link-product-add-cart">Quick View</a>
                                                </div>
                                            </div>
                                            <span class="product-new-top">New</span>

                                        </div>
                                        <div class="item-info-product ">
                                            <h4><a href="single.html"> Shirts</a></h4>
                                            <div class="info-product-price">
                                                <span class="item_price">$45.99</span>
                                                <del>$69.71</del>
                                            </div>
                                            <a href="#" class="item_add single-item hvr-outline-out button2">Add to cart</a>									
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 product-men">
                                    <div class="men-pro-item simpleCart_shelfItem">
                                        <div class="men-thumb-item">
                                            <img src="../img/g3.png" alt="" class="pro-image-front">
                                            <img src="../img/g3.png" alt="" class="pro-image-back">
                                            <div class="men-cart-pro">
                                                <div class="inner-men-cart-pro">
                                                    <a href="single.html" class="link-product-add-cart">Quick View</a>
                                                </div>
                                            </div>
                                            <span class="product-new-top">New</span>

                                        </div>
                                        <div class="item-info-product ">
                                            <h4><a href="single.html">Shirts</a></h4>
                                            <div class="info-product-price">
                                                <span class="item_price">$45.99</span>
                                                <del>$69.71</del>
                                            </div>
                                            <a href="#" class="item_add single-item hvr-outline-out button2">Add to cart</a>									
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 product-men">
                                    <div class="men-pro-item simpleCart_shelfItem">
                                        <div class="men-thumb-item">
                                            <img src="../img/mw2.png" alt="" class="pro-image-front">
                                            <img src="../img/mw2.png" alt="" class="pro-image-back">
                                            <div class="men-cart-pro">
                                                <div class="inner-men-cart-pro">
                                                    <a href="single.html" class="link-product-add-cart">Quick View</a>
                                                </div>
                                            </div>
                                            <span class="product-new-top">New</span>

                                        </div>
                                        <div class="item-info-product ">
                                            <h4><a href="single.html">T shirts</a></h4>
                                            <div class="info-product-price">
                                                <span class="item_price">$45.99</span>
                                                <del>$69.71</del>
                                            </div>
                                            <a href="#" class="item_add single-item hvr-outline-out button2">Add to cart</a>									
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 product-men yes-marg">
                                    <div class="men-pro-item simpleCart_shelfItem">
                                        <div class="men-thumb-item">
                                            <img src="../img/w4.png" alt="" class="pro-image-front">
                                            <img src="../img/w4.png" alt="" class="pro-image-back">
                                            <div class="men-cart-pro">
                                                <div class="inner-men-cart-pro">
                                                    <a href="single.html" class="link-product-add-cart">Quick View</a>
                                                </div>
                                            </div>
                                            <span class="product-new-top">New</span>

                                        </div>
                                        <div class="item-info-product ">
                                            <h4><a href="single.html">Air Tshirt Black Domyos</a></h4>
                                            <div class="info-product-price">
                                                <span class="item_price">$45.99</span>
                                                <del>$69.71</del>
                                            </div>
                                            <a href="#" class="item_add single-item hvr-outline-out button2">Add to cart</a>									
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 product-men yes-marg">
                                    <div class="men-pro-item simpleCart_shelfItem">
                                        <div class="men-thumb-item">
                                            <img src="../img/w3.png" alt="" class="pro-image-front">
                                            <img src="../img/w3.png" alt="" class="pro-image-back">
                                            <div class="men-cart-pro">
                                                <div class="inner-men-cart-pro">
                                                    <a href="single.html" class="link-product-add-cart">Quick View</a>
                                                </div>
                                            </div>
                                            <span class="product-new-top">New</span>

                                        </div>
                                        <div class="item-info-product ">
                                            <h4><a href="single.html">Hand Bags</a></h4>
                                            <div class="info-product-price">
                                                <span class="item_price">$45.99</span>
                                                <del>$69.71</del>
                                            </div>
                                            <a href="#" class="item_add single-item hvr-outline-out button2">Add to cart</a>									
                                        </div>
                                    </div>
                                </div>
                                <div class="clearfix"></div>		
                            </div>	
                        </div>	
                    </div>
                </div>
            </div>
        </div>
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
        <!-- pignose -->
        <script type="text/javascript" src="../includes/vendors/pignose.layerslider/dist/js/pignose.parallaxslider.min.js"></script>
        <!-- //pignose -->
        <script type="text/javascript">
            //<![CDATA[
            $(window).on('load', function () {
                $('#visual').pignoseParallaxSlider({
                    play: '.btn-play',
                    pause: '.btn-pause',
                    next: '.btn-next',
                    prev: '.btn-prev',
                    // animation speed
                    speed: 1500,
                    // transition interval
                    interval: 7000,
                    // left or right
                    direction: 'right',
                    // easing effects.
                    easing: 'easeInOutSine',
                    // parallax sliding speed
                    diffTime: 300,
                    // shows controller animation
                    controlAnim: true,
                    // shows pagination controller
                    pagination: true,
                    // auto play
                    auto: true,
                    // for play/pause/next/prev button area
                    isLocal: true,
                    // callback
                    afterMoved: null
                });
            });
            //]]>
        </script>
        <script src="../includes/vendors/easyresponsivetab/easy-responsive-tabs.js" type="text/javascript"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                $('#horizontalTab').easyResponsiveTabs({
                    type: 'default', //Types: default, vertical, accordion           
                    width: 'auto', //auto or any width like 600px
                    fit: true   // 100% fit in a container
                });
            });
        </script>
    </body>
</html>
