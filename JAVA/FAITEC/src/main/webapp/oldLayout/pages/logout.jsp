<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@ include file="../includes/config.jsp" %>
        <%
            user.logout(request, response);
            response.sendRedirect("index.jsp");
        %>
    </head>
    <body>
        <h1>Logout</h1>
    </body>
</html>
