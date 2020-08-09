<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Employee Login</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
    <center>
        <div class="container">
            <center><h2>Servlet Jsp Crud Operation</h2></center><hr>
            <%
                String error=(String)session.getAttribute("error");
                if(error==null){
                    
                }else{
                    out.println("<center><div class='alert alert-danger' style='width:55%;'>"+error+"</div></center>");
                    session.removeAttribute("error");
                }
            %>
            <form action="EmployeeServlet" method="post">
                <table class="table table-bordered" style="width: 60%;">
                    <thead>
                        <tr>
                            <th colspan="2"><center>Employee Login Form</center></th>
                    </tr>
                    </thead>
                    <tbody>
                        
                        <tr>
                            <td>Employee Email:</td>
                            <td><input type="text" name="email" required="" placeholder="Employee Email" class="form-control"></td>
                        </tr>
                        
                        <tr>
                            <td>Employee Password:</td>
                            <td><input type="password" name="password" required="" placeholder="Employee Password" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><input type="reset" value="Reset" class="btn btn-info"></td>
                            <td><input type="submit" name="login" value="Login" class="btn btn-primary"></td>
                        </tr>
                    </tbody>
                </table>
                <center><a href="index.jsp">Register</a></center>
            </form>
        </div>
    </center>
</body>
</html>
