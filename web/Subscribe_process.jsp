<%-- 
    Document   : Subscribe_process
    Created on : Aug 9, 2023, 1:43:41 PM
    Author     : Dinithi
--%>


<%@page import="classes.DbConnector"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.sql.*" %>

<%
    String email=request.getParameter("email");
    String date=request.getParameter("date");
    String payment=request.getParameter("payment");
    String paymentmethod=request.getParameter("paymentmethod");
    
    
    



    String query = "INSERT INTO subscribersdetails(User_email, Sub_date, Total_payment, Payment_type) VALUES(?, ?, ?, ?)";
    Connection con = DbConnector.getConnection();
    PreparedStatement pstmt = con.prepareStatement(query);
    pstmt.setString(1, email);
    pstmt.setString(2, date);
    pstmt.setString(3, payment);
    pstmt.setString(4, paymentmethod);
    int a = pstmt.executeUpdate();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Subscription</title>
    </head>
    <body>
        <%
            if (a > 0) {
        %>
        <h3>Successfully Saved</h3>
        <%
        } else {
        %>
        <h3>Error Occurred</h3>
        <%
            }
        %>
    </body>
</html>
