<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String name=(String)session.getAttribute("name"); //get session value 
        %>
        <h1>welcome, <%=name%></h1>
        <a href="logout.jsp">Logout</a>
    </body>
</html>
