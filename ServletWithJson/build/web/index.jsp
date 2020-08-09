<%-- 
    Document   : index
    Created on : 30 Jul, 2018, 8:12:00 PM
    Author     : Dharmesh Mourya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Json Example</title>
    </head>
    <body>
        <form id="form">
            <input type="text" placeholder="Enter Name" name="name" id="name"><br><br>
            <input type="text" placeholder="Enter Address" name="address" id="address"><br><br>
            <input type="button" value="Submit" id="submit"><br>
        </form>
        <p id="result"></p>
    </body>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            $("#submit").click(function() {
                // get inputs
                var userName = $('#name').val();
                var userAdd = $('#address').val();
                if(userName==="" || userAdd===""){
                    alert("All Fields Are Mandatory.");
                }
                else
                {
                              //var jsonData = {
  				//name : name,
                                //address:address
   				//}; 
                    var myVar = JSON.stringify({name: userName, address: userAdd});
                    // or  var myJSON = JSON.stringify(jsonData);
                    alert(myVar);
                    $.ajax({
                        url: 'JsonServlet',
                        type: 'POST',
                        data: 'para=' + myVar,//sending json data
                        dataType: 'json',
                        //contentType: 'application/json',
                        //mimeType: 'application/json',
                    success: function(data) {
                        //just for printing purpose
                        var json = JSON.stringify(data);
                        alert(json + " " + data.name + " " + data.address);
                        $("#result").html(data.name + " " + data.address);
                    },
                    error: function(data) {
                        alert("fail");
                    }
                });
            }
           });
        });
    </script>
</html>
</html>
