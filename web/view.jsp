<%-- 
    Document   : view
    Created on : Aug 4, 2023, 8:50:18 PM
    Author     : hp
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <div class="container mt-5">
        <table class="table table-bordered mt-4">
            <tr>
                <th>No</th>
                <th>ISBN</th>
                <th>Title</th>
                <th>Category</th>
                <th>Publication_Date</th>
                <th>Author</th>
                <th>Review</th>
            </tr>
            <%
                String dbUrl = "jdbc:mysql://localhost:3306/moviesite"; // Replace with your database URL
                String dbUser = "root"; // Replace with your database username
                String dbPassword = ""; // Replace with your database password

                Connection connection = null;
                ResultSet resultSet = null;

                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    connection = DriverManager.getConnection(dbUrl, dbUser, dbPassword);

                    String query = "select * from book";
                    Statement statement = connection.createStatement();
                    resultSet = statement.executeQuery(query);

                    int rowNumber = 1;
                    while (resultSet.next()) {
            %>
                <tr>
                    <td><%= rowNumber++ %></td>
                    <td><%= resultSet.getString("ISBN") %></td>
                    <td><%= resultSet.getString("Title") %></td>
                    <td><%= resultSet.getString("Categories") %></td>
                    <td><%= resultSet.getString("Publication_Date") %></td>
                    <td><%= resultSet.getString("Author") %></td>
                    <td><%= resultSet.getString("Review") %></td>
                </tr>
            <%
                    }
                } catch (ClassNotFoundException | SQLException e) {
                    e.printStackTrace();
                    // Handle database connection errors
                } finally {
                    if (resultSet != null) {
                        try {
                            resultSet.close();
                        } catch (SQLException e) {
                            e.printStackTrace();
                        }
                    }
                    if (connection != null) {
                        try {
                            connection.close();
                        } catch (SQLException e) {
                            e.printStackTrace();
                        }
                    }
                }
            %>
        </table>
    </div>
    </body>
</html>
