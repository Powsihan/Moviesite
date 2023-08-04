<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*, java.io.*" %>
<%
    String dbUrl = "jdbc:mysql://localhost:3306/bookreview"; // Replace with your database URL
    String dbUser = "root"; // Replace with your database username
    String dbPassword = ""; // Replace with your database password

    Connection connection = null;
    PreparedStatement preparedStatement = null;

    try {
        Class.forName("com.mysql.jdbc.Driver");
        connection = DriverManager.getConnection(dbUrl, dbUser, dbPassword);

        // Retrieve form data
        String isbn = request.getParameter("isbn");
        String title = request.getParameter("title");
        String publicationDate = request.getParameter("publication");
        String author = request.getParameter("author");
        String review = request.getParameter("review");
        String categories = request.getParameter("categories");

        // Upload image to the database (assuming image is uploaded via form)
        Part imagePart = request.getPart("image");
        InputStream imageStream = imagePart.getInputStream();

        // Prepare the INSERT query
        String query = "INSERT INTO book (ISBN, Title, Publication_Date, Author, Review, Categories, Image) VALUES (?, ?, ?, ?, ?, ?, ?)";
        preparedStatement = connection.prepareStatement(query);

        // Set parameters
        preparedStatement.setString(1, isbn);
        preparedStatement.setString(2, title);
        preparedStatement.setString(3, publicationDate);
        preparedStatement.setString(4, author);
        preparedStatement.setString(5, review);
        preparedStatement.setString(6, categories);
        preparedStatement.setBlob(7, imageStream);

        // Execute the INSERT query
        int rowsInserted = preparedStatement.executeUpdate();

        // Close the PreparedStatement
        preparedStatement.close();

        // Redirect to the success page or display a success message
        response.sendRedirect("success.jsp"); // Replace "success.jsp" with your desired success page URL
    } catch (ClassNotFoundException | SQLException | IOException e) {
        e.printStackTrace();
        // Handle database connection or insertion errors
        // Redirect to an error page or display an error message
        response.sendRedirect("error.jsp"); // Replace "error.jsp" with your desired error page URL
    } finally {
        // Close the database connection after use
        if (connection != null) {
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
%>
