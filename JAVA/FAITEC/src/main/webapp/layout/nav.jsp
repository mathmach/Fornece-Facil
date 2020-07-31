<!-- header -->
<div class="header" id="home1">
    <div class="container">
        <div class="w3l_login">
            <% if (session.getAttribute("loggedin") == null) {%>
            <a href="#" data-toggle="modal" data-target="#modalLogin"><i class="glyphicon glyphicon-user" aria-hidden="true"></i></a>
            <div class="dropdown-content">
                <a href="#" data-toggle="modal" data-target="#modalLogin"><span>Login</span></a>
            </div>
            <%} else {%>
            <a href="user.jsp"><i class="glyphicon glyphicon-user" aria-hidden="true"></i></a>            
            <div class="dropdown-content">
                <a href="user.jsp"><span>Minha conta</span></a>
                <a href="logout.jsp"><span>Sair</span></a>
            </div>
            <%}%>
        </div>
        <div class="w3l_logo">
            <h1><a href="index.jsp">Fornece Fácil<span>Nunca foi tão simples.</span></a></h1>
        </div>
        <div class="search">
            <input class="search_box" type="checkbox" id="search_box">
            <label class="icon-search" for="search_box"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></label>
            <div class="search_form">
                <form action="#" method="post">
                    <input type="text" name="Search" placeholder="Procurar...">
                    <input type="submit" value="Enviar">
                </form>
            </div>
        </div>
        <div class="cart cart box_1"> 
            <form action="#" method="post" class="last"> 
                <input type="hidden" name="cmd" value="_cart" />
                <input type="hidden" name="display" value="1" />
                <button class="w3view-cart" type="submit" name="submit" value=""><i class="fa fa-cart-arrow-down" aria-hidden="true"></i></button>
            </form>   
        </div>  
    </div>
</div>
<!-- //header -->
<!-- navigation -->
<div class="navigation">
    <div class="container">
        <nav class="navbar navbar-default">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
                    <span class="sr-only">Toggle navigation</span>
                    <i class="fa fa-bars" aria-hidden="true"></i>
                </button>
            </div> 
            <div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
                <ul class="nav navbar-nav navbar-center">
                    <li><a id="nav-index" href="index.jsp">Início</a></li>	
                    <!-- Mega Menu -->
                    <li class="dropdown">
                        <a id="nav-products" href="products.jsp" class="dropdown-toggle" data-toggle="dropdown">Produtos <b class="caret"></b></a>
                        <ul class="dropdown-menu multi-column columns-3">
                            <div class="row">
                                <div class="col-sm-3">
                                    <ul class="multi-column-dropdown">
                                        <h6>Mobilidade</h6>
                                        <li><a href="products.jsp">Populares</a></li>
                                        <li><a href="products.jsp">Mp3 Players <span>New</span></a></li> 
                                        <li><a href="products.jsp">Tablets</a></li>
                                        <li><a href="products.jsp">Celulares<span>New</span></a></li>
                                    </ul>
                                </div>
                                <div class="col-sm-3">
                                    <ul class="multi-column-dropdown">
                                        <h6>Computadores</h6>
                                        <li><a href="products.jsp">Populares</a></li>
                                        <li><a href="products.jsp">Desktop</a></li>
                                        <li><a href="products.jsp">Notebook <span>New</span></a></li>
                                    </ul>
                                </div>
                                <div class="col-sm-2">
                                    <ul class="multi-column-dropdown">
                                        <h6>Escritório</h6>
                                        <li><a href="products.jsp">Populares</a></li>
                                        <li><a href="products.jsp">Televisores</a></li>
                                    </ul>
                                </div>
                                <div class="col-sm-4">
                                    <div class="w3ls_products_pos">
                                        <h4>30%<i>Off/-</i></h4>
                                        <img src="../img/1.jpg" alt=" " class="img-responsive" />
                                    </div>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </ul>
                    </li>
                    <li><a id="nav-about" href="about.jsp">Sobre nós</a></li> 
                    <li class="w3pages"><a id="nav-pages" href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Pages <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="icons.jsp">Web Icons</a></li>
                            <li><a href="codes.jsp">Short Codes</a></li>     
                        </ul>
                    </li>  
                    <li><a id="nav-mail" href="mail.jsp">Contato</a></li>
                </ul>
            </div>
        </nav>
    </div>
</div>
<!-- //navigation -->