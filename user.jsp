<%-- 
    Document   : user
    Created on : Feb 16, 2022, 8:12:09 AM
    Author     : ADMIN
--%>

<%@page import="sample.user.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>USER Page</title>
    </head>
    <body>
        <h1>Your information:</h1>
        <% 
           UserDTO loginUser = (UserDTO)session.getAttribute("LOGIN_USER");
           if(loginUser == null) {
               loginUser = new UserDTO();
           }
        %>
        User ID: <%= loginUser.getUserID() %></br>
        Full Name: <%= loginUser.getFullName() %></br>
        Role ID: <%= loginUser.getRoleID() %></br>
        Password: <%= "***" %></br>
    </body>
</html>
