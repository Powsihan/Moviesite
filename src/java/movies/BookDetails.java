package movies;

import java.io.OutputStream;
import java.sql.*;
import java.util.ArrayList;
import java.util.Base64;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class BookDetails {

    private String categories;
    private String title;
    private String isbn;
    private String publicationDate;
    private String author;
    private Blob image;
    private byte[] imgData = null;
    private String review;

    // Constructor
    public BookDetails(String categories, String title, String isbn, String publicationDate, String author, byte[] image, String review) {
        this.categories = categories;
        this.title = title;
        this.isbn = isbn;
        this.publicationDate = publicationDate;
        this.author = author;
        this.imgData = image;
        this.review = review;
    }

    // Getter methods
    public String getCategories() {
        return categories;
    }

    public String getTitle() {
        return title;
    }

    public String getISBN() {
        return isbn;
    }

    public String getPublicationDate() {
        return publicationDate;
    }

    public String getAuthor() {
        return author;
    }

    public byte[] getImage() {
        return imgData;
    }

    public String getReview() {
        return review;
    }

    public static List<BookDetails> retrieveMovieData(Connection connection, String Category) {

        List<BookDetails> moviedetails = new ArrayList<>();

        try {
            // SQL query
            String query = "SELECT Categories,Movie_ID, Movie_Name, Image, Release_Date, Director, Review FROM movie where Categories=?";

            // Create a statement
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, Category);
            // Execute the query
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                String category = resultSet.getString("Categories");
                String movieId = resultSet.getString("Movie_ID");
                String movieName = resultSet.getString("Movie_Name");
                Blob image = resultSet.getBlob("Image");
                byte[] imgData = image.getBytes(1, (int) image.length());
                String releaseDate = resultSet.getString("Release_Date");
                String director = resultSet.getString("Director");
                String review = resultSet.getString("Review");

                BookDetails movie = new BookDetails(category, movieName, movieId, releaseDate, director, imgData, review);
                moviedetails.add(movie);
                // Check if the category is already in the map

            }
            // Close the resources
            resultSet.close();
            preparedStatement.close();
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return moviedetails;
    }

    // Static method to get book details by ISBN from the database
    public static BookDetails getBookDetailsByISBN(Connection connection, String isbn) {
        String query = "SELECT * FROM movie WHERE Movie_ID = ?";
        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setString(1, isbn);
            try (ResultSet resultSet = preparedStatement.executeQuery()) {
                if (resultSet.next()) {
                    String categories = resultSet.getString("Categories");
                    String title = resultSet.getString("Movie_Name");
                    String publicationDate = resultSet.getString("Release_Date");
                    String author = resultSet.getString("Director");
                    Blob image = resultSet.getBlob("Image");
                    byte[] imgData = image.getBytes(1, (int) image.length());
//                    String base64Encoded = new String(Base64.encodeBase64(image), "UTF-8");
                    String review = resultSet.getString("Review");

                    return new BookDetails(categories, title, isbn, publicationDate, author, imgData, review);
                } else {
                    return null; // No data found for the given ISBN
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
}
