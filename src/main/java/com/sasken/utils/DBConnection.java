package com.sasken.utils;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
    private static String jdbcURL = "jdbc:mysql://localhost:3306/sasken_project";
    private static String jdbcUsername = "root";
    private static String jdbcPassword = "vaishali";

    public static Connection getConnection() {
        Connection conn = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }
}
