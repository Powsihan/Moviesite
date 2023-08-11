<%-- 
    Document   : registration
    Created on : Jul 30, 2023, 4:34:57 AM
    Author     : HP
--%>
<%@page import="classes.DbConnector"%>
<%@page import="classes.User"%>
<%
    
    String firstname = request.getParameter("firstname");
    String lastname = request.getParameter("lastname");
    String username = request.getParameter("email");
    String password = request.getParameter("psw");
    String contact = request.getParameter("contact");

    User user = new User(firstname, lastname, username, password, contact);
    if (user.register(DbConnector.getConnection())) {
        response.sendRedirect("index.html?status=1");
    } else {
        response.sendRedirect("signin.jsp?status=0");
    }
%>