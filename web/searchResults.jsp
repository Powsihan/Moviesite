<%@ page import="java.sql.*" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page language="java" %>
<!DOCTYPE HTML>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search Results</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css">
    <!-- Custom CSS or other style links -->
</head>

<body>
<%
    String searchQuery = request.getParameter("search");
    if (searchQuery != null && !searchQuery.isEmpty()) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            String jdbcUrl = "jdbc:mysql://localhost:3306/moviesite";
            String dbUser = "root";
            String dbPassword = "";

            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);

            // Use PreparedStatement to avoid SQL injection
            String query = "SELECT * FROM movie WHERE Movie_ID = ?";
                        pstmt = conn.prepareStatement(query);
                        pstmt.setString(1, searchQuery);
                        rs = pstmt.executeQuery();
%>
<div class="container mt-5">
    <div class="text-center mb-4">
        <p>Search Results for: <strong><%= searchQuery %></strong></p>
    </div>

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
                    while (rs.next()) {
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
                <% }
                // Close the ResultSet, PreparedStatement, and Connection
                rs.close();
                pstmt.close();
                conn.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
                %>
            </tbody>
        </table>
    </div>
    <% } else { %>
    <div class="text-center mt-5">
        <p>No results found for your search.</p>
    </div>
    <% } %>
</div>
</body>
</html>
