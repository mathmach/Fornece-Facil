<!-- footer -->
<div class="footer">
    <div class="container">
        <div class="w3_footer_grids">
            <div class="col-md-3 w3_footer_grid">
                <h3>Contato</h3>
                <p>Abaixo você pode encontrar informações para contato.</p>
                <ul class="address">
                    <li><i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i>Av. Antônio de Cássia, 472  <span>Jardim Santo Antônio, Santa Rita do Sapucaí.</span></li>
                    <li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><a href="mailto:info@example.com">contato@fornecefacil.com.br</a></li>
                    <li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i>(35)99999-9999</li>
                </ul>
            </div>
            <div class="col-md-3 w3_footer_grid">
                <h3>Informação</h3>
                <ul class="info"> 
                    <li><a href="about.jsp">Sobre nós</a></li>
                    <li><a href="mail.jsp">Contato</a></li>
                    <li><a href="codes.jsp">Short Codes</a></li>
                    <li><a href="faq.jsp">FAQ</a></li>
                    <li><a href="products.jsp">Produtos especiais</a></li>
                </ul>
            </div>
            <div class="col-md-3 w3_footer_grid">
                <h3>Categorias</h3>
                <ul class="info"> 
                    <li><a href="products.jsp">Celulares</a></li>
                    <li><a href="products.jsp">Notebooks</a></li>
                    <li><a href="products.jsp">Televisores</a></li>
                </ul>
            </div>
            <div class="col-md-3 w3_footer_grid">
                <h3>Perfil</h3>
                <ul class="info"> 
                    <% if (session.getAttribute("loggedin") != null) {%>
                    <li><a id="nav-logout" href="user.jsp">Minha conta</a></li>
                    <%} else {%>
                    <li><a href="index.jsp">Início</a></li>
                    <%}%>
                    <li><a href="products.jsp">Ofertas do dia</a></li>
                </ul>
                <h4>Siga-nos</h4>
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
        </div>
    </div>
    <div class="footer-copy">
        <div class="footer-copy1">
            <div class="footer-copy-pos">
                <a href="#home1" class="scroll"><img src="../img/arrow.png" alt=" " class="img-responsive" /></a>
            </div>
        </div>
        <div class="container">
            <p>&copy; 2017 Electronic Store. Todos os direitos reservados | Design por <a href="http://w3layouts.com/">W3layouts</a>. Editado por Matheus Machado Guerzoni Duarte</p>
        </div>
    </div>
</div>
<!-- //footer --> 