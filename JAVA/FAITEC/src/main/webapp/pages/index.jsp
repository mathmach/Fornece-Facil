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
            <jsp:param name="title" value="Projeto X | Início"/>
        </jsp:include>        
        <link href="../style/css/fasthover.css" rel="stylesheet" type="text/css" media="all" />
        <link href="../style/css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
        <link href="../style/css/jquery.countdown.css" rel="stylesheet"/> <!-- countdown --> 
        <link href="../style/css/flexisel.css" rel="stylesheet"  type="text/css" media="screen" />
    </head> 
    <body>
        <%@ include file="../layout/nav.jsp" %>
        <%@ include file="../layout/modalLogin.jsp" %>
        <!-- banner -->
        <div class="banner">
            <div class="container">
                <h3>Fornece Fácil, <span>Ofertas Especiais</span></h3>
            </div>
        </div>
        <!-- //banner --> 
        <!-- banner-bottom -->
        <div class="banner-bottom">
            <div class="container">
                <div class="col-md-5 wthree_banner_bottom_left">
                    <div class="video-img">
                        <a class="play-icon popup-with-zoom-anim" href="#small-dialog">
                            <span class="glyphicon glyphicon-expand" aria-hidden="true"></span>
                        </a>
                    </div> 
                    <div id="small-dialog" class="mfp-hide">
                        <iframe src="https://www.youtube.com/embed/ZQa6GUVnbNM"></iframe>
                    </div>
                </div>
                <div class="col-md-7 wthree_banner_bottom_right">
                    <div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
                        <ul id="myTab" class="nav nav-tabs" role="tablist">
                            <li role="presentation" class="active"><a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home">Mobiles</a></li>
                            <li role="presentation"><a href="#audio" role="tab" id="audio-tab" data-toggle="tab" aria-controls="audio">Audio</a></li>
                            <li role="presentation"><a href="#video" role="tab" id="video-tab" data-toggle="tab" aria-controls="video">Computer</a></li>
                            <li role="presentation"><a href="#tv" role="tab" id="tv-tab" data-toggle="tab" aria-controls="tv">Household</a></li>
                            <li role="presentation"><a href="#kitchen" role="tab" id="kitchen-tab" data-toggle="tab" aria-controls="kitchen">Kitchen</a></li>
                        </ul>
                        <div id="myTabContent" class="tab-content">
                            <div role="tabpanel" class="tab-pane fade active in" id="home" aria-labelledby="home-tab">
                                <div class="agile_ecommerce_tabs">
                                    <div class="col-md-4 agile_ecommerce_tab_left">
                                        <div class="hs-wrapper">
                                            <img src="../img/3.jpg" alt=" " />
                                            <div class="w3_hs_bottom">
                                                <ul>
                                                    <li>
                                                        <a href="#" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div> 
                                        <h5><a href="single.jsp">Mobile Phone1</a></h5>
                                        <div class="simpleCart_shelfItem">
                                            <p><span>$380</span> <i class="item_price">$350</i></p>
                                            <form action="#" method="post">
                                                <input type="hidden" name="cmd" value="_cart" />
                                                <input type="hidden" name="add" value="1" /> 
                                                <input type="hidden" name="item_name" value="Mobile Phone1" /> 
                                                <input type="hidden" name="currency_code" value="BRL">
                                                <input type="hidden" name="amount" value="350.00" />   
                                                <button type="submit" class="w3ls-cart">Add to cart</button>
                                            </form> 
                                        </div>
                                    </div>
                                    <div class="col-md-4 agile_ecommerce_tab_left">
                                        <div class="hs-wrapper">
                                            <img src="../img/4.jpg" alt=" " />
                                            <div class="w3_hs_bottom">
                                                <ul>
                                                    <li>
                                                        <a href="#" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <h5><a href="single.jsp">Mobile Phone2</a></h5>
                                        <div class="simpleCart_shelfItem">
                                            <p><span>$330</span> <i class="item_price">$302</i></p>
                                            <form action="#" method="post">
                                                <input type="hidden" name="cmd" value="_cart" />
                                                <input type="hidden" name="add" value="1" /> 
                                                <input type="hidden" name="item_name" value="Mobile Phone2" />
                                                <input type="hidden" name="currency_code" value="BRL">
                                                <input type="hidden" name="amount" value="302.00" />   
                                                <button type="submit" class="w3ls-cart">Add to cart</button>
                                            </form>
                                        </div>
                                    </div>
                                    <div class="col-md-4 agile_ecommerce_tab_left">
                                        <div class="hs-wrapper">
                                            <img src="../img/7.jpg" alt=" " />
                                            <div class="w3_hs_bottom">
                                                <ul>
                                                    <li>
                                                        <a href="#" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <h5><a href="single.jsp">Mobile Phone3</a></h5>
                                        <div class="simpleCart_shelfItem">
                                            <p><span>$250</span> <i class="item_price">$245</i></p>
                                            <form action="#" method="post">
                                                <input type="hidden" name="cmd" value="_cart" />
                                                <input type="hidden" name="add" value="1" /> 
                                                <input type="hidden" name="item_name" value="Mobile Phone3" /> 
                                                <input type="hidden" name="currency_code" value="BRL">
                                                <input type="hidden" name="amount" value="245.00"/>   
                                                <button type="submit" class="w3ls-cart">Add to cart</button>
                                            </form>
                                        </div>
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                            </div>
                            <div role="tabpanel" class="tab-pane fade" id="audio" aria-labelledby="audio-tab">
                                <div class="agile_ecommerce_tabs">
                                    <div class="col-md-4 agile_ecommerce_tab_left">
                                        <div class="hs-wrapper">
                                            <img src="../img/8.jpg" alt=" " />
                                            <div class="w3_hs_bottom">
                                                <ul>
                                                    <li>
                                                        <a href="#" data-toggle="modal" data-target="#myModal1"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <h5><a href="single.jsp">Speakers</a></h5>
                                        <p><span>$320</span> <i class="item_price">$250</i></p>
                                        <div class="simpleCart_shelfItem">
                                            <form action="#" method="post">
                                                <input type="hidden" name="cmd" value="_cart" />
                                                <input type="hidden" name="add" value="1" /> 
                                                <input type="hidden" name="item_name" value="Speakers" /> 
                                                <input type="hidden" name="currency_code" value="BRL">
                                                <input type="hidden" name="amount" value="250.00" />   
                                                <button type="submit" class="w3ls-cart">Add to cart</button>
                                            </form>
                                        </div>
                                    </div>
                                    <div class="col-md-4 agile_ecommerce_tab_left">
                                        <div class="hs-wrapper">
                                            <img src="../img/9.jpg" alt=" " />
                                            <div class="w3_hs_bottom">
                                                <ul>
                                                    <li>
                                                        <a href="#" data-toggle="modal" data-target="#myModal1"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <h5><a href="single.jsp">Headphones</a></h5>
                                        <div class="simpleCart_shelfItem">
                                            <p><span>$180</span> <i class="item_price">$150</i></p>
                                            <form action="#" method="post">
                                                <input type="hidden" name="cmd" value="_cart" />
                                                <input type="hidden" name="add" value="1" /> 
                                                <input type="hidden" name="item_name" value="Headphones" /> 
                                                <input type="hidden" name="currency_code" value="BRL">
                                                <input type="hidden" name="amount" value="150.00" />   
                                                <button type="submit" class="w3ls-cart">Add to cart</button>
                                            </form>
                                        </div>
                                    </div>
                                    <div class="col-md-4 agile_ecommerce_tab_left">
                                        <div class="hs-wrapper">
                                            <img src="../img/10.jpg" alt=" " />
                                            <div class="w3_hs_bottom">
                                                <ul>
                                                    <li>
                                                        <a href="#" data-toggle="modal" data-target="#myModal1"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <h5><a href="single.jsp">Audio Player</a></h5>
                                        <div class="simpleCart_shelfItem">
                                            <p><span>$220</span> <i class="item_price">$180</i></p>
                                            <form action="#" method="post">
                                                <input type="hidden" name="cmd" value="_cart" />
                                                <input type="hidden" name="add" value="1" /> 
                                                <input type="hidden" name="item_name" value="Audio Player" /> 
                                                <input type="hidden" name="currency_code" value="BRL">
                                                <input type="hidden" name="amount" value="180.00"/>   
                                                <button type="submit" class="w3ls-cart">Add to cart</button>
                                            </form>
                                        </div>
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                            </div>
                            <div role="tabpanel" class="tab-pane fade" id="video" aria-labelledby="video-tab">
                                <div class="agile_ecommerce_tabs">
                                    <div class="col-md-4 agile_ecommerce_tab_left">
                                        <div class="hs-wrapper">
                                            <img src="../img/11.jpg" alt=" " />
                                            <div class="w3_hs_bottom">
                                                <ul>
                                                    <li>
                                                        <a href="#" data-toggle="modal" data-target="#myModal2"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <h5><a href="single.jsp">Laptop</a></h5>
                                        <div class="simpleCart_shelfItem">
                                            <p><span>$880</span> <i class="item_price">$850</i></p>
                                            <form action="#" method="post">
                                                <input type="hidden" name="cmd" value="_cart" />
                                                <input type="hidden" name="add" value="1" /> 
                                                <input type="hidden" name="item_name" value="Laptop" /> 
                                                <input type="hidden" name="currency_code" value="BRL">
                                                <input type="hidden" name="amount" value="850.00" />   
                                                <button type="submit" class="w3ls-cart">Add to cart</button>
                                            </form>
                                        </div>
                                    </div>
                                    <div class="col-md-4 agile_ecommerce_tab_left">
                                        <div class="hs-wrapper">
                                            <img src="../img/12.jpg" alt=" " />
                                            <div class="w3_hs_bottom">
                                                <ul>
                                                    <li>
                                                        <a href="#" data-toggle="modal" data-target="#myModal2"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <h5><a href="single.jsp">Notebook</a></h5>
                                        <div class="simpleCart_shelfItem">
                                            <p><span>$290</span> <i class="item_price">$280</i></p>
                                            <form action="#" method="post">
                                                <input type="hidden" name="cmd" value="_cart" />
                                                <input type="hidden" name="add" value="1" /> 
                                                <input type="hidden" name="item_name" value="Notebook" /> 
                                                <input type="hidden" name="currency_code" value="BRL">
                                                <input type="hidden" name="amount" value="280.00" />   
                                                <button type="submit" class="w3ls-cart">Add to cart</button>
                                            </form>
                                        </div>
                                    </div>
                                    <div class="col-md-4 agile_ecommerce_tab_left">
                                        <div class="hs-wrapper">
                                            <img src="../img/13.jpg" alt=" " />
                                            <div class="w3_hs_bottom">
                                                <ul>
                                                    <li>
                                                        <a href="#" data-toggle="modal" data-target="#myModal2"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <h5><a href="single.jsp">Kid's Toy</a></h5>
                                        <div class="simpleCart_shelfItem">
                                            <p><span>$120</span> <i class="item_price">$80</i></p>
                                            <form action="#" method="post">
                                                <input type="hidden" name="cmd" value="_cart" />
                                                <input type="hidden" name="add" value="1" /> 
                                                <input type="hidden" name="item_name" value="Kid's Toy" /> 
                                                <input type="hidden" name="currency_code" value="BRL">
                                                <input type="hidden" name="amount" value="80.00" />   
                                                <button type="submit" class="w3ls-cart">Add to cart</button>
                                            </form>
                                        </div>
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                            </div>
                            <div role="tabpanel" class="tab-pane fade" id="tv" aria-labelledby="tv-tab">
                                <div class="agile_ecommerce_tabs">
                                    <div class="col-md-4 agile_ecommerce_tab_left">
                                        <div class="hs-wrapper">
                                            <img src="../img/14.jpg" alt=" " />
                                            <div class="w3_hs_bottom">
                                                <ul>
                                                    <li>
                                                        <a href="#" data-toggle="modal" data-target="#myModal3"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <h5><a href="single.jsp">Refrigerator</a></h5>
                                        <div class="simpleCart_shelfItem">
                                            <p><span>$950</span> <i class="item_price">$820</i></p>
                                            <form action="#" method="post">
                                                <input type="hidden" name="cmd" value="_cart" />
                                                <input type="hidden" name="add" value="1" /> 
                                                <input type="hidden" name="item_name" value="Refrigerator" /> 
                                                <input type="hidden" name="currency_code" value="BRL">
                                                <input type="hidden" name="amount" value="820.00" />   
                                                <button type="submit" class="w3ls-cart">Add to cart</button>
                                            </form>
                                        </div>
                                    </div>
                                    <div class="col-md-4 agile_ecommerce_tab_left">
                                        <div class="hs-wrapper">
                                            <img src="../img/15.jpg" alt=" " />
                                            <div class="w3_hs_bottom">
                                                <ul>
                                                    <li>
                                                        <a href="#" data-toggle="modal" data-target="#myModal3"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <h5><a href="single.jsp">LED Tv</a></h5>
                                        <div class="simpleCart_shelfItem">
                                            <p><span>$700</span> <i class="item_price">$680</i></p>
                                            <form action="#" method="post">
                                                <input type="hidden" name="cmd" value="_cart" />
                                                <input type="hidden" name="add" value="1" /> 
                                                <input type="hidden" name="item_name" value="LED Tv"/> 
                                                <input type="hidden" name="currency_code" value="BRL">
                                                <input type="hidden" name="amount" value="680.00"/>   
                                                <button type="submit" class="w3ls-cart">Add to cart</button>
                                            </form>
                                        </div>
                                    </div>
                                    <div class="col-md-4 agile_ecommerce_tab_left">
                                        <div class="hs-wrapper">
                                            <img src="../img/16.jpg" alt=" " />
                                            <div class="w3_hs_bottom">
                                                <ul>
                                                    <li>
                                                        <a href="#" data-toggle="modal" data-target="#myModal3"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <h5><a href="single.jsp">Washing Machine</a></h5>
                                        <div class="simpleCart_shelfItem">
                                            <p><span>$520</span> <i class="item_price">$510</i></p>
                                            <form action="#" method="post">
                                                <input type="hidden" name="cmd" value="_cart" />
                                                <input type="hidden" name="add" value="1" /> 
                                                <input type="hidden" name="item_name" value="Washing Machine" /> 
                                                <input type="hidden" name="currency_code" value="BRL">
                                                <input type="hidden" name="amount" value="510.00" />   
                                                <button type="submit" class="w3ls-cart">Add to cart</button>
                                            </form>
                                        </div>
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                            </div>
                            <div role="tabpanel" class="tab-pane fade" id="kitchen" aria-labelledby="kitchen-tab">
                                <div class="agile_ecommerce_tabs">
                                    <div class="col-md-4 agile_ecommerce_tab_left">
                                        <div class="hs-wrapper">
                                            <img src="../img/17.jpg" alt=" " />
                                            <div class="w3_hs_bottom">
                                                <ul>
                                                    <li>
                                                        <a href="#" data-toggle="modal" data-target="#myModal4"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <h5><a href="single.jsp">Grinder</a></h5>
                                        <div class="simpleCart_shelfItem">
                                            <p><span>$460</span> <i class="item_price">$450</i></p>
                                            <form action="#" method="post">
                                                <input type="hidden" name="cmd" value="_cart" />
                                                <input type="hidden" name="add" value="1" /> 
                                                <input type="hidden" name="item_name" value="Grinder" /> 
                                                <input type="hidden" name="currency_code" value="BRL">
                                                <input type="hidden" name="amount" value="450.00" />   
                                                <button type="submit" class="w3ls-cart">Add to cart</button>
                                            </form>
                                        </div>
                                    </div>
                                    <div class="col-md-4 agile_ecommerce_tab_left">
                                        <div class="hs-wrapper">
                                            <img src="../img/18.jpg" alt=" " />
                                            <div class="w3_hs_bottom">
                                                <ul>
                                                    <li>
                                                        <a href="#" data-toggle="modal" data-target="#myModal4"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <h5><a href="single.jsp">Water Purifier</a></h5>
                                        <div class="simpleCart_shelfItem">
                                            <p><span>$390</span> <i class="item_price">$350</i></p>
                                            <form action="#" method="post">
                                                <input type="hidden" name="cmd" value="_cart" />
                                                <input type="hidden" name="add" value="1" /> 
                                                <input type="hidden" name="item_name" value="Water Purifier" /> 
                                                <input type="hidden" name="currency_code" value="BRL">
                                                <input type="hidden" name="amount" value="350.00" />   
                                                <button type="submit" class="w3ls-cart">Add to cart</button>
                                            </form>
                                        </div>
                                    </div>
                                    <div class="col-md-4 agile_ecommerce_tab_left">
                                        <div class="hs-wrapper">
                                            <img src="../img/19.jpg" alt=" " />
                                            <div class="w3_hs_bottom">
                                                <ul>
                                                    <li>
                                                        <a href="#" data-toggle="modal" data-target="#myModal4"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <h5><a href="single.jsp">Coffee Maker</a></h5>
                                        <div class="simpleCart_shelfItem">
                                            <p><span>$250</span> <i class="item_price">$220</i></p>
                                            <form action="#" method="post">
                                                <input type="hidden" name="cmd" value="_cart" />
                                                <input type="hidden" name="add" value="1" /> 
                                                <input type="hidden" name="item_name" value="Coffee Maker" /> 
                                                <input type="hidden" name="currency_code" value="BRL">
                                                <input type="hidden" name="amount" value="220.00" />   
                                                <button type="submit" class="w3ls-cart">Add to cart</button>
                                            </form>
                                        </div>
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                            </div>
                        </div>
                    </div> 
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
        <!-- //banner-bottom --> 
        <!-- modal-video -->
        <div class="modal video-modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModal">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
                    </div>
                    <section>
                        <div class="modal-body">
                            <div class="col-md-5 modal_body_left">
                                <img src="../img/3.jpg" alt=" " />
                            </div>
                            <div class="col-md-7 modal_body_right">
                                <h4>The Best Mobile Phone 3GB</h4>
                                <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea 
                                    commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </p>
                                <div class="rating">
                                    <div class="rating-left">
                                        <img src="../img/star-.png" alt=" " />
                                    </div>
                                    <div class="rating-left">
                                        <img src="../img/star-.png" alt=" " />
                                    </div>
                                    <div class="rating-left">
                                        <img src="../img/star-.png" alt=" " />
                                    </div>
                                    <div class="rating-left">
                                        <img src="../img/star.png" alt=" " />
                                    </div>
                                    <div class="rating-left">
                                        <img src="../img/star.png" alt=" " />
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                                <div class="modal_body_right_cart simpleCart_shelfItem">
                                    <p><span>$380</span> <i class="item_price">$350</i></p>
                                    <form action="#" method="post">
                                        <input type="hidden" name="cmd" value="_cart">
                                        <input type="hidden" name="add" value="1"> 
                                        <input type="hidden" name="item_name" value="Mobile Phone1"> 
                                        <input type="hidden" name="currency_code" value="BRL">
                                        <input type="hidden" name="amount" value="350.00">   
                                        <button type="submit" class="w3ls-cart">Add to cart</button>
                                    </form>
                                </div>
                                <h5>Color</h5>
                                <div class="color-quality">
                                    <ul>
                                        <li><a href="#"><span></span></a></li>
                                        <li><a href="#" class="brown"><span></span></a></li>
                                        <li><a href="#" class="purple"><span></span></a></li>
                                        <li><a href="#" class="gray"><span></span></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                    </section>
                </div>
            </div>
        </div>
        <div class="modal video-modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModal1">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
                    </div>
                    <section>
                        <div class="modal-body">
                            <div class="col-md-5 modal_body_left">
                                <img src="../img/9.jpg" alt=" " />
                            </div>
                            <div class="col-md-7 modal_body_right">
                                <h4>Multimedia Home Accessories</h4>
                                <p>Ut enim ad minim veniam, quis nostrud 
                                    exercitation ullamco laboris nisi ut aliquip ex ea 
                                    commodo consequat.Duis aute irure dolor in 
                                    reprehenderit in voluptate velit esse cillum dolore 
                                    eu fugiat nulla pariatur. Excepteur sint occaecat 
                                    cupidatat non proident, sunt in culpa qui officia 
                                    deserunt mollit anim id est laborum.</p>
                                <div class="rating">
                                    <div class="rating-left">
                                        <img src="../img/star-.png" alt=" " />
                                    </div>
                                    <div class="rating-left">
                                        <img src="../img/star-.png" alt=" " />
                                    </div>
                                    <div class="rating-left">
                                        <img src="../img/star-.png" alt=" " />
                                    </div>
                                    <div class="rating-left">
                                        <img src="../img/star.png" alt=" " />
                                    </div>
                                    <div class="rating-left">
                                        <img src="../img/star.png" alt=" " />
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                                <div class="modal_body_right_cart simpleCart_shelfItem">
                                    <p><span>$180</span> <i class="item_price">$150</i></p>
                                    <form action="#" method="post">
                                        <input type="hidden" name="cmd" value="_cart">
                                        <input type="hidden" name="add" value="1"> 
                                        <input type="hidden" name="item_name" value="Headphones"> 
                                        <input type="hidden" name="currency_code" value="BRL">
                                        <input type="hidden" name="amount" value="150.00">   
                                        <button type="submit" class="w3ls-cart">Add to cart</button>
                                    </form>
                                </div>
                                <h5>Color</h5>
                                <div class="color-quality">
                                    <ul>
                                        <li><a href="#"><span></span></a></li>
                                        <li><a href="#" class="brown"><span></span></a></li>
                                        <li><a href="#" class="purple"><span></span></a></li>
                                        <li><a href="#" class="gray"><span></span></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                    </section>
                </div>
            </div>
        </div>
        <div class="modal video-modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModal2">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
                    </div>
                    <section>
                        <div class="modal-body">
                            <div class="col-md-5 modal_body_left">
                                <img src="../img/11.jpg" alt=" " />
                            </div>
                            <div class="col-md-7 modal_body_right">
                                <h4>Quad Core Colorful Laptop</h4>
                                <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in 
                                    reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia  deserunt.</p>
                                <div class="rating">
                                    <div class="rating-left">
                                        <img src="../img/star-.png" alt=" " />
                                    </div>
                                    <div class="rating-left">
                                        <img src="../img/star-.png" alt=" " />
                                    </div>
                                    <div class="rating-left">
                                        <img src="../img/star-.png" alt=" " />
                                    </div>
                                    <div class="rating-left">
                                        <img src="../img/star-.png" alt=" " />
                                    </div>
                                    <div class="rating-left">
                                        <img src="../img/star.png" alt=" " />
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                                <div class="modal_body_right_cart simpleCart_shelfItem">
                                    <p><span>$880</span> <i class="item_price">$850</i></p>
                                    <form action="#" method="post">
                                        <input type="hidden" name="cmd" value="_cart">
                                        <input type="hidden" name="add" value="1"> 
                                        <input type="hidden" name="item_name" value="Laptop"> 
                                        <input type="hidden" name="currency_code" value="BRL">
                                        <input type="hidden" name="amount" value="850.00">   
                                        <button type="submit" class="w3ls-cart">Add to cart</button>
                                    </form>
                                </div>
                                <h5>Color</h5>
                                <div class="color-quality">
                                    <ul>
                                        <li><a href="#"><span></span></a></li>
                                        <li><a href="#" class="brown"><span></span></a></li>
                                        <li><a href="#" class="purple"><span></span></a></li>
                                        <li><a href="#" class="gray"><span></span></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                    </section>
                </div>
            </div>
        </div>
        <div class="modal video-modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModal3">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
                    </div>
                    <section>
                        <div class="modal-body">
                            <div class="col-md-5 modal_body_left">
                                <img src="../img/14.jpg" alt=" " />
                            </div>
                            <div class="col-md-7 modal_body_right">
                                <h4>Cool Single Door Refrigerator </h4>
                                <p>Duis aute irure dolor inreprehenderit in voluptate velit esse cillum dolore 
                                    eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                                <div class="rating">
                                    <div class="rating-left">
                                        <img src="../img/star-.png" alt=" " />
                                    </div>
                                    <div class="rating-left">
                                        <img src="../img/star-.png" alt=" " />
                                    </div>
                                    <div class="rating-left">
                                        <img src="../img/star-.png" alt=" " />
                                    </div>
                                    <div class="rating-left">
                                        <img src="../img/star.png" alt=" " />
                                    </div>
                                    <div class="rating-left">
                                        <img src="../img/star.png" alt=" " />
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                                <div class="modal_body_right_cart simpleCart_shelfItem">
                                    <p><span>$950</span> <i class="item_price">$820</i></p>
                                    <form action="#" method="post">
                                        <input type="hidden" name="cmd" value="_cart">
                                        <input type="hidden" name="add" value="1"> 
                                        <input type="hidden" name="item_name" value="Mobile Phone1"> 
                                        <input type="hidden" name="currency_code" value="BRL">
                                        <input type="hidden" name="amount" value="820.00">   
                                        <button type="submit" class="w3ls-cart">Add to cart</button>
                                    </form>
                                </div>
                                <h5>Color</h5>
                                <div class="color-quality">
                                    <ul>
                                        <li><a href="#"><span></span></a></li>
                                        <li><a href="#" class="brown"><span></span></a></li>
                                        <li><a href="#" class="purple"><span></span></a></li>
                                        <li><a href="#" class="gray"><span></span></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                    </section>
                </div>
            </div>
        </div>
        <div class="modal video-modal fade" id="myModal4" tabindex="-1" role="dialog" aria-labelledby="myModal4">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
                    </div>
                    <section>
                        <div class="modal-body">
                            <div class="col-md-5 modal_body_left">
                                <img src="../img/17.jpg" alt=" " />
                            </div>
                            <div class="col-md-7 modal_body_right">
                                <h4>New Model Mixer Grinder</h4>
                                <p>Excepteur sint occaecat laboris nisi ut aliquip ex ea 
                                    commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore 
                                    eu fugiat nulla pariatur cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                                <div class="rating">
                                    <div class="rating-left">
                                        <img src="../img/star-.png" alt=" " />
                                    </div>
                                    <div class="rating-left">
                                        <img src="../img/star-.png" alt=" " />
                                    </div>
                                    <div class="rating-left">
                                        <img src="../img/star-.png" alt=" " />
                                    </div>
                                    <div class="rating-left">
                                        <img src="../img/star.png" alt=" " />
                                    </div>
                                    <div class="rating-left">
                                        <img src="../img/star.png" alt=" " />
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                                <div class="modal_body_right_cart simpleCart_shelfItem">
                                    <p><span>$460</span> <i class="item_price">$450</i></p>
                                    <form action="#" method="post">
                                        <input type="hidden" name="cmd" value="_cart">
                                        <input type="hidden" name="add" value="1"> 
                                        <input type="hidden" name="item_name" value="Mobile Phone1"> 
                                        <input type="hidden" name="currency_code" value="BRL">
                                        <input type="hidden" name="amount" value="450.00">   
                                        <button type="submit" class="w3ls-cart">Add to cart</button>
                                    </form>
                                </div>
                                <h5>Color</h5>
                                <div class="color-quality">
                                    <ul>
                                        <li><a href="#"><span></span></a></li>
                                        <li><a href="#" class="brown"><span></span></a></li>
                                        <li><a href="#" class="purple"><span></span></a></li>
                                        <li><a href="#" class="gray"><span></span></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                    </section>
                </div>
            </div>
        </div>
        <div class="modal video-modal fade" id="myModal5" tabindex="-1" role="dialog" aria-labelledby="myModal5">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
                    </div>
                    <section>
                        <div class="modal-body">
                            <div class="col-md-5 modal_body_left">
                                <img src="../img/36.jpg" alt=" " />
                            </div>
                            <div class="col-md-7 modal_body_right">
                                <h4>Dry Vacuum Cleaner</h4>
                                <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea 
                                    commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat 
                                    cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                                <div class="rating">
                                    <div class="rating-left">
                                        <img src="../img/star-.png" alt=" " />
                                    </div>
                                    <div class="rating-left">
                                        <img src="../img/star-.png" alt=" " />
                                    </div>
                                    <div class="rating-left">
                                        <img src="../img/star-.png" alt=" " />
                                    </div>
                                    <div class="rating-left">
                                        <img src="../img/star.png" alt=" " />
                                    </div>
                                    <div class="rating-left">
                                        <img src="../img/star.png" alt=" " />
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                                <div class="modal_body_right_cart simpleCart_shelfItem">
                                    <p><span>$960</span> <i class="item_price">$920</i></p>
                                    <form action="#" method="post">
                                        <input type="hidden" name="cmd" value="_cart">
                                        <input type="hidden" name="add" value="1"> 
                                        <input type="hidden" name="item_name" value="Vacuum Cleaner"> 
                                        <input type="hidden" name="currency_code" value="BRL">
                                        <input type="hidden" name="amount" value="920.00">   
                                        <button type="submit" class="w3ls-cart">Add to cart</button>
                                    </form>
                                </div>
                                <h5>Color</h5>
                                <div class="color-quality">
                                    <ul>
                                        <li><a href="#"><span></span></a></li>
                                        <li><a href="#" class="brown"><span></span></a></li>
                                        <li><a href="#" class="purple"><span></span></a></li>
                                        <li><a href="#" class="gray"><span></span></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                    </section>
                </div>
            </div>
        </div>
        <div class="modal video-modal fade" id="myModal6" tabindex="-1" role="dialog" aria-labelledby="myModal6">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
                    </div>
                    <section>
                        <div class="modal-body">
                            <div class="col-md-5 modal_body_left">
                                <img src="../img/37.jpg" alt=" " />
                            </div>
                            <div class="col-md-7 modal_body_right">
                                <h4>Kitchen & Dining Accessories</h4>
                                <p>Ut enim ad minim veniam, quis nostrud 
                                    exercitation ullamco laboris nisi ut aliquip ex ea 
                                    commodo consequat.Duis aute irure dolor in 
                                    reprehenderit in voluptate velit esse cillum dolore 
                                    eu fugiat nulla pariatur. Excepteur sint occaecat 
                                    cupidatat non proident, sunt in culpa qui officia 
                                    deserunt mollit anim id est laborum.</p>
                                <div class="rating">
                                    <div class="rating-left">
                                        <img src="../img/star-.png" alt=" " />
                                    </div>
                                    <div class="rating-left">
                                        <img src="../img/star-.png" alt=" " />
                                    </div>
                                    <div class="rating-left">
                                        <img src="../img/star-.png" alt=" " />
                                    </div>
                                    <div class="rating-left">
                                        <img src="../img/star.png" alt=" " />
                                    </div>
                                    <div class="rating-left">
                                        <img src="../img/star.png" alt=" " />
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                                <div class="modal_body_right_cart simpleCart_shelfItem">
                                    <p><span>$280</span> <i class="item_price">$250</i></p>
                                    <form action="#" method="post">
                                        <input type="hidden" name="cmd" value="_cart">
                                        <input type="hidden" name="add" value="1"> 
                                        <input type="hidden" name="item_name" value="Induction Stove"> 
                                        <input type="hidden" name="currency_code" value="BRL">
                                        <input type="hidden" name="amount" value="250.00">   
                                        <button type="submit" class="w3ls-cart">Add to cart</button>
                                    </form>
                                </div>
                                <h5>Color</h5>
                                <div class="color-quality">
                                    <ul>
                                        <li><a href="#"><span></span></a></li>
                                        <li><a href="#" class="brown"><span></span></a></li>
                                        <li><a href="#" class="purple"><span></span></a></li>
                                        <li><a href="#" class="gray"><span></span></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                    </section>
                </div>
            </div>
        </div>
        <!-- //modal-video -->
        <!-- banner-bottom1 -->
        <div class="banner-bottom1">
            <div class="agileinfo_banner_bottom1_grids">
                <div class="col-md-7 agileinfo_banner_bottom1_grid_left">
                    <h3>Grand Opening Event With flat<span>20% <i>Discount</i></span></h3>
                    <a href="products.jsp">Shop Now</a>
                </div>
                <div class="col-md-5 agileinfo_banner_bottom1_grid_right">
                    <h4>hot deal</h4>
                    <div class="timer_wrap">
                        <div id="counter"> </div>
                    </div>
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
        <!-- //banner-bottom1 --> 
        <!-- special-deals -->
        <div class="special-deals">
            <div class="container">
                <h2>Special Deals</h2>
                <div class="w3agile_special_deals_grids">
                    <div class="col-md-7 w3agile_special_deals_grid_left">
                        <div class="w3agile_special_deals_grid_left_grid">
                            <img src="../img/21.jpg" alt=" " />
                            <div class="w3agile_special_deals_grid_left_grid_pos1">
                                <h5>30%<span>Off/-</span></h5>
                            </div>
                            <div class="w3agile_special_deals_grid_left_grid_pos">
                                <h4>We Offer <span>Best Products</span></h4>
                            </div>
                        </div>
                        <div class="wmuSlider example1">
                            <div class="wmuSliderWrapper">
                                <article style="position: absolute; width: 100%; opacity: 0;"> 
                                    <div class="banner-wrap">
                                        <div class="w3agile_special_deals_grid_left_grid1">
                                            <img src="../img/t1.png" alt=" " />
                                            <p>Quis autem vel eum iure reprehenderit qui in ea voluptate 
                                                velit esse quam nihil molestiae consequatur, vel illum qui dolorem 
                                                eum fugiat quo voluptas nulla pariatur</p>
                                            <h4>Laura</h4>
                                        </div>
                                    </div>
                                </article>
                                <article style="position: absolute; width: 100%; opacity: 0;"> 
                                    <div class="banner-wrap">
                                        <div class="w3agile_special_deals_grid_left_grid1">
                                            <img src="../img/t2.png" alt=" " />
                                            <p>Quis autem vel eum iure reprehenderit qui in ea voluptate 
                                                velit esse quam nihil molestiae consequatur, vel illum qui dolorem 
                                                eum fugiat quo voluptas nulla pariatur</p>
                                            <h4>Michael</h4>
                                        </div>
                                    </div>
                                </article>
                                <article style="position: absolute; width: 100%; opacity: 0;"> 
                                    <div class="banner-wrap">
                                        <div class="w3agile_special_deals_grid_left_grid1">
                                            <img src="../img/t3.png" alt=" " />
                                            <p>Quis autem vel eum iure reprehenderit qui in ea voluptate 
                                                velit esse quam nihil molestiae consequatur, vel illum qui dolorem 
                                                eum fugiat quo voluptas nulla pariatur</p>
                                            <h4>Rosy</h4>
                                        </div>
                                    </div>
                                </article>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-5 w3agile_special_deals_grid_right">
                        <img src="../img/20.jpg" alt=" " />
                        <div class="w3agile_special_deals_grid_right_pos">
                            <h4>Women's <span>Special</span></h4>
                            <h5>save up <span>to</span> 30%</h5>
                        </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>
        <!-- //special-deals -->
        <!-- new-products -->
        <div class="new-products">
            <div class="container">
                <h3>New Products</h3>
                <div class="agileinfo_new_products_grids">
                    <div class="col-md-3 agileinfo_new_products_grid">
                        <div class="agile_ecommerce_tab_left agileinfo_new_products_grid1">
                            <div class="hs-wrapper">
                                <img src="../img/25.jpg" alt=" " />
                                <div class="w3_hs_bottom w3_hs_bottom_sub">
                                    <ul>
                                        <li>
                                            <a href="#" data-toggle="modal" data-target="#myModal2"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <h5><a href="single.jsp">Laptops</a></h5>
                            <div class="simpleCart_shelfItem">
                                <p><span>$520</span> <i class="item_price">$500</i></p>
                                <form action="#" method="post">
                                    <input type="hidden" name="cmd" value="_cart">
                                    <input type="hidden" name="add" value="1"> 
                                    <input type="hidden" name="item_name" value="Red Laptop"> 
                                    <input type="hidden" name="currency_code" value="BRL">
                                    <input type="hidden" name="amount" value="500.00">   
                                    <button type="submit" class="w3ls-cart">Add to cart</button>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 agileinfo_new_products_grid">
                        <div class="agile_ecommerce_tab_left agileinfo_new_products_grid1">
                            <div class="hs-wrapper">
                                <img src="../img/27.jpg" alt=" " />
                                <div class="w3_hs_bottom w3_hs_bottom_sub">
                                    <ul>
                                        <li>
                                            <a href="#" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <h5><a href="single.jsp">Black Phone</a></h5>
                            <div class="simpleCart_shelfItem">
                                <p><span>$380</span> <i class="item_price">$370</i></p>
                                <form action="#" method="post">
                                    <input type="hidden" name="cmd" value="_cart">
                                    <input type="hidden" name="add" value="1"> 
                                    <input type="hidden" name="item_name" value="Black Phone"> 
                                    <input type="hidden" name="currency_code" value="BRL">
                                    <input type="hidden" name="amount" value="370.00">   
                                    <button type="submit" class="w3ls-cart">Add to cart</button>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 agileinfo_new_products_grid">
                        <div class="agile_ecommerce_tab_left agileinfo_new_products_grid1">
                            <div class="hs-wrapper">
                                <img src="../img/34.jpg" alt=" " />
                                <div class="w3_hs_bottom w3_hs_bottom_sub">
                                    <ul>
                                        <li>
                                            <a href="#" data-toggle="modal" data-target="#myModal5"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <h5><a href="single.jsp">Kids Toy</a></h5>
                            <div class="simpleCart_shelfItem">
                                <p><span>$150</span> <i class="item_price">$100</i></p>
                                <form action="#" method="post">
                                    <input type="hidden" name="cmd" value="_cart">
                                    <input type="hidden" name="add" value="1"> 
                                    <input type="hidden" name="item_name" value="Kids Toy"> 
                                    <input type="hidden" name="currency_code" value="BRL">
                                    <input type="hidden" name="amount" value="100.00">   
                                    <button type="submit" class="w3ls-cart">Add to cart</button>
                                </form>
                            </div>  
                        </div>
                    </div>
                    <div class="col-md-3 agileinfo_new_products_grid">
                        <div class="agile_ecommerce_tab_left agileinfo_new_products_grid1">
                            <div class="hs-wrapper">
                                <img src="../img/37.jpg" alt=" " />
                                <div class="w3_hs_bottom w3_hs_bottom_sub">
                                    <ul>
                                        <li>
                                            <a href="#" data-toggle="modal" data-target="#myModal6"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <h5><a href="single.jsp">Induction Stove</a></h5>
                            <div class="simpleCart_shelfItem">
                                <p><span>$280</span> <i class="item_price">$250</i></p>
                                <form action="#" method="post">
                                    <input type="hidden" name="cmd" value="_cart">
                                    <input type="hidden" name="add" value="1"> 
                                    <input type="hidden" name="item_name" value="Induction Stove"> 
                                    <input type="hidden" name="currency_code" value="BRL">
                                    <input type="hidden" name="amount" value="250.00">   
                                    <button type="submit" class="w3ls-cart">Add to cart</button>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>
        <!-- //new-products -->
        <!-- top-brands -->
        <div class="top-brands">
            <div class="container">
                <h3>Top Brands</h3>
                <div class="sliderfig">
                    <ul id="flexiselDemo1">			
                        <li>
                            <img src="../img/tb1.jpg" alt=" " />
                        </li> 
                        <li> 
                            <img src="../img/tb2.jpg" alt=" " />
                        </li> 
                        <li> 
                            <img src="../img/tb3.jpg" alt=" " />
                        </li> 
                        <li> 
                            <img src="../img/tb4.jpg" alt=" " />
                        </li> 
                        <li> 
                            <img src="../img/tb5.jpg" alt=" " />
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- //top-brands -->       
        <%@ include file="../layout/newsLetter.jsp" %>
        <%@ include file="../layout/footer.jsp" %>
        <%@ include file="../layout/wrapper.jsp" %>  
        <!-- pop-up-box -->     
        <script type="text/javascript" src="../include/js/jquery.magnific-popup.min.js"></script>
        <!--//pop-up-box -->
        <script type="text/javascript" src="../include/js/jquery.countdown.js"></script>
        <script type="text/javascript" src="../include/js/jquery.wmuSlider.min.js"></script> 
        <script type="text/javascript" src="../include/js/jquery.flexisel.js"></script>  
        <script type="text/javascript">
            /* ---- Countdown timer ---- */
            $('#counter').countdown({
                timestamp: (new Date()).getTime() + 11 * 24 * 60 * 60 * 1000
            });
        </script>
        <script type="text/javascript">
            $(document).ready(function () {
                $('.popup-with-zoom-anim').magnificPopup({
                    type: 'inline',
                    fixedContentPos: false,
                    fixedBgPos: true,
                    overflowY: 'auto',
                    closeBtnInside: true,
                    preloader: false,
                    midClick: true,
                    removalDelay: 300,
                    mainClass: 'my-mfp-zoom-in'
                });

            });
        </script>
        <script type="text/javascript">
            $('.example1').wmuSlider();
        </script>
        <script type="text/javascript">
            $(window).on('load', function () {
                $("#flexiselDemo1").flexisel({
                    visibleItems: 4,
                    itemsToScroll: 1,
                    animationSpeed: 1000,
                    autoPlay: {
                        enable: true,
                        interval: 5000,
                        pauseOnHover: false
                    },
                    responsiveBreakpoints: {
                        portrait: {
                            changePoint: 480,
                            visibleItems: 1
                        },
                        landscape: {
                            changePoint: 640,
                            visibleItems: 2
                        },
                        tablet: {
                            changePoint: 768,
                            visibleItems: 3
                        }
                    }
                });

            });
        </script>
    </body>
</html>