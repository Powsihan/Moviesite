<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

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
        <link rel="stylesheet" href="./Styles/About_us.css">
        <link rel="stylesheet" href="./Styles/HeaderFooter.css">
        <!-- ------------------------------------------------------------------->
        <!-- font awesome link -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer"
              />
        <!--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
        <title>About_us | ReadO</title>
    </head>

    <body>
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
                            <a class="btn btn-outline-dark glow-button button-87 " href="./login.html"><i
                                    class="fa-solid fa-user icoon"></i>Login</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->


        <!--About Section -->
        <section id="about" class="about" style="margin-top: 100px;">
            <div class="container" data-aos="fade-up">
                <div class="section-title">
                    <h2>About us</h2>
                    <p>Who are we</p>
                </div>

                <div class="row">
                    <div class="col-lg-6 order-1 order-lg-2" data-aos="fade-left" data-aos-delay="100">
                        <img src="./images/logo.png" class=" img-fluid " alt=" " style="height: 200px">
                    </div>
                    <div class="col-lg-6 pt-4 pt-lg-0 order-2 order-lg-1 content " data-aos="fade-right " data-aos-delay="100 ">
                        <p class="fst-italic ">
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                        </p>
                        <ul>
                            <li><i class="fa-solid fa-check-double "></i> Ullamco laboris nisi ut aliquip ex ea commodo consequat.</li>
                            <li><i class="fa-solid fa-check-double "></i> Duis aute irure dolor in reprehenderit in voluptate velit.</li>
                            <li><i class="fa-solid fa-check-double "></i> Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate trideta storacalaperda mastiro dolore eu fugiat nulla pariatur.</li>
                        </ul>
                        <p>
                            Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident
                        </p>
                    </div>
                </div>

            </div>
        </section>
        <!--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->


        <!--Services Section -->
        <section id="services" class="services">
            <div class="container" data-aos="fade-up">

                <div class="section-title">
                    <h2>Services</h2>
                    <p>Check our Services</p>
                </div>

                <div class="row ">
                    <div class="col-lg-4 col-md-6 d-flex align-items-stretch " data-aos="zoom-in" data-aos-delay="100">
                        <div class="icon-box">
                            <div class="icon"><i class="fa-solid fa-ticket"></i></div>
                            <h4><a href="">Movie Reviews</a></h4>
                            <p>Movie review websites provide detailed reviews to help users make informed decisions...</p>
                            <a class="btn btn-outline-dark glow-button button-87 readmorebtn" href="#">Readmore<i class="fa-solid fa-caret-down fa-shake fa-xl icoon"></i></a>

                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4 mt-md-0" data-aos="zoom-in" data-aos-delay="200">
                        <div class="icon-box">
                            <div class="icon"><i class="fa-solid fa-star"></i></div>
                            <h4><a href="">Rating System</a></h4>
                            <p>Rating system helps users compare movies to other titles and informations...</p>
                            <a class="btn btn-outline-dark glow-button button-87 readmorebtn" href="#">Readmore<i class="fa-solid fa-caret-down fa-shake fa-xl icoon"></i></a>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4 mt-lg-0" data-aos="zoom-in" data-aos-delay="300">
                        <div class="icon-box">
                            <div class="icon"><i class="fa-solid fa-bookmark "></i></div>
                            <h4><a href="">Movie Blogging</a></h4>
                            <p>Movie blogs provide insights and perspectives on the literary world...</p>
                            <a class="btn btn-outline-dark glow-button button-87 readmorebtn" href="#">Readmore<i class="fa-solid fa-caret-down fa-shake fa-xl icoon"></i></a>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4" data-aos="zoom-in" data-aos-delay="100">
                        <div class="icon-box">
                            <div class="icon"><i class="fa-solid fa-circle-nodes "></i></div>
                            <h4><a href="">Movie Clubs</a></h4>
                            <p>Watching challenges foster a sense of community and encourage watching engagement...</p>
                            <a class="btn btn-outline-dark glow-button button-87 readmorebtn" href="#">Readmore<i class="fa-solid fa-caret-down fa-shake fa-xl icoon"></i></a>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4" data-aos="zoom-in" data-aos-delay="200">
                        <div class="icon-box">
                            <div class="icon"><i class="fa-solid fa-book-open-reader"></i></div>
                            <h4><a href="">Proofwatching Services</a></h4>
                            <p>Movie review websites offer editing and proofwatching services to authors...</p>
                            <a class="btn btn-outline-dark glow-button button-87 readmorebtn" href="#">Readmore<i class="fa-solid fa-caret-down fa-shake fa-xl icoon"></i></a>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4" data-aos="zoom-in" data-aos-delay="300">
                        <div class="icon-box">
                            <div class="icon"><i class="fa-solid fa-chart-simple "></i></div>
                            <h4><a href="">Movie Analysis</a></h4>
                            <p>Movie review websites explore literary criticism and analysis of Movies...</p>
                            <a class="btn btn-outline-dark glow-button button-87 readmorebtn" href="#">Readmore<i class="fa-solid fa-caret-down fa-shake fa-xl icoon"></i></a>
                        </div>
                    </div>

                </div>

            </div>
        </section>
        <!--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->

        <!--Experinece Section -->
        <section id="counts" class="counts">
            <div class="container text-light" data-aos="fade-up">
                <div class="section-title">
                    <h2>Experience</h2>
                    <p>Who we archeived</p>
                </div>

                <div class="row no-gutters">
                    <div class="image col-xl-5 d-flex align-items-stretch justify-content-center justify-content-lg-start" data-aos="fade-right" data-aos-delay="100"></div>
                    <div class="col-xl-7 ps-4 ps-lg-5 pe-4 pe-lg-1 d-flex align-items-stretch" data-aos="fade-left" data-aos-delay="100">
                        <div class="content d-flex flex-column justify-content-center">
                            <h3>Voluptatem dignissimos provident quasi</h3>
                            <p style="color: black">
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Duis aute irure dolor in reprehenderit
                            </p>
                            <div class="row">
                                <div class="col-md-6 d-md-flex align-items-md-stretch">
                                    <div class="count-box">
                                        <i class="fa-solid fa-face-smile"></i>
                                        <span data-purecounter-start="0" data-purecounter-end="65" data-purecounter-duration="2" class="purecounter"></span>
                                        <p><strong class="exper">Happy Clients</strong> consequuntur voluptas nostrum aliquid ipsam architecto ut.</p>
                                    </div>
                                </div>

                                <div class="col-md-6 d-md-flex align-items-md-stretch">
                                    <div class="count-box">
                                        <i class="fa-solid fa-envelope-open-text"></i>
                                        <span data-purecounter-start="0" data-purecounter-end="85" data-purecounter-duration="2" class="purecounter"></span>
                                        <p><strong class="exper">Projects</strong> adipisci atque cum quia aspernatur totam laudantium et quia dere tan</p>
                                    </div>
                                </div>

                                <div class="col-md-6 d-md-flex align-items-md-stretch">
                                    <div class="count-box">
                                        <i class="fa-solid fa-hourglass-end"></i>
                                        <span data-purecounter-start="0" data-purecounter-end="35" data-purecounter-duration="4" class="purecounter"></span>
                                        <p><strong class="exper">Years of experience</strong> aut commodi quaerat modi aliquam nam ducimus aut voluptate non vel</p>
                                    </div>
                                </div>

                                <div class="col-md-6 d-md-flex align-items-md-stretch">
                                    <div class="count-box">
                                        <i class="fa-solid fa-award"></i>
                                        <span data-purecounter-start="0" data-purecounter-end="20" data-purecounter-duration="4" class="purecounter"></span>
                                        <p><strong class="exper">Awards</strong> rerum asperiores dolor alias quo reprehenderit eum et nemo pad der</p>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

            </div>
        </section>
        <!--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->

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
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </section>
        <!-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->


        <!----------- Footer ------------>
        <footer class="footer-bs">
            <div class="row ">
                <div class="col-md-3 footer-brand animated fadeInLeft ">
                    <img src="/images/logo.png " alt="logo " style="height:70px; width: 110px; ">
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


        <script src="/JS File/About_us.js"></script>



    </body>

</html>