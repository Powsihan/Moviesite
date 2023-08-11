<%@page import="java.util.Base64"%>
<%@page import="java.util.List"%>
<%@page import="classes.DbConnector"%>
<%@page import="movies.BookDetails"%>
<!DOCTYPE html>

<%
    List<BookDetails> mLove = BookDetails.retrieveMovieData(DbConnector.getConnection(), "love");
    List<BookDetails> mHistorical = BookDetails.retrieveMovieData(DbConnector.getConnection(), "historical");
    List<BookDetails> mFiction = BookDetails.retrieveMovieData(DbConnector.getConnection(), "fiction");
    List<BookDetails> mHorror = BookDetails.retrieveMovieData(DbConnector.getConnection(), "horror");


%>


<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- bootstrap link -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
        <!-- <link href='https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css' rel='stylesheet'> -->
        <!-- CSS stylesheet -->
        <link rel="stylesheet" href="./Styles/Categories.css">
        <link rel="stylesheet" href="./Styles/HeaderFooter.css">
        <!-- ----------------------------------------------------------------- -->
        <!-- font awesome link -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer"
              />
        <script type='text/javascript' src='https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js'></script>
        <!-- <script type='text/javascript' src='https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js'></script> -->
        <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>

        <link href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css' rel='stylesheet'>
        <!-- Title -->
        <title>Categories|ReadO</title>
        <!-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->


    </head>

    <body oncontextmenu='return false' class='snippet-body'>
        <!-- bootstrap link -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>

        <!-- bootstrap link  end -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


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
                            <a class="nav-link active " href="./Contact_us.jsp?id=1"><i class="fa-solid fa-headset icoon"></i>Contact Us</a>
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

        <section style="margin-top: 150px;">
            <div class="container">
                <div class="row justify-content-between align-items-center">
                    <div class="col-auto ">
                        <h3 class="me-2 hed">Historical</h3>
                    </div>
                    <div class="col-auto text-right ">
                        <a class="btn btn-primary me-2" href="#carouselExampleIndicators1" role="button" data-bs-slide="prev">
                            <i class="fa fa-arrow-left"></i>
                        </a>
                        <a class="btn btn-primary  " href="#carouselExampleIndicators1" role="button" data-bs-slide="next">
                            <i class="fa fa-arrow-right"></i>
                        </a>
                    </div>
                    <div class="col-12">
                        <div id="carouselExampleIndicators1" class="carousel slide" data-bs-ride="carousel">
                            <div class="slide">
                                <div class="carousel-inner">
                                    <div class="carousel-item active">
                                        <div class="row">
                                            <%                                                for (BookDetails movie : mHistorical) {
                                            %>
                                            <!-- card 1 -->
                                            <div class="col-sm-3">
                                                <div class="thumb-wrapper">
                                                    <!-- <span class="wish-icon"><i class="fa fa-heart-o"></i></span> -->
                                                    <div class="img-box">
                                                        <img src="data:image/jpg;charset=utf8;base64,<%=Base64.getEncoder().encodeToString(movie.getImage())%>" alt="" >

                                                    </div>
                                                    <div class="thumb-content">
                                                        <h4><%=movie.getTitle()%></h4>
                                                        <div class="star-rating">
                                                            <ul class="list-inline">
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                            </ul>
                                                        </div>
                                                        <p class="card-text">Director: <%=movie.getAuthor()%></p>
                                                        <p class="card-text">Movie ID: <%=movie.getISBN()%></p>
                                                        <p class="card-text">Release Date: <%=movie.getPublicationDate()%></p>
                                                        <div class="revbtn">
                                                            <a href="./Reviewpage.jsp?isbn=<%=movie.getISBN()%>" class="btn btn-primary">Review</a>
                                                            <a href="./subscribe.jsp?isbn=<%=movie.getISBN()%>" class="btn btn-primary">Buy</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <%}%>
                                        </div>
                                    </div>
                                    <div class="carousel-item">
                                        <div class="row">
                                            <div class="col-sm-3">
                                                <div class="thumb-wrapper">
                                                    <span class="wish-icon"><i class="fa fa-heart-o"></i></span> 
                                                    <div class="img-box">
                                                        <img src="./images/historical/egyptian-history-book-cover-design-kindle-template-667f6bee0169950643c88e90bdc513ed.jpg" class="img-fluid" alt="Play Station">
                                                    </div>
                                                    <div class="thumb-content">
                                                        <div class="thumb-content">
                                                            <h4>Apple iPad</h4>
                                                            <div class="star-rating">
                                                                <ul class="list-inline">
                                                                    <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                    <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                    <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                    <li class="list-inline-item"><i class="fa fa-star-half-o"></i></li>
                                                                    <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                                </ul>
                                                            </div>
                                                            <p class="card-text">Author: Book Author</p>
                                                            <p class="card-text">ISBN: 1234567890</p>
                                                            <p class="card-text">Publication Date: 01.01.2023</p>
                                                            <div class="revbtn">
                                                                <a href="#" class="btn btn-primary">Review</a>
                                                                <a href="#" class="btn btn-primary">Buy</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-sm-3">
                                                <div class="thumb-wrapper">
                                                    <span class="wish-icon"><i class="fa fa-heart-o"></i></span> 
                                                    <div class="img-box">
                                                        <img src="./images/historical/fantasy-adventure-book-cover-design-template-33853fe3b0f3f4403a224233e5b16e11.jpg" class="img-fluid" alt="Macbook">
                                                    </div>
                                                    <div class="thumb-content">
                                                        <h4>Apple iPad</h4>
                                                        <div class="star-rating">
                                                            <ul class="list-inline">
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                            </ul>
                                                        </div>
                                                        <p class="card-text">Author: Book Author</p>
                                                        <p class="card-text">ISBN: 1234567890</p>
                                                        <p class="card-text">Publication Date: 01.01.2023</p>
                                                        <div class="revbtn">
                                                            <a href="#" class="btn btn-primary">Review</a>
                                                            <a href="#" class="btn btn-primary">Buy</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-sm-3">
                                                <div class="thumb-wrapper">
                                                    <span class="wish-icon"><i class="fa fa-heart-o"></i></span> 
                                                    <div class="img-box">
                                                        <img src="./images/historical/fantasy-book-cover-template-design-503124a16cf2b0c8aefe8b145970feac.jpg" class="img-fluid" alt="Speaker">
                                                    </div>
                                                    <div class="thumb-content">
                                                        <h4>Apple iPad</h4>
                                                        <div class="star-rating">
                                                            <ul class="list-inline">
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                            </ul>
                                                        </div>
                                                        <p class="card-text">Author: Book Author</p>
                                                        <p class="card-text">ISBN: 1234567890</p>
                                                        <p class="card-text">Publication Date: 01.01.2023</p>
                                                        <div class="revbtn">
                                                            <a href="#" class="btn btn-primary">Review</a>
                                                            <a href="#" class="btn btn-primary">Buy</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-sm-3">
                                                <div class="thumb-wrapper">
                                                    <span class="wish-icon"><i class="fa fa-heart-o"></i></span> 
                                                    <div class="img-box">
                                                        <img src="./images/historical/gff.jpg" class="img-fluid" alt="Galaxy">
                                                    </div>
                                                    <div class="thumb-content">
                                                        <h4>Apple iPad</h4>
                                                        <div class="star-rating">
                                                            <ul class="list-inline">
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                            </ul>
                                                        </div>
                                                        <p class="card-text">Author: Book Author</p>
                                                        <p class="card-text">ISBN: 1234567890</p>
                                                        <p class="card-text">Publication Date: 01.01.2023</p>
                                                        <div class="revbtn">
                                                            <a href="#" class="btn btn-primary">Review</a>
                                                            <a href="#" class="btn btn-primary">Buy</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="carousel-item">
                                        <div class="row">
                                            <div class="col-sm-3">
                                                <div class="thumb-wrapper">
                                                    <span class="wish-icon"><i class="fa fa-heart-o"></i></span> 
                                                    <div class="img-box">
                                                        <img src="./images/historical/kindle,-book-covers-design-template-0d870083ceffa87adb0e22c71d7db38d.jpg" class="img-fluid" alt="iPhone">
                                                    </div>
                                                    <div class="thumb-content">
                                                        <h4>Apple iPad</h4>
                                                        <div class="star-rating">
                                                            <ul class="list-inline">
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                            </ul>
                                                        </div>
                                                        <p class="card-text">Author: Book Author</p>
                                                        <p class="card-text">ISBN: 1234567890</p>
                                                        <p class="card-text">Publication Date: 01.01.2023</p>
                                                        <div class="revbtn">
                                                            <a href="#" class="btn btn-primary">Review</a>
                                                            <a href="#" class="btn btn-primary">Buy</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-sm-3">
                                                <div class="thumb-wrapper">
                                                    <span class="wish-icon"><i class="fa fa-heart-o"></i></span> 
                                                    <div class="img-box">
                                                        <img src="./images/historical/mystery-story-book-cover-design-template-fbe84584c2d9d8df9f17908d512018cb.jpg" class="img-fluid" alt="Canon">
                                                    </div>
                                                    <div class="thumb-content">
                                                        <h4>Apple iPad</h4>
                                                        <div class="star-rating">
                                                            <ul class="list-inline">
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                            </ul>
                                                        </div>
                                                        <p class="card-text">Author: Book Author</p>
                                                        <p class="card-text">ISBN: 1234567890</p>
                                                        <p class="card-text">Publication Date: 01.01.2023</p>
                                                        <div class="revbtn">
                                                            <a href="#" class="btn btn-primary">Review</a>
                                                            <a href="#" class="btn btn-primary">Buy</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-sm-3">
                                                <div class="thumb-wrapper">
                                                    <span class="wish-icon"><i class="fa fa-heart-o"></i></span> 
                                                    <div class="img-box">
                                                        <img src="./images/historical/rtrt.jpg" class="img-fluid" alt="Pixel">
                                                    </div>
                                                    <div class="thumb-content">
                                                        <h4>Apple iPad</h4>
                                                        <div class="star-rating">
                                                            <ul class="list-inline">
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                            </ul>
                                                        </div>
                                                        <p class="card-text">Author: Book Author</p>
                                                        <p class="card-text">ISBN: 1234567890</p>
                                                        <p class="card-text">Publication Date: 01.01.2023</p>
                                                        <div class="revbtn">
                                                            <a href="#" class="btn btn-primary">Review</a>
                                                            <a href="#" class="btn btn-primary">Buy</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-sm-3">
                                                <div class="thumb-wrapper">
                                                    <span class="wish-icon"><i class="fa fa-heart-o"></i></span> 
                                                    <div class="img-box">
                                                        <img src="./images/historical/vintage-book-cover-design-template-0f7f2cf1fda9f2f7bf4d7ffdba2fca30.jpg" class="img-fluid" alt="Watch">
                                                    </div>
                                                    <div class="thumb-content">
                                                        <h4>Apple iPad</h4>
                                                        <div class="star-rating">
                                                            <ul class="list-inline">
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                            </ul>
                                                        </div>
                                                        <p class="card-text">Author: Book Author</p>
                                                        <p class="card-text">ISBN: 1234567890</p>
                                                        <p class="card-text">Publication Date: 01.01.2023</p>
                                                        <div class="revbtn">
                                                            <a href="#" class="btn btn-primary">Review</a>
                                                            <a href="#" class="btn btn-primary">Buy</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- card end -->
                                        </div>
                                    </div>

                                </div>


                            </div>
                        </div>
                    </div>

                    </section>

                    <section style="margin-top: 150px;">
                        <div class="container">
                            <div class="row justify-content-between align-items-center">
                                <div class="col-auto ">
                                    <h3 class="me-2 hed">Fiction</h3>
                                </div>
                                <div class="col-auto text-right ">
                                    <a class="btn btn-primary me-2" href="#carouselExampleIndicators2" role="button" data-bs-slide="prev">
                                        <i class="fa fa-arrow-left"></i>
                                    </a>
                                    <a class="btn btn-primary  " href="#carouselExampleIndicators2" role="button" data-bs-slide="next">
                                        <i class="fa fa-arrow-right"></i>
                                    </a>
                                </div>
                                <div class="col-12">
                                    <div id="carouselExampleIndicators2" class="carousel slide" data-bs-ride="carousel">
                                        <div class="slide">
                                            <div class="carousel-inner">
                                                <div class="carousel-item active">
                                                    <div class="row">
                                                        <%
                                                            for (BookDetails movie : mFiction) {
                                                        %>
                                                        <!-- card 1 -->
                                                        <div class="col-sm-3">
                                                            <div class="thumb-wrapper">
                                                                <!-- <span class="wish-icon"><i class="fa fa-heart-o"></i></span> -->
                                                                <div class="img-box">
                                                                    <img src="data:image/jpg;charset=utf8;base64,<%=Base64.getEncoder().encodeToString(movie.getImage())%>" alt="" >

                                                                </div>
                                                                <div class="thumb-content">
                                                                    <h4><%=movie.getTitle()%></h4>
                                                                    <div class="star-rating">
                                                                        <ul class="list-inline">
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                                        </ul>
                                                                    </div>
                                                                    <p class="card-text">Director: <%=movie.getAuthor()%></p>
                                                                    <p class="card-text">Movie ID: <%=movie.getISBN()%></p>
                                                                    <p class="card-text">Release Date: <%=movie.getPublicationDate()%></p>
                                                                    <div class="revbtn">
                                                                        <a href="./Reviewpage.jsp?isbn=<%=movie.getISBN()%>" class="btn btn-primary">Review</a>
                                                                        <a href="./subscribe.jsp?isbn=<%=movie.getISBN()%>" class="btn btn-primary">Buy</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <%}%>
                                                    </div>
                                                </div>
                                                <!-- card 5 -->
                                                <div class="carousel-item">
                                                    <div class="row">
                                                        <div class="col-sm-3">
                                                            <div class="thumb-wrapper">
                                                                <span class="wish-icon"><i class="fa fa-heart-o"></i></span>
                                                                <div class="img-box">
                                                                    <img src="./images/fiction-img/fairy-dragon-book-cover-design-template-c7ca69cf28016950d9d6f4ffa8af01c8.jpg" class="img-fluid" alt="Play Station">
                                                                </div>
                                                                <div class="thumb-content">
                                                                    <div class="thumb-content">
                                                                        <h4>Dragon Stories</h4>
                                                                        <div class="star-rating">
                                                                            <ul class="list-inline">
                                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                                <li class="list-inline-item"><i class="fa fa-star-half-o"></i></li>
                                                                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                                            </ul>
                                                                        </div>
                                                                        <p class="card-text">Author: Book Author</p>
                                                                        <p class="card-text">ISBN: 1234567890</p>
                                                                        <p class="card-text">Publication Date: 01.01.2023</p>
                                                                        <div class="revbtn">
                                                                            <a href="#" class="btn btn-primary">Review</a>
                                                                            <a href="#" class="btn btn-primary">Buy</a>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!-- card 6 -->
                                                        <div class="col-sm-3">
                                                            <div class="thumb-wrapper">
                                                                <span class="wish-icon"><i class="fa fa-heart-o"></i></span>
                                                                <div class="img-box">
                                                                    <img src="./images/fiction-img/fantasy-fiction-book-cover-design-template-6cde0f76e3bcb214fe1eedfead18fef4.jpg" class="img-fluid" alt="Macbook">
                                                                </div>
                                                                <div class="thumb-content">
                                                                    <h4>Ice & Fire</h4>
                                                                    <div class="star-rating">
                                                                        <ul class="list-inline">
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                                        </ul>
                                                                    </div>
                                                                    <p class="card-text">Author: Book Author</p>
                                                                    <p class="card-text">ISBN: 1234567890</p>
                                                                    <p class="card-text">Publication Date: 01.01.2023</p>
                                                                    <div class="revbtn">
                                                                        <a href="#" class="btn btn-primary">Review</a>
                                                                        <a href="#" class="btn btn-primary">Buy</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!-- card 7 -->
                                                        <div class="col-sm-3">
                                                            <div class="thumb-wrapper">
                                                                <span class="wish-icon"><i class="fa fa-heart-o"></i></span>
                                                                <div class="img-box">
                                                                    <img src="./images/fiction-img/motivational-self-help-book-cover-design-template-549362a7c9d568279e866eb81510239c.jpg" class="img-fluid" alt="Speaker">
                                                                </div>
                                                                <div class="thumb-content">
                                                                    <h4>RAW</h4>
                                                                    <div class="star-rating">
                                                                        <ul class="list-inline">
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                                        </ul>
                                                                    </div>
                                                                    <p class="card-text">Author: Book Author</p>
                                                                    <p class="card-text">ISBN: 1234567890</p>
                                                                    <p class="card-text">Publication Date: 01.01.2023</p>
                                                                    <div class="revbtn">
                                                                        <a href="#" class="btn btn-primary">Review</a>
                                                                        <a href="#" class="btn btn-primary">Buy</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!-- card 8 -->
                                                        <div class="col-sm-3">
                                                            <div class="thumb-wrapper">
                                                                <span class="wish-icon"><i class="fa fa-heart-o"></i></span>
                                                                <div class="img-box">
                                                                    <img src="./images/fiction-img/self-help-non-fiction-book-cover-design-template-c570943c147db3ea1d5b4465a333756a.jpg" class="img-fluid" alt="Galaxy">
                                                                </div>
                                                                <div class="thumb-content">
                                                                    <h4>Time</h4>
                                                                    <div class="star-rating">
                                                                        <ul class="list-inline">
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                                        </ul>
                                                                    </div>
                                                                    <p class="card-text">Author: Book Author</p>
                                                                    <p class="card-text">ISBN: 1234567890</p>
                                                                    <p class="card-text">Publication Date: 01.01.2023</p>
                                                                    <div class="revbtn">
                                                                        <a href="#" class="btn btn-primary">Review</a>
                                                                        <a href="#" class="btn btn-primary">Buy</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- card 9 -->
                                                <div class="carousel-item">
                                                    <div class="row">
                                                        <div class="col-sm-3">
                                                            <div class="thumb-wrapper">
                                                                <span class="wish-icon"><i class="fa fa-heart-o"></i></span>
                                                                <div class="img-box">
                                                                    <img src="./images/fiction-img/mazed.jpg" class="img-fluid" alt="iPhone">
                                                                </div>
                                                                <div class="thumb-content">
                                                                    <h4>Mazed</h4>
                                                                    <div class="star-rating">
                                                                        <ul class="list-inline">
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                                        </ul>
                                                                    </div>
                                                                    <p class="card-text">Author: Book Author</p>
                                                                    <p class="card-text">ISBN: 1234567890</p>
                                                                    <p class="card-text">Publication Date: 01.01.2023</p>
                                                                    <div class="revbtn">
                                                                        <a href="#" class="btn btn-primary">Review</a>
                                                                        <a href="#" class="btn btn-primary">Buy</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!-- card 10 -->
                                                        <div class="col-sm-3">
                                                            <div class="thumb-wrapper">
                                                                <span class="wish-icon"><i class="fa fa-heart-o"></i></span>
                                                                <div class="img-box">
                                                                    <img src="./images/fiction-img/invisible.jpg" class="img-fluid" alt="Canon">
                                                                </div>
                                                                <div class="thumb-content">
                                                                    <h4>Invisible</h4>
                                                                    <div class="star-rating">
                                                                        <ul class="list-inline">
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                                        </ul>
                                                                    </div>
                                                                    <p class="card-text">Author: Book Author</p>
                                                                    <p class="card-text">ISBN: 1234567890</p>
                                                                    <p class="card-text">Publication Date: 01.01.2023</p>
                                                                    <div class="revbtn">
                                                                        <a href="#" class="btn btn-primary">Review</a>
                                                                        <a href="#" class="btn btn-primary">Buy</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!-- card 11 -->
                                                        <div class="col-sm-3">
                                                            <div class="thumb-wrapper">
                                                                <span class="wish-icon"><i class="fa fa-heart-o"></i></span>
                                                                <div class="img-box">
                                                                    <img src="./images/fiction-img/triumph-self-help-non-fiction-book-cover-design-template-d766701badb7cb128d02295267b5e96b.jpg" class="img-fluid" alt="Pixel">
                                                                </div>
                                                                <div class="thumb-content">
                                                                    <h4>PT</h4>
                                                                    <div class="star-rating">
                                                                        <ul class="list-inline">
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                                        </ul>
                                                                    </div>
                                                                    <p class="card-text">Author: Book Author</p>
                                                                    <p class="card-text">ISBN: 1234567890</p>
                                                                    <p class="card-text">Publication Date: 01.01.2023</p>
                                                                    <div class="revbtn">
                                                                        <a href="#" class="btn btn-primary">Review</a>
                                                                        <a href="#" class="btn btn-primary">Buy</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!-- card 12 -->
                                                        <div class="col-sm-3">
                                                            <div class="thumb-wrapper">
                                                                <span class="wish-icon"><i class="fa fa-heart-o"></i></span>
                                                                <div class="img-box">
                                                                    <img src="./images/fiction-img/dream mesina.jpg" class="img-fluid" alt="Watch">
                                                                </div>
                                                                <div class="thumb-content">
                                                                    <h4>Dream Machina</h4>
                                                                    <div class="star-rating">
                                                                        <ul class="list-inline">
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                                        </ul>
                                                                    </div>
                                                                    <p class="card-text">Author: Book Author</p>
                                                                    <p class="card-text">ISBN: 1234567890</p>
                                                                    <p class="card-text">Publication Date: 01.01.2023</p>
                                                                    <div class="revbtn">
                                                                        <a href="#" class="btn btn-primary">Review</a>
                                                                        <a href="#" class="btn btn-primary">Buy</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!-- card end -->
                                                    </div>
                                                </div>
                                            </div>
                                        </div>


                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>

                    <section style="margin-top: 150px;">
                        <div class="container">
                            <div class="row justify-content-between align-items-center">
                                <div class="col-auto ">
                                    <h3 class="me-2 hed">Horror</h3>
                                </div>
                                <div class="col-auto text-right ">
                                    <a class="btn btn-primary me-2" href="#carouselExampleIndicators3" role="button" data-bs-slide="prev">
                                        <i class="fa fa-arrow-left"></i>
                                    </a>
                                    <a class="btn btn-primary  " href="#carouselExampleIndicators3" role="button" data-bs-slide="next">
                                        <i class="fa fa-arrow-right"></i>
                                    </a>
                                </div>
                                <div class="col-12">
                                    <div id="carouselExampleIndicators3" class="carousel slide" data-bs-ride="carousel">
                                        <div class="slide">
                                            <div class="carousel-inner">
                                                <div class="carousel-item active">
                                                    <div class="row">
                                                        <%
                                                            for (BookDetails movie : mHorror) {
                                                        %>
                                                        <!-- card 1 -->
                                                        <div class="col-sm-3">
                                                            <div class="thumb-wrapper">
                                                                <!-- <span class="wish-icon"><i class="fa fa-heart-o"></i></span> -->
                                                                <div class="img-box">
                                                                    <img src="data:image/jpg;charset=utf8;base64,<%=Base64.getEncoder().encodeToString(movie.getImage())%>" alt="" >

                                                                </div>
                                                                <div class="thumb-content">
                                                                    <h4><%=movie.getTitle()%></h4>
                                                                    <div class="star-rating">
                                                                        <ul class="list-inline">
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                                        </ul>
                                                                    </div>
                                                                    <p class="card-text">Director: <%=movie.getAuthor()%></p>
                                                                    <p class="card-text">Movie ID: <%=movie.getISBN()%></p>
                                                                    <p class="card-text">Release Date: <%=movie.getPublicationDate()%></p>
                                                                    <div class="revbtn">
                                                                        <a href="./Reviewpage.jsp?isbn=<%=movie.getISBN()%>" class="btn btn-primary">Review</a>
                                                                        <a href="./subscribe.jsp?isbn=<%=movie.getISBN()%>" class="btn btn-primary">Buy</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <%}%>
                                                    </div>
                                                </div>
                                                <!-- card 5 -->
                                                <div class="carousel-item">
                                                    <div class="row">
                                                        <div class="col-sm-3">
                                                            <div class="thumb-wrapper">
                                                                <span class="wish-icon"><i class="fa fa-heart-o"></i></span>
                                                                <div class="img-box">
                                                                    <img src="./images/horror-img/deadly-warehouse-horror-book-cover-design-template-4e6067be6988d5e3cafbd5b57a19df91.jpg" class="img-fluid" alt="Play Station">
                                                                </div>
                                                                <div class="thumb-content">
                                                                    <div class="thumb-content">
                                                                        <h4>Apple iPad</h4>
                                                                        <div class="star-rating">
                                                                            <ul class="list-inline">
                                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                                <li class="list-inline-item"><i class="fa fa-star-half-o"></i></li>
                                                                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                                            </ul>
                                                                        </div>
                                                                        <p class="card-text">Author: Book Author</p>
                                                                        <p class="card-text">ISBN: 1234567890</p>
                                                                        <p class="card-text">Publication Date: 01.01.2023</p>
                                                                        <div class="revbtn">
                                                                            <a href="#" class="btn btn-primary">Review</a>
                                                                            <a href="#" class="btn btn-primary">Buy</a>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!-- card 6 -->
                                                        <div class="col-sm-3">
                                                            <div class="thumb-wrapper">
                                                                <span class="wish-icon"><i class="fa fa-heart-o"></i></span>
                                                                <div class="img-box">
                                                                    <img src="./images/horror-img/grey-halloween-kindle-cover-template-design-4d053270245906872cef9cb99abd1a67.jpg" class="img-fluid" alt="Macbook">
                                                                </div>
                                                                <div class="thumb-content">
                                                                    <h4>Apple iPad</h4>
                                                                    <div class="star-rating">
                                                                        <ul class="list-inline">
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                                        </ul>
                                                                    </div>
                                                                    <p class="card-text">Author: Book Author</p>
                                                                    <p class="card-text">ISBN: 1234567890</p>
                                                                    <p class="card-text">Publication Date: 01.01.2023</p>
                                                                    <div class="revbtn">
                                                                        <a href="#" class="btn btn-primary">Review</a>
                                                                        <a href="#" class="btn btn-primary">Buy</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!-- card 7 -->
                                                        <div class="col-sm-3">
                                                            <div class="thumb-wrapper">
                                                                <span class="wish-icon"><i class="fa fa-heart-o"></i></span>
                                                                <div class="img-box">
                                                                    <img src="./images/horror-img/haunted-house-horror-book-cover-design-template-fd3a8016a4128af962549c3c40190270.jpg" class="img-fluid" alt="Speaker">
                                                                </div>
                                                                <div class="thumb-content">
                                                                    <h4>Apple iPad</h4>
                                                                    <div class="star-rating">
                                                                        <ul class="list-inline">
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                                        </ul>
                                                                    </div>
                                                                    <p class="card-text">Author: Book Author</p>
                                                                    <p class="card-text">ISBN: 1234567890</p>
                                                                    <p class="card-text">Publication Date: 01.01.2023</p>
                                                                    <div class="revbtn">
                                                                        <a href="#" class="btn btn-primary">Review</a>
                                                                        <a href="#" class="btn btn-primary">Buy</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!-- card 8 -->
                                                        <div class="col-sm-3">
                                                            <div class="thumb-wrapper">
                                                                <span class="wish-icon"><i class="fa fa-heart-o"></i></span>
                                                                <div class="img-box">
                                                                    <img src="./images/horror-img/deadly-warehouse-horror-book-cover-design-template-4e6067be6988d5e3cafbd5b57a19df91.jpg" class="img-fluid" alt="Galaxy">
                                                                </div>
                                                                <div class="thumb-content">
                                                                    <h4>Apple iPad</h4>
                                                                    <div class="star-rating">
                                                                        <ul class="list-inline">
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                                        </ul>
                                                                    </div>
                                                                    <p class="card-text">Author: Book Author</p>
                                                                    <p class="card-text">ISBN: 1234567890</p>
                                                                    <p class="card-text">Publication Date: 01.01.2023</p>
                                                                    <div class="revbtn">
                                                                        <a href="#" class="btn btn-primary">Review</a>
                                                                        <a href="#" class="btn btn-primary">Buy</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- card 9 -->
                                                <div class="carousel-item">
                                                    <div class="row">
                                                        <div class="col-sm-3">
                                                            <div class="thumb-wrapper">
                                                                <span class="wish-icon"><i class="fa fa-heart-o"></i></span>
                                                                <div class="img-box">
                                                                    <img src="./images/horror-img/murder-mystery-book-cover-design-template-2a1a3ff53d7a9d851046c5e1fdf3943f.jpg" class="img-fluid" alt="iPhone">
                                                                </div>
                                                                <div class="thumb-content">
                                                                    <h4>Apple iPad</h4>
                                                                    <div class="star-rating">
                                                                        <ul class="list-inline">
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                                        </ul>
                                                                    </div>
                                                                    <p class="card-text">Author: Book Author</p>
                                                                    <p class="card-text">ISBN: 1234567890</p>
                                                                    <p class="card-text">Publication Date: 01.01.2023</p>
                                                                    <div class="revbtn">
                                                                        <a href="#" class="btn btn-primary">Review</a>
                                                                        <a href="#" class="btn btn-primary">Buy</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!-- card 10 -->
                                                        <div class="col-sm-3">
                                                            <div class="thumb-wrapper">
                                                                <span class="wish-icon"><i class="fa fa-heart-o"></i></span>
                                                                <div class="img-box">
                                                                    <img src="./images/horror-img/orange-halloween-kindle-cover-design-template-205384db0e35dc94e8130fa26114d048.jpg" class="img-fluid" alt="Canon">
                                                                </div>
                                                                <div class="thumb-content">
                                                                    <h4>Apple iPad</h4>
                                                                    <div class="star-rating">
                                                                        <ul class="list-inline">
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                                        </ul>
                                                                    </div>
                                                                    <p class="card-text">Author: Book Author</p>
                                                                    <p class="card-text">ISBN: 1234567890</p>
                                                                    <p class="card-text">Publication Date: 01.01.2023</p>
                                                                    <div class="revbtn">
                                                                        <a href="#" class="btn btn-primary">Review</a>
                                                                        <a href="#" class="btn btn-primary">Buy</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!-- card 11 -->
                                                        <div class="col-sm-3">
                                                            <div class="thumb-wrapper">
                                                                <span class="wish-icon"><i class="fa fa-heart-o"></i></span>
                                                                <div class="img-box">
                                                                    <img src="./images/horror-img/paranormal-horror-book-cover-design-template-ace583d35540c6c8da22f0d75d45f614.jpg" class="img-fluid" alt="Pixel">
                                                                </div>
                                                                <div class="thumb-content">
                                                                    <h4>Apple iPad</h4>
                                                                    <div class="star-rating">
                                                                        <ul class="list-inline">
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                                        </ul>
                                                                    </div>
                                                                    <p class="card-text">Author: Book Author</p>
                                                                    <p class="card-text">ISBN: 1234567890</p>
                                                                    <p class="card-text">Publication Date: 01.01.2023</p>
                                                                    <div class="revbtn">
                                                                        <a href="#" class="btn btn-primary">Review</a>
                                                                        <a href="#" class="btn btn-primary">Buy</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!-- card 12 -->
                                                        <div class="col-sm-3">
                                                            <div class="thumb-wrapper">
                                                                <span class="wish-icon"><i class="fa fa-heart-o"></i></span>
                                                                <div class="img-box">
                                                                    <img src="./images/fiction-img/vintage-book-cover-design-template-0f7f2cf1fda9f2f7bf4d7ffdba2fca30.jpg" class="img-fluid" alt="Watch">
                                                                </div>
                                                                <div class="thumb-content">
                                                                    <h4>Apple iPad</h4>
                                                                    <div class="star-rating">
                                                                        <ul class="list-inline">
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                                        </ul>
                                                                    </div>
                                                                    <p class="card-text">Author: Book Author</p>
                                                                    <p class="card-text">ISBN: 1234567890</p>
                                                                    <p class="card-text">Publication Date: 01.01.2023</p>
                                                                    <div class="revbtn">
                                                                        <a href="#" class="btn btn-primary">Review</a>
                                                                        <a href="#" class="btn btn-primary">Buy</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!-- card end -->
                                                    </div>
                                                </div>
                                            </div>
                                        </div>


                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>


                    <section style="margin-top: 150px;">
                        <div class="container">
                            <div class="row justify-content-between align-items-center">
                                <div class="col-auto ">
                                    <h3 class="me-2 hed">Love</h3>
                                </div>
                                <div class="col-auto text-right ">
                                    <a class="btn btn-primary me-2" href="#carouselExampleIndicators4" role="button" data-bs-slide="prev">
                                        <i class="fa fa-arrow-left"></i>
                                    </a>
                                    <a class="btn btn-primary  " href="#carouselExampleIndicators4" role="button" data-bs-slide="next">
                                        <i class="fa fa-arrow-right"></i>
                                    </a>
                                </div>
                                <div class="col-12">
                                    <div id="carouselExampleIndicators4" class="carousel slide" data-bs-ride="carousel">
                                        <div class="slide">
                                            <div class="carousel-inner">
                                                <div class="carousel-item active">
                                                    <div class="row">
                                                        <%
                                                            for (BookDetails movie : mLove) {
                                                        %>
                                                        <!-- card 1 -->
                                                        <div class="col-sm-3">
                                                            <div class="thumb-wrapper">
                                                                <!-- <span class="wish-icon"><i class="fa fa-heart-o"></i></span> -->
                                                                <div class="img-box">
                                                                    <img src="data:image/jpg;charset=utf8;base64,<%=Base64.getEncoder().encodeToString(movie.getImage())%>" alt="" >

                                                                </div>
                                                                <div class="thumb-content">
                                                                    <h4><%=movie.getTitle()%></h4>
                                                                    <div class="star-rating">
                                                                        <ul class="list-inline">
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                                        </ul>
                                                                    </div>
                                                                    <p class="card-text">Director: <%=movie.getAuthor()%></p>
                                                                    <p class="card-text">Movie ID: <%=movie.getISBN()%></p>
                                                                    <p class="card-text">Release Date: <%=movie.getPublicationDate()%></p>
                                                                    <div class="revbtn">
                                                                        <a href="./Reviewpage.jsp?isbn=<%=movie.getISBN()%>" class="btn btn-primary">Review</a>
                                                                        <a href="./subscribe.jsp?isbn=<%=movie.getISBN()%>" class="btn btn-primary">Buy</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <%}%>
                                                    </div>
                                                </div>
                                                <!-- card 5 -->
                                                <div class="carousel-item">
                                                    <div class="row">
                                                        <div class="col-sm-3">
                                                            <div class="thumb-wrapper">
                                                                <span class="wish-icon"><i class="fa fa-heart-o"></i></span>
                                                                <div class="img-box">
                                                                    <img src="./images/love/medieval-romance-ebook-wattpad-cover-design-template-b4f7d9a22df6f29d2a5e48d55f01bb37.jpg" class="img-fluid" alt="Play Station">
                                                                </div>
                                                                <div class="thumb-content">
                                                                    <div class="thumb-content">
                                                                        <h4>Apple iPad</h4>
                                                                        <div class="star-rating">
                                                                            <ul class="list-inline">
                                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                                <li class="list-inline-item"><i class="fa fa-star-half-o"></i></li>
                                                                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                                            </ul>
                                                                        </div>
                                                                        <p class="card-text">Author: Book Author</p>
                                                                        <p class="card-text">ISBN: 1234567890</p>
                                                                        <p class="card-text">Publication Date: 01.01.2023</p>
                                                                        <div class="revbtn">
                                                                            <a href="#" class="btn btn-primary">Review</a>
                                                                            <a href="#" class="btn btn-primary">Buy</a>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!-- card 6 -->
                                                        <div class="col-sm-3">
                                                            <div class="thumb-wrapper">
                                                                <span class="wish-icon"><i class="fa fa-heart-o"></i></span>
                                                                <div class="img-box">
                                                                    <img src="./images/love/romance-novel-ebook-kindle-cover-design-template-9ab0a63b3ab9741d079c219f9681c7ab.jpg" class="img-fluid" alt="Macbook">
                                                                </div>
                                                                <div class="thumb-content">
                                                                    <h4>Apple iPad</h4>
                                                                    <div class="star-rating">
                                                                        <ul class="list-inline">
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                                        </ul>
                                                                    </div>
                                                                    <p class="card-text">Author: Book Author</p>
                                                                    <p class="card-text">ISBN: 1234567890</p>
                                                                    <p class="card-text">Publication Date: 01.01.2023</p>
                                                                    <div class="revbtn">
                                                                        <a href="#" class="btn btn-primary">Review</a>
                                                                        <a href="#" class="btn btn-primary">Buy</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!-- card 7 -->
                                                        <div class="col-sm-3">
                                                            <div class="thumb-wrapper">
                                                                <span class="wish-icon"><i class="fa fa-heart-o"></i></span>
                                                                <div class="img-box">
                                                                    <img src="./images/love/romantic-love-book-cover-design-template-96659088739c38149b0bc4d2a0c67495.jpg" class="img-fluid" alt="Speaker">
                                                                </div>
                                                                <div class="thumb-content">
                                                                    <h4>Apple iPad</h4>
                                                                    <div class="star-rating">
                                                                        <ul class="list-inline">
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                                        </ul>
                                                                    </div>
                                                                    <p class="card-text">Author: Book Author</p>
                                                                    <p class="card-text">ISBN: 1234567890</p>
                                                                    <p class="card-text">Publication Date: 01.01.2023</p>
                                                                    <div class="revbtn">
                                                                        <a href="#" class="btn btn-primary">Review</a>
                                                                        <a href="#" class="btn btn-primary">Buy</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!-- card 8 -->
                                                        <div class="col-sm-3">
                                                            <div class="thumb-wrapper">
                                                                <span class="wish-icon"><i class="fa fa-heart-o"></i></span>
                                                                <div class="img-box">
                                                                    <img src="./images/love/somebody-to-love-book-cover-design-template-5d4024f2982f3c81046e1fd91c755716.jpg" class="img-fluid" alt="Galaxy">
                                                                </div>
                                                                <div class="thumb-content">
                                                                    <h4>Apple iPad</h4>
                                                                    <div class="star-rating">
                                                                        <ul class="list-inline">
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                                        </ul>
                                                                    </div>
                                                                    <p class="card-text">Author: Book Author</p>
                                                                    <p class="card-text">ISBN: 1234567890</p>
                                                                    <p class="card-text">Publication Date: 01.01.2023</p>
                                                                    <div class="revbtn">
                                                                        <a href="#" class="btn btn-primary">Review</a>
                                                                        <a href="#" class="btn btn-primary">Buy</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- card 9 -->
                                                <div class="carousel-item">
                                                    <div class="row">
                                                        <div class="col-sm-3">
                                                            <div class="thumb-wrapper">
                                                                <span class="wish-icon"><i class="fa fa-heart-o"></i></span>
                                                                <div class="img-box">
                                                                    <img src="./images/love/victorian-earl-historical-romance-book-header-design-template-29bbe639562dfeee267918a5f7970553.jpg" class="img-fluid" alt="iPhone">
                                                                </div>
                                                                <div class="thumb-content">
                                                                    <h4>Apple iPad</h4>
                                                                    <div class="star-rating">
                                                                        <ul class="list-inline">
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                                        </ul>
                                                                    </div>
                                                                    <p class="card-text">Author: Book Author</p>
                                                                    <p class="card-text">ISBN: 1234567890</p>
                                                                    <p class="card-text">Publication Date: 01.01.2023</p>
                                                                    <div class="revbtn">
                                                                        <a href="#" class="btn btn-primary">Review</a>
                                                                        <a href="#" class="btn btn-primary">Buy</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!-- card 10 -->
                                                        <div class="col-sm-3">
                                                            <div class="thumb-wrapper">
                                                                <span class="wish-icon"><i class="fa fa-heart-o"></i></span>
                                                                <div class="img-box">
                                                                    <img src="./images/love/victorian-historical-romance-novel-header-design-template-8174f26f5d44c590137ccbea8052bfc6.jpg" class="img-fluid" alt="Canon">
                                                                </div>
                                                                <div class="thumb-content">
                                                                    <h4>Apple iPad</h4>
                                                                    <div class="star-rating">
                                                                        <ul class="list-inline">
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                                        </ul>
                                                                    </div>
                                                                    <p class="card-text">Author: Book Author</p>
                                                                    <p class="card-text">ISBN: 1234567890</p>
                                                                    <p class="card-text">Publication Date: 01.01.2023</p>
                                                                    <div class="revbtn">
                                                                        <a href="#" class="btn btn-primary">Review</a>
                                                                        <a href="#" class="btn btn-primary">Buy</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!-- card 11 -->
                                                        <div class="col-sm-3">
                                                            <div class="thumb-wrapper">
                                                                <span class="wish-icon"><i class="fa fa-heart-o"></i></span>
                                                                <div class="img-box">
                                                                    <img src="./images/love/village-love-story-historical-romance-header-design-template-b3c737c884a9959c425f53e924d5ff8d.jpg" class="img-fluid" alt="Pixel">
                                                                </div>
                                                                <div class="thumb-content">
                                                                    <h4>Apple iPad</h4>
                                                                    <div class="star-rating">
                                                                        <ul class="list-inline">
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                                        </ul>
                                                                    </div>
                                                                    <p class="card-text">Author: Book Author</p>
                                                                    <p class="card-text">ISBN: 1234567890</p>
                                                                    <p class="card-text">Publication Date: 01.01.2023</p>
                                                                    <div class="revbtn">
                                                                        <a href="#" class="btn btn-primary">Review</a>
                                                                        <a href="#" class="btn btn-primary">Buy</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!-- card 12 -->
                                                        <div class="col-sm-3">
                                                            <div class="thumb-wrapper">
                                                                <span class="wish-icon"><i class="fa fa-heart-o"></i></span>
                                                                <div class="img-box">
                                                                    <img src="./images/love/wintery-romance-novel-ebook-wattpad-cover-design-template-e19d0eb10c4e2ad266e984bea50c76d5.jpg" class="img-fluid" alt="Watch">
                                                                </div>
                                                                <div class="thumb-content">
                                                                    <h4>Apple iPad</h4>
                                                                    <div class="star-rating">
                                                                        <ul class="list-inline">
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                            <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                                        </ul>
                                                                    </div>
                                                                    <p class="card-text">Author: Book Author</p>
                                                                    <p class="card-text">ISBN: 1234567890</p>
                                                                    <p class="card-text">Publication Date: 01.01.2023</p>
                                                                    <div class="revbtn">
                                                                        <a href="#" class="btn btn-primary">Review</a>
                                                                        <a href="#" class="btn btn-primary">Buy</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!-- card end -->
                                                    </div>
                                                </div>
                                            </div>
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




                    <script type='text/javascript'></script>
                    <script src="../JS File/Categories.js"></script>




                    </body>

                    </html>