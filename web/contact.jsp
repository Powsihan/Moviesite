<%@page import="classes.DbConnector"%>
<%@page import = "java.sql.*" %>
<%
String Name = request.getParameter("name");
String Email = request.getParameter("email");
String Subject = request.getParameter("subject");
String Message = request.getParameter("message");

try{
    DbConnector dbcon=new DbConnector();
    Connection con = dbcon.getConnection();
    PreparedStatement ps = con.prepareStatement("INSERT INTO contact(Name,Email,Subject,Message) VALUES (?,?,?,?)");
    ps.setString(1,Name);
    ps.setString(2,Email);
    ps.setString(3,Subject);
    ps.setString(4,Message);
    
    int x = ps.executeUpdate();
    
    if(x > 0){
        out.println("<h1 style = 'color:blue'>Your message has been sent. Thank you!</h1>");
        response.sendRedirect("index.html?status=1");
    }else{
        out.println("Message Send Failed");
    }

      
}catch(Exception e){
    out.println(e);
}

%>