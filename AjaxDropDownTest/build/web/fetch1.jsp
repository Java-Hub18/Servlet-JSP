<%--
    Document   : save
    Created on : 15 Feb, 2018, 11:15:40 AM
    Author     : user2
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.java.DB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div id="msg"></div>

        <select name="state" id="state">
            <option disabled="">Select State</option>
            <%

                int id = Integer.parseInt(request.getParameter("id"));
                Connection con = DB.getConnection();
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery("select * from states where country_id='" + id + "'");
                while (rs.next()) {
            %>
            <option value="<%=rs.getString("id")%>"><%=rs.getString("state")%></option>
            <%
                }
            %>
        </select>

    </body>
</html>
<script>
    $(document).ready(function() {
        $("#state").on("change", function() {
            var state = $("#state").val();
            if (state === "")
            {
                $("#msg").html("this is a required.");
                return false;
            }
            else
            {
                $("#msg").html("");
                $.ajax({
                    url: "fetch2.jsp",
                    method: "POST",
                    data: {state: state},
                    success: function(data)
                    {
                        $("#suc_msg").html(data);
                    }
                });
            }

        });
    });
</script>