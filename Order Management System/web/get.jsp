<%-- 
    Document   : Order Management System
    Created on : Apr 01, 2018, 19:25:24 PM
    Author     : Dharmesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            out.println(request.getParameter("email"));
            out.println(request.getParameter("password"));
        %>
        
    </body>
</html>
