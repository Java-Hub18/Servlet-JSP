<%@page import="com.java.DB"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Employees</title>  
        <meta name="viewport" content="width=device-width, initial-scale=1">
<link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
        <link rel="stylesheet" href="http://cdn.datatables.net/1.10.2/css/jquery.dataTables.min.css"></style>
    <script type="text/javascript" src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

    <script>
        $(document).ready(function() {
            $('#myTable').dataTable();
        });
    </script>      
    </head>
    <body>
        <%
            String email=(String)session.getAttribute("email");
        if(email!=null){
        %>
    <center><h2>Employee List&nbsp;&nbsp;[Welcome,<%=email%>]</h2></center><hr>
        <table id="myTable" class="table table-striped" >
    <thead>
        <tr>
            <th>ID</th><th>Name</th><th>Email</th><th>Department</th><th>Designation</th><th>Date Added</th><th>Action</th>
        </tr>
    </thead>
    <tbody>
    <%
        try {
            String deleted = (String) session.getAttribute("deleted");
            if (deleted != null) {
                session.removeAttribute("deleted");
                out.println("<center><div class='alert alert-danger'>"+deleted+"</div></center>");
            } else {
            }
            String updated = (String) session.getAttribute("updated");
            if (updated != null) {
                session.removeAttribute("updated");
                out.println("<center><div class='alert alert-success'>"+updated+"</div></center>");
            } else {
            }
            
            Connection con = DB.getConnection();
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from employee");
            while (rs.next()) {
        %>

        <tr><td><%=rs.getInt(1)%></td><td><%=rs.getString(2)%></td><td><%=rs.getString(3)%></td><td><%=rs.getString(5)%></td><td><%=rs.getString(6)%></td><td><%=rs.getString(7)%></td><td><a href="edit.jsp?id=<%=rs.getInt("id")%>">Edit</a>&nbsp;|&nbsp;<a href="EmployeeServlet?delete='delete'&&id=<%=rs.getInt("id")%>">Delete</a></td></tr>
        <%
                }
            } catch (Exception e) {
                out.println(e);
            }
        %>
    </tbody>
</table>
<center><a href="logout.jsp">Logout</a></center>
<%
        }else{
            response.sendRedirect("index.jsp");
        }
%>
    </body>
</html>
