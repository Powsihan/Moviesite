/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class User {
    
    private int id;
    private String firstName;
    private String lastName;
    private String email;
    private String password;
    private int contact;

    public User(String email, String password) {
        this.email = email;
        this.password = password;
    }

    public User(String firstName, String lastName, String email, String password, String contact) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.password = password;
        this.contact = Integer.parseInt(contact);
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getId() {
        return id;
    }

    public String getFirstName() {
        return firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public int getContact() {
        return contact;
    }

    public boolean register(Connection con) throws SQLException {
        String query = "INSERT INTO user(First_name, Last_name, email, Password, Contact) VALUES(?, ?, ?, ?, ?)";
        PreparedStatement pstmt = con.prepareStatement(query);
        pstmt.setString(1, firstName);
        pstmt.setString(2, lastName);
        pstmt.setString(3, email);
        pstmt.setString(4, password);
        pstmt.setString(5, Integer.toString(contact));
        int a = pstmt.executeUpdate();

        return (a > 0);
    }

    public boolean authenticate(Connection con) throws SQLException {
        
        String query = "SELECT * FROM user WHERE email = ?";
        PreparedStatement pstmt = con.prepareStatement(query);
        pstmt.setString(1, email);
        ResultSet rs = pstmt.executeQuery();
        if (rs.next()) {
            String db_password = rs.getString("password");
            if (password.equals(db_password)) {
                id = Integer.parseInt(rs.getString("User_id"));
                firstName = rs.getString("First_name");
                lastName = rs.getString("Last_name");
                contact = Integer.parseInt(rs.getString("Contact"));
                return true;
            } else {
                return false;
            }
        } else {
            return false;
        }

    }

    public boolean update(Connection con) {
        return true;
    }
}
