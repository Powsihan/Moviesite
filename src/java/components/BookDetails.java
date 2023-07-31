import java.sql.*;
import java.util.Base64;

public class BookDetails {
    private String categories;
    private String title;
    private String isbn;
    private String publicationDate;
    private String author;
    private byte[] image;
    private String review;

    // Constructor
    public BookDetails(String categories, String title, String isbn, String publicationDate, String author, byte[] image, String review) {
        this.categories = categories;
        this.title = title;
        this.isbn = isbn;
        this.publicationDate = publicationDate;
        this.author = author;
        this.image = image;
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
        return image;
    }

    public String getReview() {
        return review;
    }

    // Static method to get book details by ISBN from the database
    public static BookDetails getBookDetailsByISBN(Connection connection, String isbn) {
        String query = "SELECT * FROM book WHERE ISBN = ?";
        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setString(1, isbn);
            try (ResultSet resultSet = preparedStatement.executeQuery()) {
                if (resultSet.next()) {
                    String categories = resultSet.getString("Categories");
                    String title = resultSet.getString("Title");
                    String publicationDate = resultSet.getString("Publication_Date");
                    String author = resultSet.getString("Author");
                    byte[] image = resultSet.getBytes("Image");
                    String review = resultSet.getString("Review");

                    return new BookDetails(categories, title, isbn, publicationDate, author, image, review);
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
