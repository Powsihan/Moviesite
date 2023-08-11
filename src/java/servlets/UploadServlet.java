
import classes.DbConnector;
import javax.servlet.annotation.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;

@MultipartConfig
@WebServlet("/UploadServlet")
public class UploadServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String title = request.getParameter("title");
        Part image = request.getPart("image"); // Assuming you handle the image upload separately
        String publication = request.getParameter("publication");
        String director = request.getParameter("director");
        String review = request.getParameter("review");
        String category = request.getParameter("categories");
        Part imgdata = request.getPart("image");

        try {
            InputStream imageInputStream = image.getInputStream();
            String query = "INSERT INTO movie (Movie_ID, Movie_Name, Image, Release_Date, Director, Review, Categories) VALUES (?, ?, ?, ?, ?, ?, ?)";
            Connection con = DbConnector.getConnection();
            PreparedStatement pstmt = con.prepareStatement(query);
            InputStream is = imgdata.getInputStream();
            pstmt.setString(1, id);
            pstmt.setString(2, title);
            pstmt.setBlob(3, imageInputStream);
            pstmt.setString(4, publication);
            pstmt.setString(5, director);
            pstmt.setString(6, review);
            pstmt.setString(7, category);
            pstmt.close();
            con.close();

            response.getWriter().println("Data uploaded successfully!");
        } catch (Exception e) {
            response.getWriter().println("Error: " + e.getMessage());
        }
    }
}
