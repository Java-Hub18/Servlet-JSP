<%--
    Document   : index
    Created on : 15 Feb, 2018, 10:56:20 AM
    Author     : Dharmesh Mourya
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.java.DB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    </head>
    <body>
        <form>
            <table>
                <tr>
                    <td id="q">Country</td>
                    <td>
                        <select name="id" id="id">
                            <option disabled="" selected="">Select Country</option>
                            <%
                                Connection con = DB.getConnection();
                                Statement st = con.createStatement();
                                ResultSet rs = st.executeQuery("select * from countries");
                                while (rs.next()) {
                            %>
                            <option value="<%=rs.getString("id")%>"><%=rs.getString("country")%></option>
                            <%
                                }
                            %>
                        </select>
                    </td>
                </tr>

                <tr><td id="y">State</td><td id="msg"><select><option>Select State</option></select></td></tr>
                <tr><td id="city">City</td><td id="suc_msg"><select><option>Select State</option></select></td></tr>
            </table>

        </form>
        <div id="error"></div>


    </body>
</html>
<script>
    $(document).ready(function() {
        $("#id").on("change", function() {
            var id = $("#id").val();

            if (id === "")
            {
                $("#error").html("required");
                return false;
            }
            else
            {
                $("#error").html("");
                $.ajax({
                    url: "fetch1.jsp",
                    data: {id: id},
                    method: "POST",
                    success: function(data)
                    {
                        $("#msg").html(data);
                        //$("#q").css("color", "red") ;
                        //$("#y").css("color", "blue") ;
                        //$("#c").css("color", "green") ;
                    }

                });
            }
        });
    });
</script>