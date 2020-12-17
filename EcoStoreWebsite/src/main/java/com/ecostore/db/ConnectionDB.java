package com.ecostore.db;

import java.sql.*;

public class ConnectionDB {
    private static Connection connection = null;

    public static Connection getConnection() {
        try {
            if (connection == null || connection.isClosed()) {
                Class.forName("com.mysql.jdbc.Driver");
                String url = "jdbc:mysql://localhost:3306/ecostore";
                String user = "root";
                String password = "";
                connection = DriverManager.getConnection(url, user, password);
            }
        } catch (SQLException | ClassNotFoundException throwables) {
            throwables.printStackTrace();
        }
        return connection;
    }
}
