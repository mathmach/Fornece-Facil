<!-- header -->
<div class="header">
    <div class="container">
        <ul>
            <li><span class="glyphicon glyphicon-time" aria-hidden="true"></span>Texto 1</li>
            <li><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>Texto 2</li>
            <li><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span><a href="mailto:contato@exemplo.com">contato@exemplo.com</a></li>
        </ul>
    </div>
</div>
<!-- //header -->
<!-- header-bot -->
<div class="header-bot">
    <div class="container">
        <div class="col-md-3 header-left">
            <h1><a href="index.jsp"><img src="../img/logo.jpg"></a></h1>
        </div>
        <div class="col-md-6 header-middle">
            <form>
                <div class="search">
                    <input type="search" value="Procurar" onfocus="this.value = '';" onblur="if (this.value == '') {
                                this.value = 'Procurar';
                            }" required="">
                </div>
                <div class="section_room">
                    <select id="country" onchange="change_country(this.value)" class="frm-field required">
                        <option value="null">Todas as categorias</option>
                        <option value="null">Eletr�nicos</option>     
                    </select>
                </div>
                <div class="sear-sub">
                    <input type="submit" value=" ">
                </div>
                <div class="clearfix"></div>
            </form>
        </div>
        <div class="col-md-3 header-right footer-bottom">
            <ul>
                <li><a href="#" class="user" data-toggle="modal" data-target="#modalLogin"><i class="fa fa-user-circle-o fa-2x"></i><span>Login</span></a></li>
                <li><a href="#" class="fb"><i class="fa fa-facebook fa-2x"></i></a></li>
            </ul>
        </div>
        <div class="clearfix"></div>
    </div>
</div>
<!-- //header-bot -->
<!-- banner -->
<div class="ban-top">
    <div class="container">
        <div class="top_nav_left">
            <nav class="navbar navbar-default">
                <div class="container-fluid">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse menu--shylock" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav menu__list">
                            <li class="active menu__item ${pageContext.request.requestURI eq '/FAITEC/pages/index.jsp' ? ' menu__item--current' : ''}"><a class="menu__link" href="index.jsp">In�cio <span class="sr-only">(current)</span></a></li>
                            <li class=" menu__item ${pageContext.request.requestURI eq '/FAITEC/pages/eletronics.jsp' ? ' menu__item--current' : ''}"><a class="menu__link" href="electronics.jsp">Elet�nicos</a></li>
                            <li class=" menu__item ${pageContext.request.requestURI eq '/FAITEC/pages/codes.jsp' ? ' menu__item--current' : ''}"><a class="menu__link" href="codes.jsp">Short Codes</a></li>
                            <li class=" menu__item ${pageContext.request.requestURI eq '/FAITEC/pages/contact.jsp' ? ' menu__item--current' : ''}"><a class="menu__link" href="contact.jsp">Contato</a></li>
                        </ul>
                    </div>
                </div>
            </nav>	
        </div>
        <div class="top_nav_right">
            <div class="cart box_1">
                <a href="checkout.jsp">
                    <h3> 
                        <div class="total">
                            <i class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></i>
                            <span class="simpleCart_total"></span> (<span id="simpleCart_quantity" class="simpleCart_quantity"></span> items)
                        </div>
                    </h3>
                </a>
                <p><a href="javascript:;" class="simpleCart_empty">Empty Cart</a></p>
            </div>	
        </div>
        <div class="clearfix"></div>
    </div>
</div>
<!-- //banner-top -->