package p1;

import java.sql.Connection;
import java.sql.DriverManager;

public class DB {

    static String URL = "localhost:3306/";
    static String DATABASE_NAME = "file_upload";
    static String USERNAME = "root";
    static String PASSWORD = "";//i have no password.

    public static Connection getConnection() {
        Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://" + URL + DATABASE_NAME, USERNAME, PASSWORD);
        } catch (Exception e) {
            System.out.println(e);
            e.printStackTrace();
        }
        return con;
    }
}
