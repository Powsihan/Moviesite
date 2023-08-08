<%@ page import="java.sql.*" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page language="java" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Search Movies</title>
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
            <a class="active" href="./search.jsp">Search Movies</a>
            <a href="./update.jsp">Update Movies</a>
            <a href="./AdminLogin.html">Log Out</a>
        </div>


        <div class="content">
            <div class="container mt-5">
                <h1 class="text-center h1hed">Admin Panel</h1>
                <br>
                <hr>
                <h4 class="text-center font-weight-bold">Search Movies</h4>
                <form action="searchresult.jsp" method="post" class="mt-4">
                    <div class="input-group">
                        <input type="text" name="search" class="form-control" placeholder="Search Movie by title, Category, Director, or Movie_ID">
                        <button type="submit" class="btn btn-primary">Search</button>
                    </div>
                </form>
            </div>
        </div>


    </body>
</html>
