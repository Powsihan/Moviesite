<%-- 
    Document   : register
    Created on : Jul 30, 2023, 1:14:20 PM
    Author     : HP
--%>

<%@page import="classes.DbConnector"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%--<%@page import="classes.MD5" %>--%>
<%@page import="java.sql.*" %>
<%
    String id = request.getParameter("id");
    String title = request.getParameter("title");
    String image = request.getParameter("image"); // Assuming you handle the image upload separately
    String publication = request.getParameter("publication");
    String director = request.getParameter("director");
    String review = request.getParameter("review");
    String category = request.getParameter("categories");
//    String password = MD5.getMd5(request.getParameter("password"));

    String query = "INSERT INTO movie (Movie_ID, Movie_Name, Image, Release_Date, Director, Review, Categories) VALUES (?, ?, ?, ?, ?, ?, ?)";
    Connection con = DbConnector.getConnection();
    PreparedStatement pstmt = con.prepareStatement(query);
    pstmt.setString(1, id);
    pstmt.setString(2, title);
    pstmt.setString(3, image);
    pstmt.setString(4, publication);
    pstmt.setString(5, director);
    pstmt.setString(6, review);
    pstmt.setString(7, category);
    int a = pstmt.executeUpdate();
%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>User Registration</title>
</head>
<body>
    <% if (a > 0) { %>
        <script>
            alert("Successfully Saved");
             window.location = 'admin.jsp';
        </script>
    <% } else { %>
        <script>
            alert("Error Occurred");
        </script>
    <% } %>
</body>
</html>
