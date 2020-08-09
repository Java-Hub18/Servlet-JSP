
<%@page import="java.util.ArrayList"%>
<%@page import="db.DB"%>
<%@page import="java.sql.*,java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <br><br>
        <%!
             Connection con,conn;
             Statement st,st1;
             ResultSet rs;
        %>
        <%
             String [] iname=request.getParameterValues("iname");
             String [] iprice=request.getParameterValues("iprice");
             String [] iqty=request.getParameterValues("iqty");
             String [] itot=request.getParameterValues("tot");
             
             session.setAttribute("iname",iname);
             session.setAttribute("iprice",iprice);
             session.setAttribute("iqty",iqty);
             session.setAttribute("itot",itot);
             //session.setAttribute("bill_no",bill_no);
             String iname1="";
             String iprice1="";
             String iqty1="";
             String itot1="";
             
             System.out.println(iname.length);
             for(int a=0;a<iname.length;a++)
             {
                  iname1+=iname[a];
                  System.out.println(iname1);
             }
             for(int b=0;b<iprice.length;b++)
             {
                  iprice1+=iprice[b];
                  System.out.println(iprice1);
             }
             for(int c=0;c<iqty.length;c++)
             {
                  iqty1+=iqty[c];
                  System.out.println(iqty1);
             }
             for(int d=0;d<itot.length;d++)
             {
                  itot1+=itot[d];
                  System.out.println(itot1);
             }
             
            String [] in=iname1.split(",");
            String [] ip=iprice1.split(",");
            String [] iq=iqty1.split(",");
            String [] it=itot1.split(",");
             
            System.out.print(in.length+""+ip.length+""+iq.length+""+it.length);
            
            //ArrayList s1=new ArrayList();
            //ArrayList s2=new ArrayList();
            //ArrayList s3=new ArrayList();
            //ArrayList s4=new ArrayList();
            int bill_no=0;
            conn = DB.getConnection();
            st1 = conn.createStatement();
            rs=st1.executeQuery("select * from orders order by id desc limit 0,1");
            if(rs.next())
            {
                bill_no=rs.getInt(2)+1;
                session.setAttribute("bill_no",bill_no);
            }
            else{
                bill_no=1;
                session.setAttribute("bill_no",bill_no);
            }
            con = DB.getConnection();
            st = con.createStatement();
            for(int i=0,j=0,k=0,l=0;i<in.length&&j<ip.length&&k<iq.length&&l<it.length;i++,j++,k++,l++)
            {
                 st.executeUpdate("INSERT INTO `orders`(`bill_no`, `item`, `price`, `qty`, `total`) VALUES ("+bill_no+",'"+in[i]+"',"+ip[j]+","+iq[k]+","+it[l]+")");
            } 
            response.sendRedirect("bill.jsp");
            %>
            
            

    </body>
</html>
