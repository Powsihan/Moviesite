<%@page import="java.util.Base64"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<%--<%@ page import="javax.sql.DataSource" %>--%>
<%@page import="classes.DbConnector"%>
<%@page import="movies.BookDetails"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- bootstrap link -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
        <!-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
        <!-- CSS stylesheet -->
        <link rel="stylesheet" href="./Styles/Review.css">
        <link rel="stylesheet" href="./Styles/HeaderFooter.css">
        <!-- ------------------------------------------------------------------->
        <!-- font awesome link -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer"
              />
        <link href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css' rel='stylesheet'>
        <!--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
        <title>Review | CinesynC</title>
    </head>

    <body style=" background: #e0dfdf;">
        <script src="/JS File/About_us.js"></script>
        <!-- bootstrap link -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
        <!--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
        <!-- bootstrap link  end -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <!--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->

        <!-- Navbar -->
        <nav class="navbar navbar-expand-lg navbar-light bg-light bg-color navvr fixed-top">
            <div class="container-fluid">
                <a class="navbar-brand logog" href="./index.html"><img src="./images/logo.png" alt="logo" style="height:50px; width: 100px;"></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="./index.html"><i
                                    class="fa-solid fa-house  icoon"></i>Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="./About_us.jsp"><i class="fa-solid fa-hands-bound icoon"></i>About Us</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="./Categories.jsp"><i class="fa-solid fa-film icoon"></i>Categories</a>
                        </li>
                        <li class="nav-item ">
                            <a class="nav-link active " href="./Contact_us.jsp"><i class="fa-solid fa-headset icoon"></i>Contact Us</a>
                        </li>
                    </ul>
                    <form class="d-flex ms-auto" role="search">
                        <input class="form-control me-2 bg-light glowing-border w-200 siz" type="search" placeholder="Search..." required aria-label="Search">
                        <button class="btn btn-block btn-lg glow-button btn-light" type="submit"><i
                                class="fa-solid fa-magnifying-glass  fa-lg"></i></button>
                    </form>
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        <li class="nav-but">
                            <a class="btn btn-outline-dark glow-button button-87 " href="./login.jsp"><i
                                    class="fa-solid fa-user icoon"></i>Login</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->
        <%
            // Assuming you have established a database connection
            Connection con = DbConnector.getConnection();

            // Check if ISBN parameter is provided in the URL
            String isbn = request.getParameter("isbn");

            // Get book details by ISBN
            BookDetails bookDetails = BookDetails.getBookDetailsByISBN(con, isbn);
//                if (bookDetails != null) {
            // Rest of your JSP code

        %>


        <!--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
        <section id="counts" class="counts">
            <div class="container " data-aos="fade-up">
                <div class="section-title">
                    <h2 style="color: black">
                        Adventure

                    </h2>
                    <p style="color: black">
                        New

                    </p>
                </div>
                <div class="row no-gutters ">
                    <div class="image col-xl-5 d-flex align-items-stretch justify-content-center justify-content-lg-start " data-aos="fade-right" data-aos-delay="100">
                        <img src="data:image/jpg;charset=utf8;base64,<%=Base64.getEncoder().encodeToString(bookDetails.getImage())%>" alt=""></div>
                    <div class="col-xl-7 ps-4 ps-lg-5 pe-4 pe-lg-1 d-flex align-items-stretch" data-aos="fade-left" data-aos-delay="100">
                        <div class="content d-flex flex-column justify-content-center review">
                            <h3 style="text-transform: uppercase;">Title :

                            </h3>
                            <h5 style="font-size: 26px;">Details : </h5>
                            <p class="card-text">Movie_ID :<%=bookDetails.getISBN()%>

                            </p>
                            <p class="card-text">Release Date :<%=bookDetails.getPublicationDate()%>

                            </p>
                            <p class="card-text">Director :<%=bookDetails.getAuthor()%>

                            </p>
                            <div class="star-rating">
                                <h5>Rating : </h5>
                                <ul class="list-inline">
                                    <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                    <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                    <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                    <li class="list-inline-item"><i class="fa fa-star-half-o"></i></li>
                                    <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                </ul>
                            </div>
                            <h5>Standard Review :</h5>
                            <p>
                                "Invisible" is a haunting and poignant work of fiction that explores the often-overlooked struggles of those who feel unseen in society. The book follows the compelling journey of a protagonist who grapples with their own invisibility, both figuratively and literally. Through the author's emotive prose and thought-provoking narrative, readers are taken on an emotional rollercoaster that sheds light on themes of identity, isolation, and the search for belonging. "Invisible" masterfully delves into the complexities of the human experience, leaving readers with a profound sense of empathy and a deeper understanding of the invisible battles fought by many. This powerful and introspective novel is a gripping reminder of the importance of compassion and connection, urging readers to see beyond the surface and embrace the invisible struggles of others. "Invisible" is a compelling and impactful read that lingers in the mind long after the last page.
                            </p>
                            <div class="revbtn">
                                <a href="subscribe.jsp" class="btn btn-primary">Buy</a>
                                <!-- <a href="#" class="btn btn-primary" style="width: 90px;">Comment</a> -->
                            </div>
                        </div>
                    </div>
                </div>


            </div>
        </section>


        <!----------- Footer ------------>
        <footer class="footer-bs">
            <div class="row ">
                <div class="col-md-3 footer-brand animated fadeInLeft ">
                    <img src="./images/logo.png " alt="logo " style="height:70px; width: 110px; ">
                    <p>Suspendisse hendrerit tellus laoreet luctus pharetra. Aliquam porttitor vitae orci nec ultricies. Curabitur vehicula, libero eget faucibus faucibus, purus erat eleifend enim, porta pellentesque ex mi ut sem.</p>
                    <p>© 2007 CinesynC, All rights reserved</p>
                </div>
                <div class="col-md-4 footer-nav animated fadeInUp ">
                    <h4>Menu —</h4>

                    <div class="col-md-6 ">
                        <ul class="list ">
                            <li><a href="./index.html"><i class="fa-solid fa-house icoon "></i>Home</a></li>
                            <li><a href="./About_us.jsp"><i class="fa-solid fa-hands-bound icoon "></i>About Us</a></li>
                            <li><a href="./Categories.jsp"><i class="fa-solid fa-book icoon "></i>Categories</a></li>
                            <li><a href="./Contact_us.jsp"><i class="fa-solid fa-headset icoon "></i>Contact Us</a></li>
                            <li><a href="# "><i class="fa-solid fa-chalkboard-user icoon "></i>Terms & Condition</a></li>
                            <li><a href="# "><i class="fa-solid fa-lock icoon "></i>Privacy Policy</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-2 footer-social ">
                    <h4>Follow Us</h4>
                    <ul>
                        <li><a href="# "><i class="fa-brands fa-facebook fa-2xl socialicon "></i></a></li>
                        <li><a href="# "><i class="fa-brands fa-twitter fa-2xl socialicon "></i></a></li>
                        <li><a href="# "><i class="fa-brands fa-instagram fa-2xl socialicon "></i></a></li>
                        <li><a href="# "><i class="fa-brands fa-pinterest fa-2xl socialicon "></i></a></li>
                        <li><a href="# "><i class="fa-brands fa-youtube fa-2xl socialicon "></i></a></li>
                    </ul>
                </div>
                <div class="col-md-3 footer-ns animated fadeInRight ">
                    <h4>Newsletter</h4>
                    <p>A rover wearing a fuzzy suit doesn’t alarm the real penguins</p>
                    <p>
                    <div class="input-group ">
                        <input class="form-control me-2 bg-light  glowing-border w-200 siz " type="search " placeholder="Type here..." required aria-label="Search ">
                        <span class="input-group-btn ">
                            <button class="btn btn-block btn-lg glow-button  " type="submit "><i
                                    class="fa-solid fa-envelope  fa-xl "></i></button>
                        </span>
                    </div>
                    <!-- /input-group -->
                    </p>
                </div>
            </div>
            <hr>
            <span class="align-items-center justify-content-center d-flex ">© 2007 CinesynC, All rights reserved</span>
        </footer>
        <!-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->


        <!-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->
    </body>

</html>