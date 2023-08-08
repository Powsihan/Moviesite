<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>

<!DOCTYPE HTML>
<html>

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Movie Add</title>
        <!-- Bootstrap CSS -->
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
            <a class="active" href="./insert.jsp">Add Movie</a>
            <a href="./view.jsp">View Movies</a>
            <a href="./search.jsp">Search Movies</a>
            <a href="./update.jsp">Update Movies</a>
            <a href="./AdminLogin.html">Log Out</a>
        </div>


        <div class="content">
            <div class="container mt-5">
                <h1 class="text-center h1hed">Admin Panel</h1>
                <br>
                <hr>
                <h4 class="text-center">Movie Add</h4>
                <!-- Once the form is submitted, all the form data is forwarded to InsertBooks.jsp -->
                <form action="./InsertMovie.jsp" method="post">
                    <table class="table table-bordered mt-4">
                        <tr>
                            <td>Enter Movie_ID :</td>
                            <td><input type="text" name="id" class="form-control" placeholder="Movie_ID"></td>
                        </tr>
                        <tr>
                            <td>Enter Movie_Name :</td>
                            <td><input type="text" name="title" class="form-control" placeholder="Movie_Name"></td>
                        </tr>
                        <tr>
                            <td>Import Image :</td>
                            <td><input type="file" name="image" class="form-control-file"></td>
                        </tr>
                        <tr>
                            <td>Enter Releasing_Date:</td>
                            <td><input type="date" name="publication" class="form-control"></td>
                        </tr>
                        <tr>
                            <td>Enter Director:</td>
                            <td><input type="text" name="director" class="form-control" placeholder="Director"></td>
                        </tr>
                        <tr>
                            <td>Enter Review:</td>
                            <td><input type="text" name="review" class="form-control" placeholder="Review"></td>
                        </tr>
                        <tr>
                            <td>Select Categories:</td>
                            <td>
                                <select name="categories" class="form-control">
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
                                <input type="submit" value="ADD" class="btn btn-primary">
                                <input type="reset" value="Reset" class="btn btn-secondary">
                            </td>
                        </tr>
                    </table>
                </form>
            </div>
            <br><br>
            <hr>

        </div>


        <!-- Bootstrap JS -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
    </body>

</html>
