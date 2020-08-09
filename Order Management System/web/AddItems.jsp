<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

    </head>
    <body>
        <form action="ItemServlet" method="post">
            <table class="table table-striped table-bordered " style="min-width: 60%">
                <tr>
                    <td>Item Name</td>
                    <td><input type="text" class="form-control" required="" name="item_name"></td>
                </tr>
                <tr>
                    <td>Price</td>
                    <td><input type="text" class="form-control" required="" name="price"></td>
                </tr>
                <tr>
                    <td><input type="reset" class="btn btn-secondary" value="Reset"></td>
                    <td><input type="submit" class="btn btn-primary" value="Submit"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
