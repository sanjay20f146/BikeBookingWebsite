<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>
</head>
<body style="background-image: url(img/2113203\ \(1\).jpg);background-size: cover;">
 <!-- Section: Design Block -->
<section class="">
  <!-- Jumbotron -->
  <div class="px-4 py-5 px-md-5 text-center text-lg-start" >
    <div class="container">
      <div class="row gx-lg-5 align-items-center">
        <div class="col-lg-6 mb-5 mb-lg-0">
          <h1 class="my-5 display-3 fw-bold ls-tight" style="color:black">
            KTM   <br />
            <span style="color:orangered">ADMIN WORLD</span>
          </h1>
          <p style="color: hsl(217, 10%, 50.8%)">
         
          </p>
        </div>

        <div class="col-lg-6 mb-5 mb-lg-0" Style= "width: 30rem; margin-right:50%; margin-bottom:50%;">
          <div class="card" Style= "width: 30rem; margin-right:50%;">
            <div class="card-body py-5 px-md-5">
              <form method="post" action="adminLogin">
                <!-- 2 column grid layout with text inputs for the first and last names -->
                <div class="h3" style="margin-left:25%;"><h3 style="color: black;padding-bottom:10%;">ADMIN LOGIN</h3></div>
                <div class="row">
                
 <div class="form-outline mb-4">
                  <input type="email" name="aemail" class="form-control"  placeholder="Email" />
                  <label class="form-label" for="form3Example3"></label>
                </div>

                <!-- Password input -->
                <div class="form-outline mb-4">
                  <input type="password" name="apassword" class="form-control" placeholder="Password"/>
                  <label class="form-label" for="form3Example4"></label>
                </div>

                <!-- Submit button -->
          <div class="btn btn-link" style="margin: left 25px;">
          <button type="submit" class="btn btn-danger btn-block mb-4">
           Admin Login
          </button>
          </div>
              
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- Jumbotron -->
</section>
<!-- Section: Design Block -->
    <script src="js/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>

</body>
</html>
    