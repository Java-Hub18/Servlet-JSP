<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Email With Attachments</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body><br><br><br>   
            <div class="container">
                <div class="row">
                    <center><h1>Email Sending With Attachments in Servlet java.</h1></center>
                    <div class="contact-form col-md-6 text-center" >
                        <%
                            String msg = (String) session.getAttribute("msg");
                            if (msg != null) {
                                out.println("<center><div style='color:green;'>" + msg + "</div></center>");
                                session.removeAttribute("msg");
                            } else {
                            }
                        %><center>
                        <form id="form" enctype="multipart/form-data" action="EmailAttachment" method="post" accept-charset="utf-8">
                            <div class="form-group">
                                <input type="text" required="" placeholder="Your Name" class="form-control" name="name" id="name">
                            </div>
                            <div class="form-group">
                                <input type="number" required="" placeholder="Mobile Number" class="form-control" name="phone" id="phone">
                            </div>

                            <div class="form-group">
                                <input type="text" required="" placeholder="Post" class="form-control" name="post" id="post">
                            </div>

                            <div class="form-group">
                                <input type="email" required="" placeholder="Your Email" class="form-control" name="email" id="email">
                            </div>
                            <div class="form-group">
                                <textarea rows="6" required="" placeholder="About Experience..." class="form-control" name="message" id="message"></textarea>
                            </div>
                            <div class="form-group">
                                <input type="file"  placeholder="Subject" class="form-control" name="resume" id="resume">
                            </div>

                            <div id="cf-submit">
                                <input type="submit" id="submit" class="btn btn-info" value="Submit">
                            </div>

                        </form></center>
                        </div>
        
        <!-- ./End Contact Form -->

                </div> <!-- end row -->
            </div> <!-- end container -->
        
    </body>
</html>
