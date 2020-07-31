<!-- login -->
<div class="modal fade" id="modalLogin" tabindex="-1" role="dialog" aria-labelledby="Login">
    <div class="modal-dialog" role="document">
        <div class="modal-content modal-info">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
            </div>
            <div class="modal-body modal-spa">
                <div class="login-grids">
                    <div class="login">
                        <!--<div class="login-bottom">
                            <h3>Sign up for free</h3>
                            <form>
                                <div class="sign-up">
                                    <h4>Email :</h4>
                                    <input type="text" value="Type here" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                        this.value = 'Type here';
                                                    }" required="">	
                                </div>
                                <div class="sign-up">
                                    <h4>Password :</h4>
                                    <input type="password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                        this.value = 'Password';
                                                    }" required="">

                                </div>
                                <div class="sign-up">
                                    <h4>Re-type Password :</h4>
                                    <input type="password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                        this.value = 'Password';
                                                    }" required="">

                                </div>
                                <div class="sign-up">
                                    <input type="submit" value="REGISTER NOW" >
                                </div>

                            </form>
                        </div>-->
                        <div class="login-center">
                            <h3>Entre com a sua conta</h3>
                            <form role="form" method="post" action="" autocomplete="off">
                                <fieldset>
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-md-12 col-sm-12 col-xs-12">
                                                <div class="input-group">
                                                    <span class="input-group-addon">
                                                        <i class="fa fa-user fa-fw"></i>
                                                    </span>
                                                    <input type="text" name="username" id="username" class="form-control input-lg" placeholder="Usuário" value="" tabindex="1" autofocus required/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-md-12 col-sm-12 col-xs-12">
                                                <div class="input-group">
                                                    <span class="input-group-addon">
                                                        <i class="fa fa-key fa-fw"></i>
                                                    </span>
                                                    <input type="password" name="password" id="password" class="form-control input-lg" placeholder="Senha" tabindex="2" required/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                <div class="checkbox icheck  pull-right">
                                                    <label><input type="checkbox" name="remember" tabindex="3"> Mantenha-me conectado</label>
                                                </div>
                                            </div>
                                        </div>		
                                    </div>
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                <button class="btn btn-lg btn-primary btn-block" name="submit" type="submit" value="Login" tabindex="4">Login <i class="fa fa-sign-in"></i></button>
                                            </div>
                                        </div>		
                                    </div>
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-center">
                                                <a href="register.jsp" tabindex="5">Cadastre-se</a> ou <a href="reset.jsp" tabindex="5">Recupere sua senha</a>
                                            </div>
                                        </div>		
                                    </div>
                                </fieldset>
                            </form>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <p>Ao entrar você concorda com os nossos <a href="#">Termos de Uso</a> e <a href="#">Política de Privacidade</a></p>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- //login --> 