<%-- 
    Document   : Order Management System
    Created on : Apr 01, 2018, 19:25:24 PM
    Author     : Dharmesh
--%>

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
                String id = request.getParameter("id");
                con = DB.getConnection();
                st = con.createStatement();
                rs=st.executeQuery("select * from customer where id="+id+"");
                while(rs.next())
                {
                    out.print(rs.getString("name")+","+rs.getString("email")+","+rs.getString("mobile"));
                }
            } 
            catch (Exception e) 
            {
                out.println(e);
            }
%>

