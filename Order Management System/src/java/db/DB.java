package db;

import java.sql.*;

public class DB {

    public static Connection getConnection() {
        Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/order", "root", "");
        } catch (Exception e) {
            System.out.println(e);
        }
        return con;
    }
}
