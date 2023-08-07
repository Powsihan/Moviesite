<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Update Movie Process</title>
        <script type="text/javascript">
            function showAlert(message) {
                alert(message);
                window.location.href = "index.jsp"; // Redirect to your desired page
            }
        </script>
    </head>
    <body>
        <%
            String action = request.getParameter("action");
            String movieID = request.getParameter("movie_id");
            String movieName = request.getParameter("name");
            String categories = request.getParameter("categories");
            String director = request.getParameter("director");
            String image = request.getParameter("image");
            String publication = request.getParameter("publication");
            String review = request.getParameter("review");
            // You can retrieve other input fields as needed

            if (action != null && movieID != null && !movieID.isEmpty()) {
                Connection connection = null;
                PreparedStatement preparedStatement = null;

                try {
                    // Replace with your database connection setup
                    String jdbcUrl = "jdbc:mysql://localhost:3306/moviesite";
                    String dbUser = "root";
                    String dbPassword = "";

                    Class.forName("com.mysql.jdbc.Driver");
                    connection = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);

                    if (action.equals("Update")) {
                        String updateQuery = "UPDATE movie SET Movie_Name=?, Categories=?, Director=?, Release_date=?, Image=?, Review=? WHERE Movie_ID=?";
                        preparedStatement = connection.prepareStatement(updateQuery);
                        preparedStatement.setString(1, movieName);
                        preparedStatement.setString(2, categories);
                        preparedStatement.setString(3, director);
                        preparedStatement.setString(4, publication);
                        preparedStatement.setString(5, image);
                        preparedStatement.setString(6, review);
                        preparedStatement.setString(7, movieID);
                    } else if (action.equals("Delete")) {
                        String deleteQuery = "DELETE FROM movie WHERE Movie_ID=?";
                        preparedStatement = connection.prepareStatement(deleteQuery);
                        preparedStatement.setString(1, movieID);
                    }

                    int rowsAffected = preparedStatement.executeUpdate();
        %>
        <%  if (rowsAffected > 0) { %>
        <%   if (action.equals("Update")) { %>

        <script>
            alert("Movie details updated successfully");
            window.location = 'update.jsp';
        </script>
        <% } else if (action.equals("Delete")) {%>
        <script>
            alert("Movie details Deleted successfully");
            window.location = 'update.jsp';
        </script>
        <% }
                   } else {%>

        <script>
            alert("Failed to update or delete movie details.");
            window.location = 'update.jsp';
        </script>
        <% }%>

        <% } catch (Exception e) {
                    out.println("<p>An error occurred: " + e.getMessage() + "</p>");
                } finally {
                    try {
                        if (preparedStatement != null) {
                            preparedStatement.close();
                        }
                    } catch (SQLException e) {
                    }
                    try {
                        if (connection != null) {
                            connection.close();
                        }
                    } catch (SQLException e) {
                    }
                }
            } else {
                out.println("<p>Invalid input data.</p>");
            }
        %>
    </body>
</html>
