<%-- 
    Document   : Order Management System
    Created on : Apr 01, 2018, 19:25:24 PM
    Author     : Dharmesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    </head>
    <body>
        <form id="myDorm">
            <table>
                <tr><td>id</td><td><input type="text" name="id" id="id"/></td></tr>
                <tr><td>name</td><td><input type="text" name="name" id="name"/></td></tr>
                 <tr><td>email</td><td><input type="text" name="email" id="email"/></td></tr>
                <tr><td>mobile</td><td><input type="text" name="mob" id="mob"/></td></tr>
            </table>
           
        </form>
         <div id="error"></div>
         
    </body>
</html>
<script>
    $(document).ready(function(){
    $("#id").on("keyup",function(){
      var id=$("#id").val();
     
      if(id==="")
      {
          $("#error").html("<center><p style='color:red'>This is required field.</p>");
          $("#myDorm").trigger("reset");
          return false;
      }
      else
      {
          $("#error").html("");
          $.ajax({
              url:"getAutofillValue.jsp",
              data:{id:id},
              method:"POST",
              success:function(data)
              {
                var fdata=$.trim(data);
                var sp=fdata.split(",");
                $("#name").val(sp[0]);
                $("#email").val(sp[1]);
                $("#mob").val(sp[2]);
              }
              
          });
      }
    });
});
</script>
