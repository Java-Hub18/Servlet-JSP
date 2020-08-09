package com;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "Hello", urlPatterns = {"/Hello"})
public class Hello extends HttpServlet {
PrintWriter out;
   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        out=response.getWriter();
        String name=request.getParameter("name");//get textbox name
        HttpSession session=request.getSession();//create session
        session.setAttribute("name", name);//set session value
        out.println("<h1>Hello  "+name+"</h1>");//print it
        out.println("<a href='welcome.jsp'>Next</a>");
        
    }


}
