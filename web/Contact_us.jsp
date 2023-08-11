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
    <link rel="stylesheet" href="./Styles/Contact_us.css">
    <link rel="stylesheet" href="./Styles/HeaderFooter.css">
    <!-- ------------------------------------------------------------------->
    <!-- font awesome link -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer"
    />
    <!--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
    <title>Contact_us | ReadO</title>
</head>

<body>

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

    <!-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->



    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
        <div class="container" data-aos="fade-up">

            <div class="section-title">
                <h2>Contact</h2>
                <p>Contact Us</p>
            </div>


            <div class="row mt-5">

                <div class="col-lg-4 ">
                    <div class="info">
                        <div class="infoicon">
                            <a href="# "><i class="fa-brands fa-facebook fa-2xl socialicon "></i></a>
                            <h4>Facebook: </h4>
                            <p>ReadO</p>
                        </div>
                        <div class="infoicon">
                            <i class="fa-solid fa-envelope fa-2xl socialicon "></i>
                            <h4>Email:</h4>
                            <p>ReadO_07@hotmail.com</p>
                        </div>
                        <div class="infoicon">
                            <a href="# "><i class="fa-brands fa-instagram fa-2xl socialicon "></i></a>
                            <h4>Instragram:</h4>
                            <p>ReadO</p>
                        </div>
                        <div class="infoicon">
                            <a href="# "><i class="fa-brands fa-twitter fa-2xl socialicon "></i></a>
                            <h4>twitter:</h4>
                            <p>ReadO_07@hotmail.com</p>
                        </div>
                        <div class="infoicon">
                            <a href="# "><i class="fa-solid fa-phone fa-2xl socialicon "></i></a>
                            <h4>Call:</h4>
                            <p>+11 558 554 5577</p>
                        </div>
                    </div>

                </div>

                <div class="col-lg-8 mt-5 mt-lg-0">

                    <form action="contact.jsp" method="POST" role="form" class="php-email-form">
                        <div class="row">
                            <div class="col-md-6 form-group">
                                <input type="text" name="name" class="me-2 bg-light glowing-border w-200 siz2" id="name" placeholder="Your Name" required>
                            </div>
                            <div class="col-md-6 form-group mt-3 mt-md-0">
                                <input type="email" class="me-2 bg-light  glowing-border w-200 siz2" name="email" id="email" placeholder="Your Email" required>
                            </div>
                        </div>
                        <div class="form-group mt-3">
                            <input type="text" class="me-2 bg-light  glowing-border siz2" name="subject" id="subject" placeholder="Subject" required>
                        </div>
                        <div class="form-group mt-3">
                            <textarea class="me-2 bg-light glowing-border siz3" name="message" rows="5" placeholder="Type here...." required></textarea>
                        </div>
                        <div class="my-3">
                            <div class="loading">Loading</div>
                            <div class="error-message"></div>
                            <div class="sent-message">Your message has been sent. Thank you!</div>
                        </div>
                        <div class="text-center"><button class="btn btn-outline-dark glow-button button-87" type="submit">Send Message<i class="fa-solid fa-envelope fa-xl icoon "></i></button></div>
                        <!-- <a class="btn btn-outline-dark glow-button buutt " href="#">Send Message <i
                            class="fa-solid fa-envelope icoon"></i></a> -->
                    </form>

                </div>

            </div>

        </div>
    </section>
    <!-- End Contact Section -->

  <!----------- Footer ------------>
    <footer class="footer-bs">
        <div class="row ">
            <div class="col-md-3 footer-brand animated fadeInLeft ">
                <img src="/images/logo.png " alt="logo " style="height:70px; width: 110px; ">
                <p>Suspendisse hendrerit tellus laoreet luctus pharetra. Aliquam porttitor vitae orci nec ultricies. Curabitur vehicula, libero eget faucibus faucibus, purus erat eleifend enim, porta pellentesque ex mi ut sem.</p>
                <p>� 2007 CinesynC, All rights reserved</p>
            </div>
            <div class="col-md-4 footer-nav animated fadeInUp ">
                <h4>Menu ?</h4>

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
                <p>A rover wearing a fuzzy suit doesn?t alarm the real penguins</p>
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
        <span class="align-items-center justify-content-center d-flex ">� 2007 CinesynC, All rights reserved</span>
    </footer>
    <!-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->


    <script src="/JS File/Contact_us.js"></script>

</body>

</html>