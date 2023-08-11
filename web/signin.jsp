<%-- 
    Document   : signin
    Created on : Aug 4, 2023, 10:23:04 AM
    Author     : sasit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- bootstrap link -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">

    <!-- CSS stylesheet -->
    <link rel="stylesheet" href="./Styles/login.css">
    <!-- ----------------------------------------------------------------- -->
    <!-- font awesome link -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer"
    />
    <!-- Title -->
    <title>SignIn|CinesynC</title>
     <script>
      function togglepage() {
        location.href = "./login.jsp";
      }
    </script>
</head>
<body>
    <div class="auth-body">
        <img src="./images/login-background.jpg" class="login-bg" />
        <div class="container auth signin">
          <div class="container left">
            <h1>Create Accout</h1>
            <form class="auth-form" action="registration.jsp" method="POST">
              <div class="form-group lft">
                <label for="exampleInputEmail1">First Name</label>
                <input
                  type="text"
                  class="form-control"
                  name="firstname"
                  aria-describedby="emailHelp"
                  placeholder="Enter name"
                  
                />
              </div>
                <div class="form-group lft">
                <label for="exampleInputEmail1">Last Name</label>
                <input
                  type="text"
                  class="form-control"
                  name="lastname"
                  aria-describedby="emailHelp"
                  placeholder="Enter name"
                  
                />
              </div>
              <div class="form-group lft">
                <label for="exampleInputEmail1">Email address</label>
                <input
                  type="email"
                  class="form-control"
                  name="email"
                  aria-describedby="emailHelp"
                  placeholder="Enter email"
                  
                />
              </div>
              <div class="form-group lft">
                <label for="exampleInputEmail1">Contact Number</label>
                <input
                  type="number"
                  class="form-control"
                  name="contact"
                  aria-describedby="emailHelp"
                  placeholder="Enter email"
                  
                />
              </div>
              <div class="form-group lft">
                <label for="exampleInputPassword1">Password</label>
                <input
                  type="password"
                  class="form-control"
                  name="psw"
                  placeholder="Password"
                  
                />
              </div>
              <div class="form-group lft">
                <label for="exampleInputPassword1">Confirm Password</label>
                <input
                  type="password"
                  class="form-control"
                  name="conpsw"
                  placeholder="Confirm Password"
                  
                />
              </div>
            
              <button type="submit" class="btn btn-primary">
                Sign In
              </button>
            </form>
          </div>
          <div class="container right">
            <h1>Hello!</h1>
            <p>
              To keep connected with us please login with your personal info
            </p>
            <button
              class="btn btn-outline-light"
              id="togle-btn"
              onclick="togglepage()"
            >
              Log In
            </button>
          </div>
        </div>
      </div>
</body>
</html>
