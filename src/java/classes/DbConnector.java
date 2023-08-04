/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;

import java.sql.*;

/**
 *
 * @author HP
 */
public class DbConnector {

    private static final String URL = "jdbc:mysql://localhost:3306/bookreview";
    private static final String DBUSER = "testuser";
    private static final String DBPW = "testuser";
    private static final String DRIVER = "com.mysql.jdbc.Driver";

    public static Connection getConnection() throws Exception {
        Class.forName(DRIVER);
        Connection con = DriverManager.getConnection(URL, DBUSER, DBPW);
        return con;
    }
}
