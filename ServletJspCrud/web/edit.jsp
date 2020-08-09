<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.java.DB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Edit Employee</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
        <%
        String sessionEmail = (String) session.getAttribute("email");
        if (sessionEmail != null) {
    %>
        <%!
             int id;
             String name,email,department,designation,password;
        %>
        <%
            try{
                id=Integer.parseInt(request.getParameter("id"));
                Connection con=DB.getConnection();
                Statement st=con.createStatement();
                ResultSet rs=st.executeQuery("select * from employee where id="+id+"");
                if(rs.next()){
                    name=rs.getString("name");
                    email=rs.getString("email");
                    password=rs.getString("password");
                    department=rs.getString("department");
                    designation=rs.getString("designation");
                }
            }catch(Exception e){
                out.println(e);
            }
        %>
    <center>
        <div class="container">
            <center><h2>Servlet Jsp Crud Operation</h2></center><hr>
            <form action="EmployeeServlet" method="post">
                <table class="table table-bordered" style="width: 60%;">
                    <thead>
                        <tr>
                            <th colspan="2"><center>Employee Update Form</center></th>
                    </tr>
                    </thead>
                    <tbody>
                        <input type="hidden" name="id" value="<%=id%>">
                        <tr>
                            <td>Employee Name:</td>
                            <td><input type="text" name="name" required="" value="<%=name%>" class="form-control"></td>
                        </tr>
                        <tr>
                            <td>Employee Email:</td>
                            <td><input type="text" name="email" required="" value="<%=email%>" class="form-control"></td>
                        </tr>
                        <tr>
                            <td>Employee Password:</td>
                            <td><input type="password" name="password" required="" value="<%=password%>" class="form-control"></td>
                        </tr>
                        <tr>
                            <td>Employee Department:</td>
                            <td><input type="text" name="department" required="" value="<%=department%>" class="form-control"></td>
                        </tr>
                        <tr>
                            <td>Employee Designation:</td>
                            <td><input type="text" name="designation" required="" value="<%=designation%>" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><input type="reset" value="Reset" class="btn btn-info"></td>
                            <td><input type="submit" name="update" value="Update" class="btn btn-primary"></td>
                        </tr>
                    </tbody>
                </table>
            </form>
        </div>
    </center>
                        <center><a href="employees.jsp">View Employee</a></center>
                        <%            } else {
        response.sendRedirect("index.jsp");
    }
%>
</body>
</html>

