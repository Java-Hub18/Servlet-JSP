<%@page import="java.util.TreeSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="db.DB"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%session.invalidate();%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Order</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        	<link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.1/css/select2.min.css" rel="stylesheet" />
		<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.1/js/select2.min.js"></script>
        <style>
            body
            {
                
            }
            tr td
            {
                padding-bottom:5px;  
            }
            td,th
            {
                padding:7px;   
            }
            .col-md-4
            {
                padding:2px;
            }
            #country
            {
                width:180px;
                
                
            }
        </style>
      
    </head>
    <body>
  
        <br><br>
        <div class="text-center"><h4>Order Management</h4></div>
        <br>

        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-4">
                    <form id="myDorm">
                        <table class="table table-bordered ">
                            <tr><td>id</td><td><input type="text" name="id" id="id"/></td></tr>
                            <tr><td>Item Name</td><td><input type="text" name="name" id="name" readonly=""/></td></tr>
<!--                            <tr><td>Search Item</td><td><select id="country"><option>Select Item</option></select></td></tr>-->
                            <tr><td>Price</td><td><input type="text" name="email" id="email" readonly=""/></td></tr>
                            <tr><td>Quantity</td><td><input type="text" name="mob" id="mob"/></td></tr>
                            <tr><td>Total</td><td><input type="text" name="tot" id="tot" readonly=""/></td></tr>
                            <tr><td><input type="reset" name="clean" id="clean" VALUE="Clean"  class="btn btn-info" /></td><td><input type="button" name="add" id="add" value="ADD"  onclick="addorder()" class="btn btn-primary"/></td></tr>
                        </table>

                    </form>
                </div>
                <div class="col-sm-3">
                    <%!
                        Connection con;
                        Statement st;
                        ResultSet rs;
                        String edata="";
                    %>
                     <table class="table table-bordered table-striped table-hover table-responsive" id="table_items">
                        <thead>
                            <tr>
                                <th>Item Id</th>
                                <th>Item Name</th>
                                <th>Price</th>
                                <th>Quantity</th>
                                <th style="display:none">Total</th>
                            </tr>
                        </thead>
                    <%
                        try
                        {
                            
                            con = DB.getConnection();
                            st = con.createStatement();
                            rs = st.executeQuery("select * from items");
                       
                            while (rs.next())
                            {
                               edata+=(char)34+""+rs.getString(2)+""+(char)34+",";
                               
                               %>
                              
                        <tbody>
                            <tr>
                                <td><%=rs.getInt(1)%></td>
                                <td><%=rs.getString(2)%></td>
                                <td><%=rs.getString(3)%></td>
                                <td><%=rs.getString(4)%></td>
                                <td style="display:none"><%=rs.getString(5)%></td>
                            </tr>
                            
                        </tbody>
                    
                               <%
    
                            }
                        } 
                        catch (Exception e) 
                        {
                            out.println(e);
                        }
                    %>
                   </table> 
                </div>
                   
                <div class="col-sm-5">
                    <table class="table table-bordered" id="od_table">
                        <thead>
                            <tr>
                                <th>SR</th>
                                <th>Item Name</th>
                                <th>Price</th>
                                <th>Quantity</th>
                                <th>Total</th>
                            </tr>
                        </thead>
                        <tbody>
                          
                        </tbody>
                        <tfoot>
                          <tr><td></td><td></td><td></td><td>Total</td><td id="total"></td></tr>
                        </tfoot>
                    </table>
                </div>
            </div>
        </div>

    </body>
</html>
<script type="text/javascript">
		$(document).ready(function()
                {
				var items =[<%=edata%>];
				$("#country").select2({
				  data: items
				});
		});
</script>
<script>
    
    $(document).ready(function() {
        $("#od_table tfoot").hide();
        $("#id").on("keyup", function() {
            var id = $("#id").val();

            if (id === "")
            {
                $("#error").html("<center><p style='color:red'>This is required field.</p>");
                $("#myDorm").trigger("reset");
                return false;
            }
            else
            {
                $("#error").html("");
                $.ajax({
                    url: "getOrderlValue.jsp",
                    data: {id: id},
                    method: "POST",
                    success: function(data)
                    {
                        //alert(data);
                        var fdata = $.trim(data);
                        var sp = fdata.split(",");
                        $("#name").val(sp[0]);
                        $("#email").val(sp[1]);
                        $("#mob").val(sp[2]);
                        $("#tot").val(sp[3]);
                    }

                });
            }
        });
    });
</script>
<script>
     $(document).ready(function(){
         $("#mob").on("keyup",function(){
             var price=parseFloat($("#email").val());
             var qty=parseFloat($("#mob").val());
             var res=price*qty;
             
             $("#tot").val(res);
         });
         
     });
</script>
<script>
    $(document).ready(function(){
   
    $("#table_items tr").click(function(){
        var data="";
        $(this).find("td").each(function(){
            //alert($(this).html());
            
            data+=$(this).html()+",";
             //alert("data"+data);
        });
        var sp1=data.split(",");
         $("#id").val(sp1[0]);
         $("#name").val(sp1[1]);
        $("#email").val(sp1[2]);
        $("#mob").val(sp1[3]);
        $("#tot").val(sp1[4]);
    });
    
});
</script>
<script>
    var iname=[];
    var iprice=[];
    var iqty=[];
    var itotal=[];
    var total=0;
    var count=0;  
    function addorder()
    {
    $(document).ready(function(){
   
  
    $("#add").click(function(){
       var id=$("#id").val();
       var name=$("#name").val(); //itemname
       var email=$("#email").val();//price
       var mob=$("#mob").val(); //qty
       var tot=$("#tot").val(); 
       
       if(id==="" || name==="" || email==="" || mob==="")
       {
           //alert("First Add the order.");
           return false;
       }
       else
       {
            iname.push(name);
       iprice.push(email);
       iqty.push(mob);
       itotal.push(tot);
       count++;
       var res=parseFloat(email)*parseFloat(mob);
       total+=res;
       var markup="<tr><td>"+count+"</td><td>"+name+"</td><td>"+email+"</td><td>"+mob+"</td><td>"+res+"</td></tr>";
       
       $("#od_table tbody").append(markup);
       
       $("#od_table tfoot").show();
       $("#total").html(total);
        $("#myDorm").trigger("reset");     
      }
       
    });

    });
    
    }  
$(document).on('keyup',function(evt) {
    if (evt.keyCode === 27)
    {
       $("#myDorm").trigger("reset");
       var rowCount = $("#od_table td").closest("tr").length;
       //alert(rowCount);
       if(rowCount===1)
       {
           alert("Cart is empty.First add the items in the cart.");
           return false;
       }
       else
       {
          window.location.href="addOrder.jsp?iname="+iname+"&iprice="+iprice+"&iqty="+iqty+"&tot="+itotal;
       } 
    }
}); 


$(document).on('keyup',function(evt) 
{
    if (evt.keyCode === 13)
    {
         $(document).ready(function()
         {

       var id=$("#id").val();
       var name=$("#name").val(); //itemname
       var email=$("#email").val();//price
       var mob=$("#mob").val(); //qty
       var tot=$("#tot").val(); 
       if(id==="" || name==="" || email==="" || mob==="")
       {
           alert("First Add the order");
           return false;
       }
       else
       {
       iname.push(name);
       iprice.push(email);
       iqty.push(mob);
       itotal.push(tot);    
       count++;
       var res=parseFloat(email)*parseFloat(mob);
       total+=res;
       var markup="<tr><td>"+count+"</td><td>"+name+"</td><td>"+email+"</td><td>"+mob+"</td><td>"+res+"</td></tr>";
       
       $("#od_table tbody").append(markup);
       
       $("#od_table tfoot").show();
       $("#total").html(total);
       $("#myDorm").trigger("reset");     
      }

    });
    }
});
</script>
    