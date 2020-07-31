<%@page import="java.util.UUID"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Random"%>
<%@page import="java.security.MessageDigest"%>
<%@page import="javax.mail.internet.AddressException"%>
<%@page import="java.util.EmptyStackException"%>
<%@page import="java.util.regex.Matcher"%>
<%@page import="java.util.regex.Pattern"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<!DOCTYPE html>
<html>
    <head>
        <%@ include file="../includes/config.jsp" %>
        <%! List<String> errList = new ArrayList<>();%>
        <%  //if logged in redirect to members page
            if (user.IsLoggedIn(request, response)) {
                out.print(session.getAttribute("user_name"));
                /*response.sendRedirect("index.jsp");
                return;*/
            }

            PreparedStatement pstmt;
            ResultSet rs;

            //if form has been submitted process it
            if (request.getParameter("submit") != null) {
                errList.clear();

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
                    if (!rs.next()) {
                        errList.add("Email não está cadastrado.");
                    }
                } catch (AddressException ex) {
                    errList.add("Use um endereço de email válido.");
                } catch (EmptyStackException e) {
                    errList.add("Use um endereço de email válido.");
                }

                //if no errors have been created carry on
                if (errList.isEmpty()) {

                    MessageDigest md = MessageDigest.getInstance("MD5");
                    byte[] bytesOfMessage = UUID.randomUUID().toString().getBytes("UTF-8");
                    byte[] thedigest = md.digest(bytesOfMessage);
                    String token = thedigest.toString();

                    try {

                        pstmt = db.prepareStatement("UPDATE users SET resetToken = ?, resetComplete='No' WHERE user_email = ?");
                        pstmt.setString(1, token);
                        pstmt.setString(2, request.getParameter("email"));
                        pstmt.executeUpdate();

                        Mail mail = new Mail();

                        mail.sendMail("Matheus", request.getParameter("email"), "Reset de Senha", "<p>Alguém solicitou a troca de senha para o seu usuário.</p><p> Se isso for um erro, apenas ignore essa mensagem que nada acontecerá</p><p> Para resetar sua senha, visite o link: <a href ='http://localhost:8084/FAITEC/pages/resetPassword.jsp?key=" + token + "'>localhost:8084/FAITEC/pages/resetPassword.jsp?key=" + token + "</a></p>");

                        //redirect to index page  
                        response.sendRedirect("index.jsp?action=reset");
                        return;

                        //else catch the exception and show the error.
                    } catch (SQLException e) {
                        errList.add(e.toString());
                    } catch (Exception e) {
                        errList.add(e.toString());
                    }

                }
            }
        %>
        <jsp:include page="../layout/header.jsp" flush="true">
            <jsp:param name="title" value="Projeto X | Reset"/>
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
                                    <h3>Entre com o seu email</h3>
                                    <form role="form" method="post" action="" autocomplete="off">
                                        <fieldset>
                                            <div class="form-group">
                                                <div class="row">
                                                    <div class="col-md-12 col-sm-12 col-xs-12">
                                                        <div class="input-group">
                                                            <span class="input-group-addon">
                                                                <i class="fa fa-user fa-fw"></i>
                                                            </span>
                                                            <input type="email" name="email" id="email" class="form-control input-lg" placeholder="Email" tabindex="2" required/>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="row">
                                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                        <button class="btn btn-lg btn-primary btn-block" name="submit" type="submit" value="Enviar Link de Reset" tabindex="3">Enviar <i class="fa fa-envelope"></i></button>
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
</html>
