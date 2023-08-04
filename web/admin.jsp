<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>

<!DOCTYPE HTML>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book Add</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="styles.css">
    <!-- SweetAlert CDN -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.19/dist/sweetalert2.min.js"></script>

</head>

<body>
    <div class="container mt-5">
        <h1 class="text-center">Admin Panel</h1>
        <br>
        <hr>
        <h4 class="text-center">Book Add</h4>
        <!-- Once the form is submitted, all the form data is forwarded to InsertBooks.jsp -->
        <form action="./InsertBook.jsp" method="post">
            <table class="table table-bordered mt-4">
                <tr>
                    <td>Enter ISBN :</td>
                    <td><input type="text" name="isbn" class="form-control" placeholder="ISBN"></td>
                </tr>
                <tr>
                    <td>Enter Title :</td>
                    <td><input type="text" name="title" class="form-control" placeholder="Title"></td>
                </tr>
                <tr>
                    <td>Import Image :</td>
                    <td><input type="file" name="image" class="form-control-file"></td>
                </tr>
                <tr>
                    <td>Enter Publication_Date:</td>
                    <td><input type="date" name="publication" class="form-control"></td>
                </tr>
                <tr>
                    <td>Enter Author:</td>
                    <td><input type="text" name="author" class="form-control" placeholder="Author"></td>
                </tr>
                <tr>
                    <td>Enter Review:</td>
                    <td><input type="text" name="review" class="form-control" placeholder="Review"></td>
                </tr>
                <tr>
                    <td>Select Categories:</td>
                    <td>
                        <select name="categories">
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
                        <input type="submit" value="Submit" class="btn btn-primary">
                        <input type="reset" value="Reset" class="btn btn-secondary">
                    </td>
                </tr>
            </table>
        </form>
    </div>
    <br><br>
    <hr>
    <h4 class="text-center"> All Book Details</h4>
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
                String dbUrl = "jdbc:mysql://localhost:3306/bookreview"; // Replace with your database URL
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
    <!-- Bootstrap JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
</body>

</html>
