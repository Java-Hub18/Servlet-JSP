<%--
    Document   : fetch2
    Created on : 7 Mar, 2018, 10:27:52 PM
    Author     : Dharmesh Mourya
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.java.DB"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <select name="city" id="city">
            <option disabled="">Select State</option>
            <%

                int id = Integer.parseInt(request.getParameter("state"));
                Connection con = DB.getConnection();
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery("select * from cities where state_id='" + id + "'");
                while (rs.next()) {
            %>
            <option><%=rs.getString("city")%></option>
            <%
                }
            %>
        </select>    </body>
</html>
