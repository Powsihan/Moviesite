/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import classes.DbConnector;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author sasit
 */
@MultipartConfig
public class ImageUpload extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ImageUpload</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ImageUpload at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id = request.getParameter("id");
        String title = request.getParameter("title");
        Part image = request.getPart("image"); // Assuming you handle the image upload separately
        String publication = request.getParameter("publication");
        String director = request.getParameter("director");
        String review = request.getParameter("review");
        String category = request.getParameter("categories");
//        Part imgdata = request.getPart("image");

        try {
            InputStream imageInputStream = image.getInputStream();
            String query = "INSERT INTO movie (Movie_ID, Movie_Name, Image, Release_Date, Director, Review, Categories) VALUES (?, ?, ?, ?, ?, ?, ?)";
            Connection con = DbConnector.getConnection();
            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.setString(1, id);
            pstmt.setString(2, title);
            pstmt.setBlob(3, imageInputStream);
            pstmt.setString(4, publication);
            pstmt.setString(5, director);
            pstmt.setString(6, review);
            pstmt.setString(7, category);
             int a = pstmt.executeUpdate();
            pstmt.close();
            con.close();

            response.getWriter().println("Data uploaded successfully!");
        } catch (Exception e) {
            response.getWriter().println("Error: " + e.getMessage());
        }

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
