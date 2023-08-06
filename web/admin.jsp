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
   
    <!-- Bootstrap JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
</body>

</html>
