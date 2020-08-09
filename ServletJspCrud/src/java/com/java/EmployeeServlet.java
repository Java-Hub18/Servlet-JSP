
package com.java;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "EmployeeServlet", urlPatterns = {"/EmployeeServlet"})
public class EmployeeServlet extends HttpServlet {
PrintWriter out;
HttpSession session;
int status=0;
Connection con;
Statement st;
ResultSet rs;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try{
            out=response.getWriter();
            session=request.getSession();
            if(request.getParameter("register")!=null)//request comming from index.jsp page, where register is button name.
            {
                System.out.println("In Registration");
                /* Getting The Value From TextBox  */
                String name=request.getParameter("name");
                String email=request.getParameter("email");
                String password=request.getParameter("password");
                String department=request.getParameter("department");
                String designation=request.getParameter("designation");
                
                SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");//storing today date
                String todayDate=sdf.format(new Date());
                
                System.out.println(name+" "+email+" "+password+" "+department+" "+designation+" "+todayDate);
                /* JDBC Connection Code  */
                con=DB.getConnection();
                st=con.createStatement();
                String sql="insert into employee(name,email,password,department,designation,added_date) values('"+name+"','"+email+"','"+password+"','"+department+"','"+designation+"','"+todayDate+"')";
                status=st.executeUpdate(sql);
                if(status>0)
                {
                    session.setAttribute("email",email);
                    response.sendRedirect("employees.jsp");
                }
                else
                {
                    out.println("Oops! Something went wrong...");
                }
            }
            else if(request.getParameter("login")!=null)
            {
                System.out.println("In Login");
                /* Getting The Value From TextBox  */
                String email=request.getParameter("email");
                String password=request.getParameter("password");
                System.out.println(email+" "+password);
                con=DB.getConnection();
                st=con.createStatement();
                String sql="select * from employee where email='"+email+"' and password='"+password+"'";
                rs=st.executeQuery(sql);
                if(rs.next()){
                    session.setAttribute("email",email);   
                    response.sendRedirect("employees.jsp");
                }
                else
                {
                    session.setAttribute("error", "Invalid Email and Password...");
                    response.sendRedirect("login.jsp");
                }
            }
            else if(request.getParameter("update")!=null)
            {
                System.out.println("In Update");
                /* Getting The Value From TextBox  */
                int id=Integer.parseInt(request.getParameter("id"));//getting value from hidden field textbox
                String name=request.getParameter("name");
                String email=request.getParameter("email");
                String password=request.getParameter("password");
                String department=request.getParameter("department");
                String designation=request.getParameter("designation");
                
                SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
                String todayDate=sdf.format(new Date());
                
                System.out.println(name+" "+email+" "+password+" "+department+" "+designation+" "+todayDate);
                /* JDBC Connection Code  */
                con=DB.getConnection();
                st=con.createStatement();
                String sql="update employee set name='"+name+"', email='"+email+"', password='"+password+"', department='"+department+"', designation='"+designation+"' where id="+id+" " ;
                status=st.executeUpdate(sql);
                if(status>0)
                {
                    session.setAttribute("email",email);
                    session.setAttribute("updated", "Employee has been updated Successfully..");
                    response.sendRedirect("employees.jsp");
                }
                else
                {
                    out.println("Oops! Something went wrong...");
                }
            }
            else if(request.getParameter("delete")!=null)
            {
                System.out.println("In Delete");
                int id=Integer.parseInt(request.getParameter("id"));
                con=DB.getConnection();
                st=con.createStatement();
                String sql="delete from employee where id="+id+" " ;
                status=st.executeUpdate(sql);
                if(status>0)
                {
                    session.setAttribute("deleted", "Employee has been reloved Successfully..");
                    response.sendRedirect("employees.jsp");
                }
                else
                {
                    out.println("Oops! Something went wrong...");
                }
            }
        }catch(Exception e){
            out.println(e);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
