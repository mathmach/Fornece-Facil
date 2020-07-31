<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<!DOCTYPE html>
<html lang="pt-BR">
    <head>
        <%@ include file="../includes/config.jsp" %>
        <%! List<String> errList = new ArrayList<>();
            List<String> stop = new ArrayList<>();
        %>
        <%  if (user.IsLoggedIn(request, response)) {
                out.print(session.getAttribute("user_name"));
                /*response.sendRedirect("index.jsp");
                return;*/
            }

            PreparedStatement pstmt;
            ResultSet rs;
            pstmt = db.prepareStatement("SELECT user_resetToken, user_resetComplete FROM users WHERE user_resetToken = ?");
            pstmt.setString(1, request.getParameter("key"));
            rs = pstmt.executeQuery();
            if (rs.next()) {
                stop.clear();
                //if no token from db then kill the page
                if (rs.getString("resetToken").isEmpty()) {
                    stop.add("Invalid token provided, please use the link provided in the reset email.");
                } else if (rs.getString("resetComplete") == "Yes") {
                    stop.add("Your password has already been changed!");
                }
            } else {
                stop.add("Invalid token provided, please use the link provided in the reset email.");
            }

            if (request.getParameter("submit") != null) {
                errList.clear();

                //basic validation
                if (request.getParameter("password").length() < 3) {
                    errList.add("Password is too short.");
                }
                if (request.getParameter("passwordConfirm").length() < 3) {
                    errList.add("Confirm password is too short.");
                }
                if (!request.getParameter("password").equals(request.getParameter("passwordConfirm"))) {
                    errList.add("As senhas não correspondem.");
                }

                //if no errors have been created carry on
                if (errList.isEmpty()) {

                    //hash the password
                    String hashedpassword = user.password_hash(request.getParameter("password"));

                    try {

                        pstmt = db.prepareStatement("UPDATE users SET user_pass = ?, resetComplete = 'Yes'  WHERE resetToken = ?");
                        pstmt.setString(1, hashedpassword);
                        pstmt.setString(2, rs.getString("resetToken"));
                        pstmt.executeUpdate();

                        //redirect to index page  
                        response.sendRedirect("login.jsp?action=resetAccount");
                        return;

                        //else catch the exception and show the error.
                    } catch (SQLException e) {
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
                                    <%  if (!stop.isEmpty()) {
                                            out.print("<div class='alert alert-danger'><i class='glyphicon glyphicon-warning-sign'></i> &nbsp; " + stop.get(0) + "</div>");
                                        } else { %>
                                    <form role="form" method="post" action="" autocomplete="off">
                                        <fieldset>
                                            <div class="form-group">
                                                <div class="row">
                                                    <div class="col-md-12 col-sm-12 col-xs-12">
                                                        <div class="input-group">
                                                            <span class="input-group-addon">
                                                                <i class="fa fa-key fa-fw"></i>
                                                            </span>
                                                            <input type="password" name="password" id="password" class="form-control input-lg" placeholder="Senha" tabindex="1" required/>
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
                                                            <input type="password" name="passwordConfirm" id="passwordConfirm" class="form-control input-lg" placeholder="Confirmar Senha" tabindex="2" required/>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="row">
                                                    <div class="col-lg-4 col-md-3 col-sm-4 col-xs-12 pull-right">
                                                        <button class="btn btn-sm btn-primary btn-block" name="submit" type="submit" value="Mudar Senha" tabindex="3"><i class="fa fa-sign-in fa-2x"></i></button>
                                                    </div>
                                                </div>		
                                            </div>
                                        </fieldset>
                                    </form>
                                    <%}%>
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
