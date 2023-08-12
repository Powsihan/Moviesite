<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <!-- bootstrap link -->
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
            crossorigin="anonymous"
            />
        <!-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
        <!-- CSS stylesheet -->
        <link rel="stylesheet" href="./Styles/admin.css " />
        <link rel="stylesheet" href="./Styles/About_us.css " />
        <!-- ------------------------------------------------------------------->
        <!-- font awesome link -->
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
            integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
            crossorigin="anonymous"
            referrerpolicy="no-referrer"
            />
        <!--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
        <title>Admin| CinesynC</title>
    </head>
    <body>
        <div class="sidebar">
            <a class="active" href="./admin.jsp">DashBoard</a>
            <a href="./insert.jsp">Add Movie</a>
            <a href="./view.jsp">View Movies</a>
            <a href="./search.jsp">Search Movies</a>
            <a href="./update.jsp">Update Movies</a>
            <a href="./AdminLogin.html">Log Out</a>
        </div>


        <div class="content">
            <div class="container mt-5">
                <h1 class="text-center h1hed">Admin Panel</h1>
                <br>
                <hr>

                <!--Team Section-->
                <section id="team" class="team">
                    <div class="container text-white" data-aos="fade-up">

                        <div class="section-title">
                            <h2>Team</h2>
                            <p>Check our Team</p>
                        </div>

                        <div class="row">

                            <div class="col-lg-2 col-md-6 d-flex align-items-stretch">
                                <div class="member" data-aos="fade-up" data-aos-delay="100">
                                    <div class="member-img">
                                        <img src="./images/Powsi.jpg" class="img-fluid" alt="">
                                        <div class="social">
                                            <a href="# "><i class="fa-brands fa-facebook"></i></a>
                                            <a href="# "><i class="fa-brands fa-twitter"></i></a>
                                            <a href="# "><i class="fa-brands fa-instagram"></i></a>
                                            <a href="# "><i class="fa-brands fa-linkedin"></i></a>
                                        </div>
                                    </div>
                                    <div class="member-info">
                                        <h4>Powsi</h4>
                                        <span>Developer</span>
                                        <span style="font-size: 8px;font-weight: bold;padding-top: 5px">UWU-CST-20-008</span>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-2 col-md-6 d-flex align-items-stretch">
                                <div class="member" data-aos="fade-up" data-aos-delay="200">
                                    <div class="member-img">
                                        <img src="./images/Sasith.jpeg" class="img-fluid" alt="">
                                        <div class="social">
                                            <a href="# "><i class="fa-brands fa-facebook"></i></a>
                                            <a href="# "><i class="fa-brands fa-twitter"></i></a>
                                            <a href="# "><i class="fa-brands fa-instagram"></i></a>
                                            <a href="# "><i class="fa-brands fa-linkedin"></i></a>
                                        </div>
                                    </div>
                                    <div class="member-info">
                                        <h4>Sasith</h4>
                                        <span>Developer</span>
                                        <span style="font-size: 8px;font-weight: bold;padding-top: 5px">UWU-CST-20-010</span>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-2 col-md-6 d-flex align-items-stretch">
                                <div class="member" data-aos="fade-up" data-aos-delay="300">
                                    <div class="member-img">
                                        <img src="./images/dinuk.jpeg" class="img-fluid" alt="">
                                        <div class="social">
                                            <a href="# "><i class="fa-brands fa-facebook"></i></a>
                                            <a href="# "><i class="fa-brands fa-twitter"></i></a>
                                            <a href="# "><i class="fa-brands fa-instagram"></i></a>
                                            <a href="# "><i class="fa-brands fa-linkedin"></i></a>
                                        </div>
                                    </div>
                                    <div class="member-info">
                                        <h4>Dinuk </h4>
                                        <span>Developer</span>
                                        <span style="font-size: 8px;font-weight: bold;padding-top: 5px">UWU-CST-20-018</span>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-2 col-md-6 d-flex align-items-stretch">
                                <div class="member" data-aos="fade-up" data-aos-delay="400">
                                    <div class="member-img">
                                        <img src="./images/dinithi.jpg" class="img-fluid" alt="">
                                        <div class="social">
                                            <a href="# "><i class="fa-brands fa-facebook"></i></a>
                                            <a href="# "><i class="fa-brands fa-twitter"></i></a>
                                            <a href="# "><i class="fa-brands fa-instagram"></i></a>
                                            <a href="# "><i class="fa-brands fa-linkedin"></i></a>
                                        </div>
                                    </div>
                                    <div class="member-info">
                                        <h4>Dinithi</h4>
                                        <span>Developer</span>
                                        <span style="font-size: 8px;font-weight: bold;padding-top: 5px">UWU-CST-20-028</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-2 col-md-6 d-flex align-items-stretch">
                                <div class="member" data-aos="fade-up" data-aos-delay="400">
                                    <div class="member-img">
                                        <img src="./images/joshi.jpg" class="img-fluid" alt="">
                                        <div class="social">
                                            <a href="# "><i class="fa-brands fa-facebook"></i></a>
                                            <a href="# "><i class="fa-brands fa-twitter"></i></a>
                                            <a href="# "><i class="fa-brands fa-instagram"></i></a>
                                            <a href="# "><i class="fa-brands fa-linkedin"></i></a>
                                        </div>
                                    </div>
                                    <div class="member-info">
                                        <h4>Joshiga</h4>
                                        <span>Developer</span>
                                        <span style="font-size: 8px;font-weight: bold;padding-top: 5px">UWU-CST-20-047</span>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </section>
                <!-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->

            </div>
        </div>
    </body>
</html>
