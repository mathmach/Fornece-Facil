<!-- header modal -->
<div class="modal fade" id="modalLogin" tabindex="-1" role="dialog" aria-labelledby="modalLogin"
     aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">Don't Wait, Login now!</h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 modal_body_left">
                        <div class="row text-center sign-with">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <h3>Logar</h3>
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="facts">
                                    <div class="register">
                                        <form role="form" method="post" action="" autocomplete="off">
                                            <fieldset>
                                                <div class="form-group">
                                                    <div class="row">
                                                        <div class="col-md-12 col-sm-12 col-xs-12">
                                                            <div class="input-group">
                                                                <span class="input-group-addon">
                                                                    <i class="fa fa-user fa-fw"></i>
                                                                </span>
                                                                <input type="text" name="username" id="username" class="form-control input-lg" placeholder="Usuário" value="<%if (request.getParameter("btnSubmit") != null && request.getParameter("btnSubmit").equals("Login") && request.getParameter("username") != null && !errList.isEmpty()) {
                                                                        out.print(request.getParameter("username"));
                                                                    }%>" tabindex="1" autofocus required/>
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
                                                            <button class="btn btn-lg btn-primary btn-block" name="btnSubmit" type="submit" value="Login" tabindex="4">Login <i class="fa fa-sign-in"></i></button>
                                                        </div>
                                                    </div>		
                                                </div>
                                            </fieldset>
                                        </form>
                                    </div>
                                </div> 	 		        					            	      
                            </div>	
                        </div>
                        <div id="OR" class="hidden-xs">OR</div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 modal_body_right">
                        <div class="row text-center sign-with">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <h3>Registrar-se</h3>
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="facts">
                                    <div class="register">
                                        <form role="form" method="post" action="" autocomplete="off">
                                            <fieldset>                                    
                                                <div class="form-group">
                                                    <div class="row">
                                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                            <div class="input-group">
                                                                <div class="onoffswitch">
                                                                    <input type="checkbox" name="provider" id="provider" class="onoffswitch-checkbox">
                                                                    <label class="onoffswitch-label" for="provider" tabindex="5">
                                                                        <span class="onoffswitch-inner"></span>
                                                                        <span class="onoffswitch-switch"></span>
                                                                    </label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="row">
                                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                            <div class="input-group">
                                                                <span class="input-group-addon">
                                                                    <i class="fa fa-user fa-fw"></i>
                                                                </span>
                                                                <input type="text" name="username" id="username" class="form-control input-lg" placeholder="Usuário" value="<%if (request.getParameter("btnSubmit") != null && request.getParameter("btnSubmit").equals("Register") && request.getParameter("username") != null && !errList.isEmpty()) {
                                                                        out.print(request.getParameter("username"));
                                                                    } %>" tabindex="6" autofocus required/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="row">
                                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                            <div class="input-group">
                                                                <span class="input-group-addon">
                                                                    <i class="fa fa-id-card fa-fw"></i>
                                                                </span>
                                                                <input type="text" name="cnpj" id="cnpj" class="form-control input-lg" placeholder="CNPJ" value="<%if (request.getParameter("btnSubmit") != null && request.getParameter("btnSubmit").equals("Register") && request.getParameter("cnpj") != null && !errList.isEmpty()) {
                                                                        out.print(request.getParameter("cnpj"));
                                                                    } %>" tabindex="7" autofocus required/>                                                    
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="row">
                                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                            <div class="input-group">
                                                                <span class="input-group-addon">
                                                                    <i class="fa fa-envelope fa-fw"></i>
                                                                </span>
                                                                <input type="email" name="email" id="email" class="form-control input-lg" placeholder="Email" value="<%if (request.getParameter("btnSubmit") != null && request.getParameter("btnSubmit").equals("Register") && request.getParameter("email") != null && !errList.isEmpty()) {
                                                                        out.print(request.getParameter("email"));
                                                                    }%>" tabindex="8" required>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="row">
                                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                            <div class="input-group">
                                                                <span class="input-group-addon">
                                                                    <i class="fa fa-key fa-fw"></i>
                                                                </span>
                                                                <input type="password" name="password" id="password" class="form-control input-lg" placeholder="Senha" tabindex="9" required/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="row">
                                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                            <div class="input-group">
                                                                <span class="input-group-addon">
                                                                    <i class="fa fa-key fa-fw"></i>
                                                                </span>
                                                                <input type="password" name="passwordConfirm" id="passwordConfirm" class="form-control input-lg" placeholder="Confirme a senha" tabindex="10" required>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="row">
                                                        <div class="col-lg-12 col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                            <button class="btn btn-lg btn-primary btn-block" name="btnSubmit" type="submit" value="Register" tabindex="11"><i class="fa fa-save"></i> Cadastrar</button>
                                                        </div>
                                                    </div>		
                                                </div>
                                            </fieldset>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div> 
<!-- header modal -->