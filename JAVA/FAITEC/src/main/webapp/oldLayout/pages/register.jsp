<%@page import="org.json.JSONObject"%>
<%@page import="java.util.UUID"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.EmptyStackException"%>
<%@page import="java.util.regex.Matcher"%>
<%@page import="java.util.regex.Pattern"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.security.MessageDigest"%>
<%@page import="javax.mail.internet.AddressException"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
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

                PreparedStatement pstmt;
                ResultSet rs;
                errList.clear();

                //very basic validation
                if (request.getParameter("username").length() < 3) {
                    errList.add("Nome de usuário é muito curto.");
                } else {
                    pstmt = db.prepareStatement("SELECT user_name FROM users WHERE user_name = ? ");
                    pstmt.setString(1, request.getParameter("username"));
                    rs = pstmt.executeQuery();
                    if (rs.next()) {
                        errList.add("Nome de usuário já está em uso.");
                    }
                }

                //email validation
                try {
                    String email = request.getParameter("email");
                    InternetAddress emailAddr = new InternetAddress(email);
                    emailAddr.validate();
                    Pattern VALID_EMAIL_ADDRESS_REGEX = Pattern.compile("^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,6}$", Pattern.CASE_INSENSITIVE);
                    Matcher matcher = VALID_EMAIL_ADDRESS_REGEX.matcher(email);
                    if (!matcher.find()) {
                        throw new EmptyStackException();
                    }

                    pstmt = db.prepareStatement("SELECT user_email FROM users WHERE user_email = ? ");
                    pstmt.setString(1, request.getParameter("email"));
                    rs = pstmt.executeQuery();
                    if (rs.next()) {
                        errList.add("Email já está em uso.");
                    }

                } catch (AddressException ex) {
                    errList.add("Use um endereço de email válido.");
                    //out.print("Use um endereço de email válido.");
                } catch (EmptyStackException e) {
                    errList.add("Use um endereço de email válido.");
                }

                if (!user.IsValidCNPJ(request.getParameter("cnpj"))) {
                    errList.add("CNPJ Inválido.");
                } else {
                    try {
                        JSONObject json = user.sendGet(request.getParameter("cnpj"));
                        String realName = (String) json.get("nome");
                        String phone = (String) json.get("telefone");
                        String company = (String) json.get("fantasia");
                        String zip = (String) json.get("cep");
                        String street = (String) json.get("logradouro");
                        String neighborhood = (String) json.get("bairro");
                        String number = (String) json.get("numero");
                        String city = (String) json.get("municipio");
                        String province = (String) json.get("uf");

                        pstmt = db.prepareStatement("SELECT company_cnpj FROM companies WHERE company_cnpj = ? ");
                        pstmt.setString(1, request.getParameter("cnpj"));
                        rs = pstmt.executeQuery();
                        if (!rs.next()) {
                            pstmt = db.prepareStatement("INSERT INTO companies (company_cnpj, company_phone, company_trading, company_name, company_address_province, company_address_city, company_address_street, company_address_neighborhood, company_address_number, company_address_zip) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
                            pstmt.setString(1, request.getParameter("cnpj"));
                            pstmt.setString(2, phone);
                            pstmt.setString(3, company);
                            pstmt.setString(4, realName);
                            pstmt.setString(5, province);
                            pstmt.setString(6, city);
                            pstmt.setString(7, street);
                            pstmt.setString(8, neighborhood);
                            pstmt.setString(9, number);
                            pstmt.setString(10, zip);
                            pstmt.executeUpdate();
                        }
                    } catch (Exception e) {
                        errList.add("Há algum erro com esse CNPJ, favor entrar em contato conosco.");
                    }
                }

                if (request.getParameter("password").length() < 3) {
                    errList.add("Senha é muito curta.");
                }

                if (request.getParameter("passwordConfirm").length() < 3) {
                    errList.add("Confirmação de senha é muito curta.");
                }

                if (!request.getParameter("password").equals(request.getParameter("passwordConfirm"))) {
                    errList.add("As senhas não correspondem.");
                }

                //if no errors have been created carry on
                if (errList.isEmpty()) {

                    //hash the password
                    String hashedpassword = user.password_hash(request.getParameter("password"));

                    //create the activasion code
                    MessageDigest md = MessageDigest.getInstance("MD5");
                    byte[] bytesOfMessage = UUID.randomUUID().toString().getBytes("UTF-8");
                    byte[] thedigest = md.digest(bytesOfMessage);
                    String activasion = thedigest.toString();

                    try {
                        //insert into database with a prepared statement                          
                        pstmt = db.prepareStatement("INSERT INTO users (user_cnpj, user_name, user_pass, user_email, user_is_provider, user_active) VALUES (?, ?, ?, ?, ?, ?)");
                        pstmt.setString(1, request.getParameter("cnpj"));
                        pstmt.setString(2, request.getParameter("username"));
                        pstmt.setString(3, hashedpassword);
                        pstmt.setString(4, request.getParameter("email"));
                        pstmt.setBoolean(5, request.getParameter("provider") != null ? true : false);
                        pstmt.setString(6, activasion);
                        pstmt.executeUpdate();
                        Mail mail = new Mail();

                        mail.sendMail("Matheus", request.getParameter("email"), "Confirmação de registro", "<p>Seu cadastro foi feito com sucesso.</p><p> Para ativar sua conta, por favor clique neste link: <a href ='http://localhost:8084/FAITEC/pages/activate.jsp?x=" + request.getParameter("cnpj") + "&y=" + activasion + "'>localhost:8084/FAITEC/pages/activate.php?x=" + request.getParameter("cnpj") + "&y=" + activasion + "</a></p><p> Nossa equipe agradece seu interesse em se juntar à nossa plataforma.</p>");

                        //redirect to index page
                        session.setAttribute("success", true);
                        response.sendRedirect("register.jsp");
                        return;
                        //else catch the exception and show the error.
                    } catch (Exception e) {
                        errList.add("Erro: " + e);
                    }
                }
            }
        %>
        <jsp:include page="../layout/header.jsp" flush="true">
            <jsp:param name="title" value="Projeto X | Register"/>
        </jsp:include>
    </head>
    <body>     
        <%@ include file="../layout/nav.jsp" %>
        <div class="container vertical-align">
            <div class="row">
                <div class="col-lg-6 col-lg-offset-3 col-md-8 col-md-offset-2 col-sm-8 col-sm-offset-2 col-xs-12">
                    <div class="login-panel">
                        <div class="panel-body">
                            <div class="login-grids">
                                <div class="login-center">
                                    <h3>Entre com a sua conta</h3>
                                    <form role="form" method="post" action="" autocomplete="off">
                                        <fieldset>                                    
                                            <div class="form-group">
                                                <div class="row">
                                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                        <div class="input-group">
                                                            <div class="onoffswitch">
                                                                <input type="checkbox" name="provider" id="provider" class="onoffswitch-checkbox" tabindex="1">
                                                                <label class="onoffswitch-label" for="provider">
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
                                                            <input type="text" name="username" id="username" class="form-control input-lg" placeholder="Usuário" value="<%if (!errList.isEmpty()) {
                                                                    out.print(request.getParameter("username"));
                                                                } %>" tabindex="2" autofocus required/>
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
                                                            <input type="text" name="cnpj" id="cnpj" class="form-control input-lg" placeholder="CNPJ" value="<%if (!errList.isEmpty()) {
                                                                    out.print(request.getParameter("cnpj"));
                                                                } %>" tabindex="3" autofocus required/>                                                    
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
                                                            <input type="email" name="email" id="email" class="form-control input-lg" placeholder="Email" value="<%if (!errList.isEmpty()) {
                                                                    out.print(request.getParameter("email"));
                                                                }%>" tabindex="4" required>
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
                                                            <input type="password" name="password" id="password" class="form-control input-lg" placeholder="Senha" tabindex="5" required/>
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
                                                            <input type="password" name="passwordConfirm" id="passwordConfirm" class="form-control input-lg" placeholder="Confirme a senha" tabindex="6" required>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="row">
                                                    <div class="col-lg-12 col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                        <button class="btn btn-lg btn-primary btn-block" name="submit" type="submit" value="Register" tabindex="7"><i class="fa fa-save"></i> Cadastrar</button>
                                                    </div>
                                                </div>		
                                            </div>
                                            <div class="form-group">
                                                <div class="row">
                                                    <div class="col-lg-8 col-md-9 col-sm-8 col-xs-12">
                                                        <div class="form-group">
                                                            <a href="login.jsp" tabindex="8">Já possui cadastro?</a>
                                                        </div>
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
        <%@ include file="../layout/footer.jsp" %>
        <%@ include file="../layout/modalLogin.jsp" %>  
        <%@ include file="../layout/wrapper.jsp" %>
    </body>
</html>
