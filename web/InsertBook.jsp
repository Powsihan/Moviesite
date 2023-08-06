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
    String isbn = request.getParameter("isbn");
    String title = request.getParameter("title");
    String image = request.getParameter("image"); // Assuming you handle the image upload separately
    String publication = request.getParameter("publication");
    String author = request.getParameter("author");
    String review = request.getParameter("review");
    String category = request.getParameter("categories");
//    String password = MD5.getMd5(request.getParameter("password"));

    String query = "INSERT INTO book (ISBN, Title, Image, Publication_Date, Author, Review, Categories) VALUES (?, ?, ?, ?, ?, ?, ?)";
    Connection con = DbConnector.getConnection();
    PreparedStatement pstmt = con.prepareStatement(query);
    pstmt.setString(1, isbn);
    pstmt.setString(2, title);
    pstmt.setString(3, image);
    pstmt.setString(4, publication);
    pstmt.setString(5, author);
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
