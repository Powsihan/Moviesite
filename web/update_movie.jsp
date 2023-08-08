<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css">
        <title>Update Movie</title>
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
            crossorigin="anonymous"
            />
        <!-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
        <!-- CSS stylesheet -->
        <link rel="stylesheet" href="./Styles/admin.css " />
        <!-- ------------------------------------------------------------------->
        <!-- font awesome link -->
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
            integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
            crossorigin="anonymous"
            referrerpolicy="no-referrer"
            />
    </head>
    <body>
        <div class="sidebar">
            <a  href="./admin.jsp">DashBoard</a>
            <a href="./insert.jsp">Add Movie</a>
            <a href="./view.jsp">View Movies</a>
            <a href="./search.jsp">Search Movies</a>
            <a class="active" href="./update.jsp">Update Movies</a>
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

                            String query = "SELECT * FROM movie WHERE Movie_ID = ?";
                            preparedStatement = connection.prepareStatement(query);
                            preparedStatement.setString(1, searchMovieID);
                            resultSet = preparedStatement.executeQuery();

                            if (resultSet.next()) {
                                String movieName = resultSet.getString("Movie_Name");
                                String categories = resultSet.getString("Categories");
                                String director = resultSet.getString("Director");
                                String publication = resultSet.getString("Release_date");
                                String review = resultSet.getString("Review");
                                String image = resultSet.getString("Image");
                                // You can retrieve other fields as needed

                %>
                <form action="update_movie_process.jsp" method="post">
                    <table class="table table-bordered mt-4">
                        <tr>
                            <td>Enter Movie_ID :</td>
                            <td><input type="text" name="movie_id" class="form-control" value="<%= searchMovieID%>">
                            </td>
                        </tr>
                        <tr>
                            <td>Enter Movie_Name :</td>
                            <td><input type="text" name="name" class="form-control" value="<%= movieName%>"></td>
                        </tr>
                        <tr>
                            <td>Import Image :</td>
                            <td><input type="file" name="image" class="form-control-file" value="<%= image%>" ></td>
                        </tr>
                        <tr>
                            <td>Enter Releasing_Date:</td>
                            <td><input type="date" name="publication" class="form-control" value="<%= publication%>"></td>
                        </tr>
                        <tr>
                            <td>Enter Director:</td>
                            <td><input type="text" name="director" class="form-control" value="<%= director%>"></td>
                        </tr>
                        <tr>
                            <td>Enter Review:</td>
                            <td><input type="text" name="review" class="form-control" placeholder="Review" value="<%= review%>"></td>
                        </tr>
                        <tr>
                            <td>Select Categories:</td>
                            <td>
                                <select type="text" name="categories" class="form-control" value="<%= categories%>">
                                    <option value="historical">Historical</option>
                                    <option value="horror">Horror</option>
                                    <option value="love">Love</option>
                                    <option value="fiction" selected>Fiction</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <input type="submit" value="Update" name="action" class="btn btn-primary">
                                <input type="submit" value="Delete" name="action" class="btn btn-danger">
                                <a href="./update.jsp" class="btn btn-secondary">Cancel</a>
                            </td>
                        </tr>
                    </table>
                </form>

                <%
            } else {%>

                <script>
                    alert("No movie found");
                    window.location = 'update.jsp';
                </script>
                <%  }
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
