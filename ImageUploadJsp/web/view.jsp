<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Image Uploaded Successfully...!</h1>
        <b>View | <a href="index.jsp">Upload</a></b><br/><br/>

        <form action="viewImage.jsp" method="post">
            <input type="text" name="id" required="required" placeholder="enter image id.."/><br/><br/>
            <input type="submit"/>
        </form>
    </body>
</html>
