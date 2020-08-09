/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.json;

import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Dharmesh Mourya
 */
@WebServlet(name = "JsonServlet", urlPatterns = {"/JsonServlet"})
public class JsonServlet extends HttpServlet {

    PrintWriter out;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        out = response.getWriter();
        try {
            //getting parameter from jsp
            String jsonData = request.getParameter("para");
            System.out.println(jsonData);

            Gson gson = new Gson();

            //converting it into pojo or bean
            User data = gson.fromJson(jsonData, User.class);

            //calling the getter method
            System.out.println("Fetching from json object");
            String name = data.getName();
            String address = data.getAddress();

            System.out.println("User Name : " + name);
            System.out.println("User Add : " + address);

            //creating obj to convert it again json
            User user = new User();

            //setting values to object
            user.setName(name);
            user.setAddress(address);

            //converting
            String jsonObj = gson.toJson(user);
            System.out.println(jsonObj);

            //sending json response
            out.print(jsonObj);
        } catch (JsonSyntaxException e) {
            out.println(e);
        }
    }

}
