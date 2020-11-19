package com.oilymoose;

import java.sql.*;

public class Database {
    Connection connection;
    String ip, name, user, password;
    int port;

    public Database(String ip, int port, String name, String user, String password) throws SQLException {
        this.ip = ip;
        this.port = port;
        this.name = name;
        this.user = user;
        this.password = password;
        Connect();
    }

    // Attempts to connect to the database using the data defined in the constructor
    public void Connect() throws SQLException {
        try {
            connection = DriverManager.getConnection("jdbc:mysql://" + ip + ":" + port + "/" + name, user, password);
        } catch (Exception e) {
            System.out.println("[Database] Database could not be created:");
            System.out.println(e);
            throw e;
        }
    }

    // Queries the database with the query {sql} and returns a ResultSet, or null if errored.
    public ResultSet queryDatabase(String sql) {
        try {
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            return rs;
        } catch (SQLException throwable) {
            throwable.printStackTrace();
        }
        return null;
    }

}
