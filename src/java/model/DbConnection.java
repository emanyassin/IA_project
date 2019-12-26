package model;

import java.sql.*;

public class DbConnection {

    Connection con = null;
    String url = "jdbc:mysql://localhost:3306/online_interview";
    String user = "root";
    String password = "0000";

    public Connection getConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url, user, password);
        } catch (ClassNotFoundException | SQLException cnfe) {
            System.err.println("Exception: " + cnfe);
        }

        return con;
    }

}
