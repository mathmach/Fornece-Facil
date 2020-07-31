<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="../include/config.jsp" %>
<%  //collect values from the url
    String user_id = request.getParameter("x");
    String active = request.getParameter("y");

    if (user_id != null && active != null) {
        //if id is number and the active token is not empty carry on
        if (user_id.matches("[a-zA-Z0-9-]+") && !active.isEmpty()) {
            PreparedStatement pstmt;
            //update users record set the active column to Yes where the user_id and active value match the ones provided in the array
            pstmt = db.prepareStatement("UPDATE users SET active = 'Yes' WHERE user_id = ? AND active = ?");
            pstmt.setString(1, user_id);
            pstmt.setString(2, active);
            //if the row was updated redirect the user
            if (pstmt.executeUpdate() == 1) {
                //redirect to login page
                response.sendRedirect("index.jsp?action=active");
                return;
            } else {
                response.sendRedirect("index.jsp?action=activeFail");
                return;
            }
        } else {
            out.print("Você não deveria estar vendo isso...");
        }
    } else {
        out.print("Você não deveria estar vendo isso...");
    }

%>