<%@ page import="java.sql.*" %>
<%@ page import="javax.naming.InitialContext" %>
<%@ page import="javax.sql.DataSource" %>

<!DOCTYPE html>
<html>
    <head>


        <title>Book Details</title>
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
            crossorigin="anonymous"
            />
        <!-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
        <!-- CSS stylesheet -->
        <link rel="stylesheet" href="./Styles/admin.css" />
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
            <a class="active" href="./view.jsp">View Movies</a>
            <a href="./search.jsp">Search Movies</a>
            <a href="./update.jsp">Update Movies</a>
            <a href="./AdminLogin.html">Log Out</a>
        </div>


        <div class="content">
            <div class="container mt-5">
                <h1 class="text-center h1hed">Admin Panel</h1>
                <br>
                <hr>
                <h4 class="text-center" style="font-weight: bold;">All Movie Details</h4>


                <%-- Establish the database connection --%>
                <%
                    Connection conn = null;
                    Statement stmt = null;
                    ResultSet rs = null;
                    try {
                        // Get the DataSource from GlassFish connection pool (make sure it's configured in GlassFish)
                        InitialContext ctx = new InitialContext();
                        Class.forName("com.mysql.jdbc.Driver");
                        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/moviesite", "root", ""); // Replace "YourDataSourceName" with your actual data source name
                        stmt = conn.createStatement();

                        // Query the database to get book details from the "bookreview" database
                        String query = "SELECT * FROM movie";
                        rs = stmt.executeQuery(query);
                %>

                <!-- Search Results Table with Fixed Header and Scrolling Content -->
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
                            <%-- Loop through the result set and display each row --%>
                            <%
                                int rowNumber = 1;
                                while (rs.next()) {
                            %>
                            <tr>
                                <td><%= rowNumber++%></td>
                                <td><%= rs.getString("Movie_ID")%></td>
                                <td><%= rs.getString("Movie_Name")%></td>
                                <td><%= rs.getString("Categories")%></td>
                                <td><%= rs.getString("Release_Date")%></td>
                                <td><%= rs.getString("Director")%></td>
                                <td><%= rs.getString("Review")%></td>
                            </tr>
                            <% } %>
                        </tbody>
                    </table>
                </div>


                <% // Close the resources
                        rs.close();
                        stmt.close();
                        conn.close();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                %>

            </div>
        </div>
    </body>
</html>
