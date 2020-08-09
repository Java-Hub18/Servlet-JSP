
package com.java;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "Process", urlPatterns = {"/Process"})
public class Process extends HttpServlet {

    PrintWriter out;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        out=response.getWriter();
        String country=request.getParameter("country");
        String state=request.getParameter("state");
        String city=request.getParameter("city");
        out.println("<h1>Your Country:"+country+" : State: "+state+": City: "+city+" </h1>");
    }



}
