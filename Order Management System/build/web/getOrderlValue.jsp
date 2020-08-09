<%@page import="db.DB"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!
            Connection con;
            Statement st;
            ResultSet rs;
%>

<%
            try 
            {
                int id =Integer.parseInt(request.getParameter("id"));
                con = DB.getConnection();
                st = con.createStatement();
                rs=st.executeQuery("select * from items where id="+id+"");
                while(rs.next())
                {
                    
                    out.print(rs.getString("cname")+","+rs.getString("price")+","+rs.getString("qty")+","+rs.getString("total"));
                }
            } 
            catch (Exception e) 
            {
                out.println(e);
            }
%>

