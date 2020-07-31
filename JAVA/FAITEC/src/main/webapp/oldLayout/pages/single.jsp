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
<html>
    <head>

        <%@ include file="../includes/config.jsp" %>
        <%! List<String> errList = new ArrayList<>();%>
        <%  //if not logged in redirect to login page
            if (!user.IsLoggedIn(request, response)) {
                out.print(session.getAttribute("user_name"));
                /*response.sendRedirect("index.jsp");
                return;*/
            }
        %>
        <jsp:include page="../layout/header.jsp" flush="true">
            <jsp:param name="title" value="Projeto X | Single"/>
        </jsp:include>
        <link rel="stylesheet" href="../includes/vendors/ninja-slider/4/ninja-slider.css" type="text/css" media="screen" />
        <link rel="stylesheet" href="../includes/vendors/ninja-slider/4/thumbnail-slider.css" type="text/css" media="screen" />
    </head>
    <body>        
        <%@ include file="../layout/nav.jsp" %>
        <!-- banner -->
        <div class="page-head">
            <div class="container">
                <h3>Single</h3>
            </div>
        </div>
        <!-- //banner -->
        <!-- single -->
        <div class="single">
            <div class="container">
                <div class="col-md-6">
                    <div class="grid images_3_of_2">
                        <div id='ninja-slider'>
                            <div>
                                <div class="slider-inner">
                                    <ul>
                                        <li><a class="ns-img" href="../img/d1.jpg"></a></li>
                                        <li><a class="ns-img" href="../img/d2.jpg"></a></li>
                                        <li><a class="ns-img" href="../img/d3.jpg"></a></li>
                                        <li><a class="ns-img" href="../img/d4.jpg"></a></li>
                                    </ul>
                                    <div class="fs-icon" title="Expand/Close"></div>
                                </div>
                                <div id="thumbnail-slider">
                                    <div class="inner">
                                        <ul>
                                            <li>
                                                <a class="thumb" href="../img/d1.jpg"></a>
                                            </li>
                                            <li>
                                                <a class="thumb" href="../img/d2.jpg"></a>
                                            </li>
                                            <li>
                                                <a class="thumb" href="../img/d3.jpg"></a>
                                            </li>
                                            <li>
                                                <a class="thumb" href="../img/d4.jpg"></a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 single-right-left simpleCart_shelfItem animated wow slideInRight animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: slideInRight;">
                    <h3>Asics Gel Zaraca 4 Blue Sport Shoes</h3>
                    <p><span class="item_price">$550</span> <del>- $900</del></p>
                    <div class="rating1">
                        <span class="starRating">
                            <input id="rating5" type="radio" name="rating" value="5">
                            <label for="rating5">5</label>
                            <input id="rating4" type="radio" name="rating" value="4">
                            <label for="rating4">4</label>
                            <input id="rating3" type="radio" name="rating" value="3" checked="">
                            <label for="rating3">3</label>
                            <input id="rating2" type="radio" name="rating" value="2">
                            <label for="rating2">2</label>
                            <input id="rating1" type="radio" name="rating" value="1">
                            <label for="rating1">1</label>
                        </span>
                    </div>
                    <div class="description">
                        <h5>Check delivery, payment options and charges at your location</h5>
                        <input type="text" value="Enter pincode" onfocus="this.value = '';" onblur="if (this.value == '') {
                                    this.value = 'Enter pincode';
                                }" required="">
                        <input type="submit" value="Check">
                    </div>
                    <div class="color-quality">
                        <div class="color-quality-right">
                            <h5>Quality :</h5>
                            <select id="country1" onchange="change_country(this.value)" class="frm-field required sect">
                                <option value="null">5 Qty</option>
                                <option value="null">6 Qty</option> 
                                <option value="null">7 Qty</option>					
                                <option value="null">10 Qty</option>								
                            </select>
                        </div>
                    </div>
                    <div class="occasional">
                        <h5>Types :</h5>
                        <div class="colr ert">
                            <label class="radio"><input type="radio" name="radio" checked=""><i></i>Casual Shoes</label>
                        </div>
                        <div class="colr">
                            <label class="radio"><input type="radio" name="radio"><i></i>Sports Shoes</label>
                        </div>
                        <div class="colr">
                            <label class="radio"><input type="radio" name="radio"><i></i>Formal Shoes</label>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="occasion-cart">
                        <a href="#" class="item_add hvr-outline-out button2">Add to cart</a>
                    </div>

                </div>
                <div class="clearfix"> </div>

                <div class="bootstrap-tab animated wow slideInUp animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: slideInUp;">
                    <div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
                        <ul id="myTab" class="nav nav-tabs" role="tablist">
                            <li role="presentation" class="active"><a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">Description</a></li>
                            <li role="presentation"><a href="#profile" role="tab" id="profile-tab" data-toggle="tab" aria-controls="profile">Reviews(1)</a></li>
                            <li role="presentation" class="dropdown">
                                <a href="#" id="myTabDrop1" class="dropdown-toggle" data-toggle="dropdown" aria-controls="myTabDrop1-contents">Information <span class="caret"></span></a>
                                <ul class="dropdown-menu" role="menu" aria-labelledby="myTabDrop1" id="myTabDrop1-contents">
                                    <li><a href="#dropdown1" tabindex="-1" role="tab" id="dropdown1-tab" data-toggle="tab" aria-controls="dropdown1">cleanse</a></li>
                                    <li><a href="#dropdown2" tabindex="-1" role="tab" id="dropdown2-tab" data-toggle="tab" aria-controls="dropdown2">fanny</a></li>
                                </ul>
                            </li>
                        </ul>
                        <div id="myTabContent" class="tab-content">
                            <div role="tabpanel" class="tab-pane fade in active bootstrap-tab-text" id="home" aria-labelledby="home-tab">
                                <h5>Product Brief Description</h5>
                                <p>Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.
                                    <span>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p>
                            </div>
                            <div role="tabpanel" class="tab-pane fade bootstrap-tab-text" id="profile" aria-labelledby="profile-tab">
                                <div class="bootstrap-tab-text-grids">
                                    <div class="bootstrap-tab-text-grid">
                                        <div class="bootstrap-tab-text-grid-left">
                                            <img src="../img/men3.jpg" alt=" " class="img-responsive">
                                        </div>
                                        <div class="bootstrap-tab-text-grid-right">
                                            <ul>
                                                <li><a href="#">Admin</a></li>
                                                <li><a href="#"><span class="glyphicon glyphicon-share" aria-hidden="true"></span>Reply</a></li>
                                            </ul>
                                            <p>Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis 
                                                suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem 
                                                vel eum iure reprehenderit.</p>
                                        </div>
                                        <div class="clearfix"> </div>
                                    </div>

                                    <div class="add-review">
                                        <h4>add a review</h4>
                                        <form>
                                            <input type="text" value="Name" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                        this.value = 'Name';
                                                    }" required="">
                                            <input type="email" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                        this.value = 'Email';
                                                    }" required="">
                                            <textarea type="text" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                        this.value = 'Message...';
                                                    }" required="">Message...</textarea>
                                            <input type="submit" value="SEND">
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div role="tabpanel" class="tab-pane fade bootstrap-tab-text" id="dropdown1" aria-labelledby="dropdown1-tab">
                                <p>Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney's organic lomo retro fanny pack lo-fi farm-to-table readymade. Messenger bag gentrify pitchfork tattooed craft beer, iphone skateboard locavore carles etsy salvia banksy hoodie helvetica. DIY synth PBR banksy irony. Leggings gentrify squid 8-bit cred pitchfork. Williamsburg banh mi whatever gluten-free, carles pitchfork biodiesel fixie etsy retro mlkshk vice blog. Scenester cred you probably haven't heard of them, vinyl craft beer blog stumptown. Pitchfork sustainable tofu synth chambray yr.</p>
                            </div>
                            <div role="tabpanel" class="tab-pane fade bootstrap-tab-text" id="dropdown2" aria-labelledby="dropdown2-tab">
                                <p>Trust fund seitan letterpress, keytar raw denim keffiyeh etsy art party before they sold out master cleanse gluten-free squid scenester freegan cosby sweater. Fanny pack portland seitan DIY, art party locavore wolf cliche high life echo park Austin. Cred vinyl keffiyeh DIY salvia PBR, banh mi before they sold out farm-to-table VHS viral locavore cosby sweater. Lomo wolf viral, mustache readymade thundercats keffiyeh craft beer marfa ethical. Wolf salvia freegan, sartorial keffiyeh echo park vegan.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- //single -->
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
        <!-- single -->
        <script src="../includes/vendors/ninja-slider/4/ninja-slider.js"></script>
        <script src="../includes/vendors/ninja-slider/4/thumbnail-slider.js"></script>
        <!-- single -->
    </body>
</html>
