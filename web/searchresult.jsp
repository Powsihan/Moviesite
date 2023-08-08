<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css">
        <title>Update Movie</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
              rel="stylesheet"
              integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
              crossorigin="anonymous"
              />
        <!-- CSS stylesheet -->
        <link rel="stylesheet" href="./Styles/admin.css"/>
        <!-- font awesome link -->
        <link rel="stylesheet"
              href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
              integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
              crossorigin="anonymous"
              referrerpolicy="no-referrer"
              />
    </head>
    <body>
        <div class="sidebar">
            <a href="./admin.jsp">DashBoard</a>
            <a href="./insert.jsp">Add Movie</a>
            <a href="./view.jsp">View Movies</a>
            <a class="active" href="./search.jsp">Search Movies</a>
            <a  href="./update.jsp">Update Movies</a>
            <a href="./AdminLogin.html">Log Out</a>
        </div>

        <div class="content">
            <div class="container mt-5">
                <h1 class="text-center h1hed">Admin Panel</h1>
                <br>
                <hr>
                <h4 class="text-center">Movie Update</h4>

                <%
                    String searchMovieID = request.getParameter("search");
                    if (searchMovieID != null && !searchMovieID.isEmpty()) {
                        Connection connection = null;
                        PreparedStatement preparedStatement = null;
                        ResultSet resultSet = null;

                        try {
                            // Replace with your database connection setup
                            String jdbcUrl = "jdbc:mysql://localhost:3306/moviesite";
                            String dbUser = "root";
                            String dbPassword = "";

                            Class.forName("com.mysql.jdbc.Driver");
                            connection = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);

                            String query = "SELECT * FROM movie WHERE Movie_Name LIKE ? OR Director LIKE ? OR Categories LIKE ? OR Movie_ID LIKE ?";
                            preparedStatement = connection.prepareStatement(query);
                            preparedStatement.setString(1, "%" + searchMovieID + "%"); // Search by Movie_Name
                            preparedStatement.setString(2, "%" + searchMovieID + "%"); // Search by Director
                            preparedStatement.setString(3, "%" + searchMovieID + "%");
                            preparedStatement.setString(4, "%" + searchMovieID + "%");// Search by Categories
                            resultSet = preparedStatement.executeQuery();
                            if (resultSet.next()) {

                                // You can retrieve other fields as needed
                %>
                <div style="max-height: 700px; overflow-y: scroll;">
                    <table class="table table-bordered mt-4">
                        <thead style="position: sticky; top: -1px; z-index: 1;">
                            <tr>
                                <th>No</th>
                                <th style="width: 130px;">Movie_ID</th>
                                <th>Title</th>
                                <th>Category</th>
                                <th>Publication_Date</th>
                                <th style="width: 100px;">Director</th>
                                <th>Review</th>
                            </tr>
                        </thead>

                        <tbody>
                            <%  int rowNumber = 1;
                                // Removed the initial resultSet.next() call to avoid skipping the first row
                                do {
                                    String movieID = resultSet.getString("Movie_ID");
                                    String movieName = resultSet.getString("Movie_Name");
                                    String categories = resultSet.getString("Categories");
                                    String director = resultSet.getString("Director");
                                    String publication = resultSet.getString("Release_date");
                                    String review = resultSet.getString("Review");
                                    String image = resultSet.getString("Image");
                            %>
                            <tr>
                                <td><%= rowNumber++%></td>
                                <td><%= movieID%></td>
                                <td><%= movieName%></td>
                                <td><%= categories%></td>
                                <td><%= publication%></td>
                                <td><%= director%></td>
                                <td><%= review%></td>
                            </tr>
                            <% } while (resultSet.next()); %>
                        </tbody>
                    </table>
                </div>

                <%
                } else {
                %>
                <script>
                    alert("No movie found");
                    window.location = 'update.jsp';
                </script>
                <%
                            }
                        } catch (Exception e) {
                            out.println("<p>An error occurred: " + e.getMessage() + "</p>");
                        } finally {
                            try {
                                if (resultSet != null) {
                                    resultSet.close();
                                }
                            } catch (SQLException e) {
                            }
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
                    }
                %>

            </div>
        </div>
    </body>
</html>
