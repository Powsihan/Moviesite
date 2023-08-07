<%@ page import="java.sql.*" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page language="java" %>
<!DOCTYPE HTML>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css">
    <!-- Custom CSS -->
    

</head>

<body>
<%
    String searchQuery = request.getParameter("search");
    if (searchQuery != null && !searchQuery.trim().isEmpty()) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver"); // Updated for MySQL 8
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/moviesite", "root", "");

            // Use PreparedStatement to avoid SQL injection
            String query = "SELECT * FROM movie WHERE Movie_ID LIKE ? OR Movie_Name LIKE ? OR Categories LIKE ? OR Director LIKE ?";
            pstmt = conn.prepareStatement(query);
            String likePattern = "%" + searchQuery + "%";
            pstmt.setString(1, likePattern);
            pstmt.setString(2, likePattern);
            pstmt.setString(3, likePattern);
            pstmt.setString(4, likePattern);

            // Execute the SQL query
            rs = pstmt.executeQuery();
%>
<div class="container mt-5">
    <div class="text-center mb-4">
        <p>Search Results for: <strong><%= searchQuery %></strong></p>
    </div>

    <% if (rs.next()) { %>
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
                <%
                    int rowNumber = 1;
                    do {
                %>
                <tr>
                    <td><%= rowNumber++ %></td>
                    <td><%= rs.getString("Movie_ID") %></td>
                    <td><%= rs.getString("Movie_Name") %></td>
                    <td><%= rs.getString("Categories") %></td>
                    <td><%= rs.getString("Publication_Date") %></td>
                    <td><%= rs.getString("Director") %></td>
                    <td><%= rs.getString("Review") %></td>
                </tr>
                <% } while (rs.next()); %>
            </tbody>
        </table>
    </div>
    <% } else { %>
    <div class="text-center mt-5">
        <p>No results found for your search.</p>
    </div>
    <% }
        // Close the database resources
        if (rs != null) rs.close();
        if (pstmt != null) pstmt.close();
        if (conn != null) conn.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
    %>
</div>
<% } %>

</body>
</html>
