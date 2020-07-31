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
            <jsp:param name="title" value="Projeto X | Single"/>
        </jsp:include>
        <link href="../style/css/fasthover.css" rel="stylesheet" type="text/css" media="all" />
        <link rel="stylesheet" href="../style/css/ninja-slider.css" type="text/css" media="screen" />
        <link rel="stylesheet" href="../style/css/thumbnail-slider.css" type="text/css" media="screen" />
        <link rel="stylesheet" href="../style/css/flexisel.css" type="text/css" media="screen" />
    </head> 
    <body>        
        <%@ include file="../layout/nav.jsp" %>
        <%@ include file="../layout/modalLogin.jsp" %>
        <!-- banner -->
        <div class="banner banner10">
            <div class="container">
                <h2>Single Page</h2>
            </div>
        </div>
        <!-- //banner -->   
        <!-- breadcrumbs -->
        <div class="breadcrumb_dress">
            <div class="container">
                <ul>
                    <li><a href="index.jsp"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Início</a> <i>/</i></li>
                    <li>Single Page</li>
                </ul>
            </div>
        </div>
        <!-- //breadcrumbs -->  
        <!-- single -->
        <div class="single">
            <div class="container">
                <div class="col-md-4 single-left">
                    <div id='ninja-slider'>
                        <div>
                            <div class="slider-inner">
                                <ul>
                                    <li><a class="ns-img" href="../img/a.jpg"></a></li>
                                    <li><a class="ns-img" href="../img/b.jpg"></a></li>
                                    <li><a class="ns-img" href="../img/c.jpg"></a></li>
                                </ul>
                                <div class="fs-icon" title="Expand/Close"></div>
                            </div>
                            <div id="thumbnail-slider">
                                <div class="inner">
                                    <ul>
                                        <li>
                                            <a class="thumb" href="../img/a.jpg"></a>
                                        </li>
                                        <li>
                                            <a class="thumb" href="../img/b.jpg"></a>
                                        </li>
                                        <li>
                                            <a class="thumb" href="../img/c.jpg"></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-8 single-right">
                    <h3>The Best 3GB RAM Mobile Phone</h3>
                    <div class="rating1">
                        <span class="starRating">
                            <input id="rating5" type="radio" name="rating" value="5">
                            <label for="rating5">5</label>
                            <input id="rating4" type="radio" name="rating" value="4">
                            <label for="rating4">4</label>
                            <input id="rating3" type="radio" name="rating" value="3" checked>
                            <label for="rating3">3</label>
                            <input id="rating2" type="radio" name="rating" value="2">
                            <label for="rating2">2</label>
                            <input id="rating1" type="radio" name="rating" value="1">
                            <label for="rating1">1</label>
                        </span>
                    </div>
                    <div class="description">
                        <h5><i>Description</i></h5>
                        <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore 
                            eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident.
                            Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut 
                            odit aut fugit, sed quia consequuntur magni dolores eos qui 
                            ratione voluptatem sequi nesciunt.</p>
                    </div>
                    <div class="color-quality">
                        <div class="color-quality-left">
                            <h5>Color : </h5>
                            <ul>
                                <li><a href="#"><span></span></a></li>
                                <li><a href="#" class="brown"><span></span></a></li>
                                <li><a href="#" class="purple"><span></span></a></li>
                                <li><a href="#" class="gray"><span></span></a></li>
                            </ul>
                        </div>
                        <div class="color-quality-right">
                            <h5>Quality :</h5>
                            <div class="quantity"> 
                                <div class="quantity-select">                           
                                    <div class="entry value-minus1">&nbsp;</div>
                                    <div class="entry value1"><span>1</span></div>
                                    <div class="entry value-plus1 active">&nbsp;</div>
                                </div>
                            </div>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="occasional">
                        <h5>RAM :</h5>
                        <div class="colr ert">
                            <div class="check">
                                <label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i> </i>3 GB</label>
                            </div>
                        </div>
                        <div class="colr">
                            <div class="check">
                                <label class="checkbox"><input type="checkbox" name="checkbox"><i> </i>2 GB</label>
                            </div>
                        </div>
                        <div class="colr">
                            <div class="check">
                                <label class="checkbox"><input type="checkbox" name="checkbox"><i> </i>1 GB</label>
                            </div>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="simpleCart_shelfItem">
                        <p><span>$460</span> <i class="item_price">$450</i></p>
                        <form action="#" method="post">
                            <input type="hidden" name="cmd" value="_cart">
                            <input type="hidden" name="add" value="1"> 
                            <input type="hidden" name="w3ls_item" value="Smart Phone"> 
                            <input type="hidden" name="amount" value="450.00">   
                            <button type="submit" class="w3ls-cart">Add to cart</button>
                        </form>
                    </div> 
                </div>
                <div class="clearfix"> </div>
            </div>
        </div> 
        <div class="additional_info">
            <div class="container">
                <div class="sap_tabs">	
                    <div id="horizontalTab1" style="display: block; width: 100%; margin: 0px;">
                        <ul>
                            <li class="resp-tab-item" aria-controls="tab_item-0" role="tab"><span>Product Information</span></li>
                            <li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><span>Reviews</span></li>
                        </ul>		
                        <div class="tab-1 resp-tab-content additional_info_grid" aria-labelledby="tab_item-0">
                            <h3>The Best 3GB RAM Mobile Phone</h3>
                            <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore 
                                eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident.
                                Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut 
                                odit aut fugit, sed quia consequuntur magni dolores eos qui 
                                ratione voluptatem sequi nesciunt.Ut enim ad minima veniam, quis nostrum 
                                exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea 
                                commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate 
                                velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat 
                                quo voluptas nulla pariatur.</p>
                        </div>	

                        <div class="tab-2 resp-tab-content additional_info_grid" aria-labelledby="tab_item-1">
                            <h4>(2) Reviews</h4>
                            <div class="additional_info_sub_grids">
                                <div class="col-xs-2 additional_info_sub_grid_left">
                                    <img src="../img/t1.png" alt=" " />
                                </div>
                                <div class="col-xs-10 additional_info_sub_grid_right">
                                    <div class="additional_info_sub_grid_rightl">
                                        <a href="single.jsp">Laura</a>
                                        <h5>Oct 06, 2016.</h5>
                                        <p>Quis autem vel eum iure reprehenderit qui in ea voluptate 
                                            velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat 
                                            quo voluptas nulla pariatur.</p>
                                    </div>
                                    <div class="additional_info_sub_grid_rightr">
                                        <div class="rating">
                                            <div class="rating-left">
                                                <img src="../img/star-.png" alt=" ">
                                            </div>
                                            <div class="rating-left">
                                                <img src="../img/star-.png" alt=" ">
                                            </div>
                                            <div class="rating-left">
                                                <img src="../img/star-.png" alt=" ">
                                            </div>
                                            <div class="rating-left">
                                                <img src="../img/star.png" alt=" ">
                                            </div>
                                            <div class="rating-left">
                                                <img src="../img/star.png" alt=" ">
                                            </div>
                                            <div class="clearfix"> </div>
                                        </div>
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                            <div class="additional_info_sub_grids">
                                <div class="col-xs-2 additional_info_sub_grid_left">
                                    <img src="../img/t2.png" alt=" " />
                                </div>
                                <div class="col-xs-10 additional_info_sub_grid_right">
                                    <div class="additional_info_sub_grid_rightl">
                                        <a href="single.jsp">Michael</a>
                                        <h5>Oct 04, 2016.</h5>
                                        <p>Quis autem vel eum iure reprehenderit qui in ea voluptate 
                                            velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat 
                                            quo voluptas nulla pariatur.</p>
                                    </div>
                                    <div class="additional_info_sub_grid_rightr">
                                        <div class="rating">
                                            <div class="rating-left">
                                                <img src="../img/star-.png" alt=" ">
                                            </div>
                                            <div class="rating-left">
                                                <img src="../img/star-.png" alt=" ">
                                            </div>
                                            <div class="rating-left">
                                                <img src="../img/star.png" alt=" ">
                                            </div>
                                            <div class="rating-left">
                                                <img src="../img/star.png" alt=" ">
                                            </div>
                                            <div class="rating-left">
                                                <img src="../img/star.png" alt=" ">
                                            </div>
                                            <div class="clearfix"> </div>
                                        </div>
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                            <div class="review_grids">
                                <h5>Add A Review</h5>
                                <form action="#" method="post">
                                    <input type="text" name="Name" value="Name" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                this.value = 'Name';
                                            }" required="">
                                    <input type="email" name="Email" placeholder="Email" required="">
                                    <input type="text" name="Telephone" value="Telephone" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                this.value = 'Telephone';
                                            }" required="">
                                    <textarea name="Review" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                this.value = 'Add Your Review';
                                            }" required="">Add Your Review</textarea>
                                    <input type="submit" value="Submit" >
                                </form>
                            </div>
                        </div> 			        					            	      
                    </div>	
                </div>
            </div>
        </div>
        <!-- Related Products -->
        <div class="w3l_related_products">
            <div class="container">
                <h3>Related Products</h3>
                <ul id="flexiselDemo2">			
                    <li>
                        <div class="w3l_related_products_grid">
                            <div class="agile_ecommerce_tab_left mobiles_grid">
                                <div class="hs-wrapper">
                                    <img src="../img/34.jpg" alt=" " />
                                    <div class="w3_hs_bottom">
                                        <div class="flex_ecommerce">
                                            <a href="#" data-toggle="modal" data-target="#myModal6"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                        </div>
                                    </div>
                                </div>
                                <h5><a href="single.jsp">Kid's Toy</a></h5>
                                <div class="simpleCart_shelfItem"> 
                                    <p class="flexisel_ecommerce_cart"><span>$150</span> <i class="item_price">$100</i></p>
                                    <form action="#" method="post">
                                        <input type="hidden" name="cmd" value="_cart">
                                        <input type="hidden" name="add" value="1"> 
                                        <input type="hidden" name="w3ls_item" value="Kid's Toy"> 
                                        <input type="hidden" name="amount" value="100.00">   
                                        <button type="submit" class="w3ls-cart">Add to cart</button>
                                    </form> 
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="w3l_related_products_grid">
                            <div class="agile_ecommerce_tab_left mobiles_grid">
                                <div class="hs-wrapper">
                                    <img src="../img/36.jpg" alt=" " />
                                    <div class="w3_hs_bottom">
                                        <div class="flex_ecommerce">
                                            <a href="#" data-toggle="modal" data-target="#myModal5"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                        </div>
                                    </div>
                                </div>
                                <h5><a href="single.jsp">Vacuum Cleaner</a></h5>
                                <div class="simpleCart_shelfItem">
                                    <p class="flexisel_ecommerce_cart"><span>$960</span> <i class="item_price">$920</i></p>
                                    <form action="#" method="post">
                                        <input type="hidden" name="cmd" value="_cart" />
                                        <input type="hidden" name="add" value="1" /> 
                                        <input type="hidden" name="w3ls_item" value="Vacuum Cleaner" /> 
                                        <input type="hidden" name="amount" value="920.00"/>   
                                        <button type="submit" class="w3ls-cart">Add to cart</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="w3l_related_products_grid">
                            <div class="agile_ecommerce_tab_left mobiles_grid">
                                <div class="hs-wrapper">
                                    <img src="../img/38.jpg" alt=" " />
                                    <div class="w3_hs_bottom">
                                        <div class="flex_ecommerce">
                                            <a href="#" data-toggle="modal" data-target="#myModal3"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                        </div>
                                    </div>
                                </div>
                                <h5><a href="single.jsp">Microwave Oven</a></h5>
                                <div class="simpleCart_shelfItem">
                                    <p class="flexisel_ecommerce_cart"><span>$650</span> <i class="item_price">$645</i></p>
                                    <form action="#" method="post">
                                        <input type="hidden" name="cmd" value="_cart" />
                                        <input type="hidden" name="add" value="1" /> 
                                        <input type="hidden" name="w3ls_item" value="Microwave Oven" /> 
                                        <input type="hidden" name="amount" value="645.00"/>   
                                        <button type="submit" class="w3ls-cart">Add to cart</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="w3l_related_products_grid">
                            <div class="agile_ecommerce_tab_left mobiles_grid">
                                <div class="hs-wrapper">
                                    <img src="../img/p3.jpg" alt=" " />
                                    <div class="w3_hs_bottom">
                                        <div class="flex_ecommerce">
                                            <a href="#" data-toggle="modal" data-target="#myModal4"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                        </div>
                                    </div>
                                </div>
                                <h5><a href="single.jsp">Music MP3 Player</a></h5>
                                <div class="simpleCart_shelfItem">
                                    <p><span>$60</span> <i class="item_price">$58</i></p>
                                    <form action="#" method="post">
                                        <input type="hidden" name="cmd" value="_cart" />
                                        <input type="hidden" name="add" value="1" /> 
                                        <input type="hidden" name="w3ls_item" value="Ultra MP3 Player" /> 
                                        <input type="hidden" name="amount" value="58.00"/>   
                                        <button type="submit" class="w3ls-cart">Add to cart</button>
                                    </form>
                                </div> 
                                <div class="mobiles_grid_pos">
                                    <h6>New</h6>
                                </div>
                            </div> 
                        </div>
                    </li>
                </ul>
            </div>
        </div>
        <!-- //Related Products -->
        <div class="modal video-modal fade" id="myModal6" tabindex="-1" role="dialog" aria-labelledby="myModal6">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
                    </div>
                    <section>
                        <div class="modal-body">
                            <div class="col-md-5 modal_body_left">
                                <img src="../img/34.jpg" alt=" " />
                            </div>
                            <div class="col-md-7 modal_body_right">
                                <h4>Musical Kids Toy</h4>
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
                                    <p><span>$150</span> <i class="item_price">$100</i></p> 
                                    <form action="#" method="post">
                                        <input type="hidden" name="cmd" value="_cart">
                                        <input type="hidden" name="add" value="1"> 
                                        <input type="hidden" name="w3ls_item" value="Kids Toy"> 
                                        <input type="hidden" name="amount" value="100.00">   
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
                                <img src="../img/36.jpg" alt=" ">
                            </div>
                            <div class="col-md-7 modal_body_right">
                                <h4>Dry Vacuum Cleaner</h4>
                                <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea 
                                    commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat 
                                    cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                                <div class="rating">
                                    <div class="rating-left">
                                        <img src="../img/star-.png" alt=" ">
                                    </div>
                                    <div class="rating-left">
                                        <img src="../img/star-.png" alt=" ">
                                    </div>
                                    <div class="rating-left">
                                        <img src="../img/star-.png" alt=" ">
                                    </div>
                                    <div class="rating-left">
                                        <img src="../img/star.png" alt=" ">
                                    </div>
                                    <div class="rating-left">
                                        <img src="../img/star.png" alt=" ">
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                                <div class="modal_body_right_cart simpleCart_shelfItem">
                                    <p><span>$960</span> <i class="item_price">$920</i></p>
                                    <form action="#" method="post">
                                        <input type="hidden" name="cmd" value="_cart">
                                        <input type="hidden" name="add" value="1"> 
                                        <input type="hidden" name="w3ls_item" value="Vacuum Cleaner"> 
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
        <div class="modal video-modal fade" id="myModal4" tabindex="-1" role="dialog" aria-labelledby="myModal4">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
                    </div>
                    <section>
                        <div class="modal-body">
                            <div class="col-md-5 modal_body_left">
                                <img src="../img/p3.jpg" alt=" " />
                            </div>
                            <div class="col-md-7 modal_body_right">
                                <h4>Music MP3 Player </h4>
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
                                        <img src="../img/star-.png" alt=" " />
                                    </div>
                                    <div class="rating-left">
                                        <img src="../img/star.png" alt=" " />
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                                <div class="modal_body_right_cart simpleCart_shelfItem">
                                    <p><span>$60</span> <i class="item_price">$58</i></p>
                                    <form action="#" method="post">
                                        <input type="hidden" name="cmd" value="_cart" />
                                        <input type="hidden" name="add" value="1" /> 
                                        <input type="hidden" name="w3ls_item" value="MP3 Player" /> 
                                        <input type="hidden" name="amount" value=" $58.00"/>   
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
                                <img src="../img/38.jpg" alt=" ">
                            </div>
                            <div class="col-md-7 modal_body_right">
                                <h4>Kitchen &amp; Dining Accessories</h4>
                                <p>Ut enim ad minim veniam, quis nostrud 
                                    exercitation ullamco laboris nisi ut aliquip ex ea 
                                    commodo consequat.Duis aute irure dolor in 
                                    reprehenderit in voluptate velit esse cillum dolore 
                                    eu fugiat nulla pariatur. Excepteur sint occaecat 
                                    cupidatat non proident, sunt in culpa qui officia 
                                    deserunt mollit anim id est laborum.</p>
                                <div class="rating">
                                    <div class="rating-left">
                                        <img src="../img/star-.png" alt=" ">
                                    </div>
                                    <div class="rating-left">
                                        <img src="../img/star-.png" alt=" ">
                                    </div>
                                    <div class="rating-left">
                                        <img src="../img/star-.png" alt=" ">
                                    </div>
                                    <div class="rating-left">
                                        <img src="../img/star-.png" alt=" ">
                                    </div>
                                    <div class="rating-left">
                                        <img src="../img/star.png" alt=" ">
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                                <div class="modal_body_right_cart simpleCart_shelfItem">
                                    <p><span>$650</span> <i class="item_price">$645</i></p>
                                    <form action="#" method="post">
                                        <input type="hidden" name="cmd" value="_cart">
                                        <input type="hidden" name="add" value="1"> 
                                        <input type="hidden" name="w3ls_item" value="Microwave Oven"> 
                                        <input type="hidden" name="amount" value="645.00">   
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
        <!-- //single -->
        <%@ include file="../layout/newsLetter.jsp" %>
        <%@ include file="../layout/footer.jsp" %>
        <%@ include file="../layout/wrapper.jsp" %>   
        <script type="text/javascript" src="../include/js/jquery.flexisel.js"></script>
        <!-- single -->
        <script type="text/javascript" src="../include/js/ninja-slider.js"></script>
        <script type="text/javascript" src="../include/js/thumbnail-slider.js"></script>
        <!-- single -->
        <script type="text/javascript">
            $(window).on('load', function () {
                $("#flexiselDemo2").flexisel({
                    visibleItems: 4,
                    itemsToScroll: 1,
                    animationSpeed: 1000,
                    autoPlay: {
                        enable: true,
                        interval: 5000,
                        pauseOnHover: true
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
        <!--quantity-->
        <script type="text/javascript">
            $('.value-plus1').on('click', function () {
                var divUpd = $(this).parent().find('.value1'), newVal = parseInt(divUpd.text(), 10) + 1;
                divUpd.text(newVal);
            });

            $('.value-minus1').on('click', function () {
                var divUpd = $(this).parent().find('.value1'), newVal = parseInt(divUpd.text(), 10) - 1;
                if (newVal >= 1)
                    divUpd.text(newVal);
            });
        </script>
        <!--quantity-->
        <script type="text/javascript">
            $(document).ready(function () {
                $('#horizontalTab1').easyResponsiveTabs({
                    type: 'default', //Types: default, vertical, accordion           
                    width: 'auto', //auto or any width like 600px
                    fit: true   // 100% fit in a container
                });
            });
        </script>
    </body>
</html>