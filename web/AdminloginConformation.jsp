<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login Result</title>
</head>
<body>
    <% 
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        try {
            // Establish database connection
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/moviesite", "root", "");

            // Query database
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM admin WHERE username=? AND password=?");
            preparedStatement.setString(1, username);
            preparedStatement.setString(2, password);
            ResultSet resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                // Valid credentials, redirect to a success page
                response.sendRedirect("admin.jsp");
            } else {
               %>
                <script>
                    alert('Invalid username or password.');
                    window.location.href = 'AdminLogin.html'; // Change this to your login form
                </script>
    <%
            }

            // Close resources
            resultSet.close();
            preparedStatement.close();
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    %>
</body>
</html>
