
package db;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import db.DB;
import java.sql.SQLException;

@WebServlet(name = "ItemServlet", urlPatterns = {"/ItemServlet"})
public class ItemServlet extends HttpServlet {
PrintWriter out=null;
    Connection con=null;
    PreparedStatement ps=null;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            out=response.getWriter();
            String item_name=request.getParameter("item_name");
            String price=request.getParameter("price");
            String qty="1";
            int total=Integer.parseInt(price);
            //out.println(item_name+" "+price);
            try {
                con=DB.getConnection();
                String sql="insert into items(cname,price,qty,total) values(?,?,?,?)";
                ps=con.prepareStatement(sql);
                ps.setString(1, item_name);
                ps.setString(2, price);
                ps.setString(3, qty);
                ps.setInt(4,total);
                int status=ps.executeUpdate();
                if(status>0)
                {
                    out.println("Item Inserted Successfully.");
                }
            } catch (SQLException e) {
                out.println(e);
            }
        } catch (IOException e) {
            out.println(e);
        }
    }

}
