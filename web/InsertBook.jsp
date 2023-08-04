<%@ page import="java.sql.*" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>

<%
    String dbUrl = "jdbc:mysql://localhost:3306/bookreview"; // Replace with your database URL
    String dbUser = "root"; // Replace with your database username
    String dbPassword = ""; // Replace with your database password

    String isbn = request.getParameter("isbn");
    String title = request.getParameter("title");
    String image = request.getParameter("image"); // Assuming you handle the image upload separately
    String publication = request.getParameter("publication");
    String author = request.getParameter("author");
    String review = request.getParameter("review");
    String category = request.getParameter("categories");

    Connection connection = null;
    PreparedStatement preparedStatement = null;

    try {
        Class.forName("com.mysql.jdbc.Driver");
        connection = DriverManager.getConnection(dbUrl, dbUser, dbPassword);

        String query = "INSERT INTO book (ISBN, Title, Image, Publication_Date, Author, Review, Categories) VALUES (?, ?, ?, ?, ?, ?, ?)";
        preparedStatement = connection.prepareStatement(query);
        preparedStatement.setString(1, isbn);
        preparedStatement.setString(2, title);
        preparedStatement.setString(3, image);
        preparedStatement.setString(4, publication);
        preparedStatement.setString(5, author);
        preparedStatement.setString(6, review);
        preparedStatement.setString(7, category);

        int rowsAffected = preparedStatement.executeUpdate();

        // Check if the book was inserted successfully
        if (rowsAffected > 0) {
            // Redirect back to the admin.jsp page with a success message
            response.sendRedirect("admin.jsp?message=success");
        } else {
            // Redirect back to the admin.jsp page with an error message
            response.sendRedirect("admin.jsp?message=error");
        }
    } catch (ClassNotFoundException | SQLException e) {
        e.printStackTrace();
        // Handle database connection or insertion errors
        response.sendRedirect("admin.jsp?message=error");
    } finally {
        if (preparedStatement != null) {
            try {
                preparedStatement.close();
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
