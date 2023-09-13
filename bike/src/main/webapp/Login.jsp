<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>
</head>
<body style="background-image: url(img/ktm2.jpg);background-size: cover;">
<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
 <!-- Section: Design Block -->
<section class="">
  <!-- Jumbotron -->
  <div class="px-4 py-5 px-md-5 text-center text-lg-start" >
    <div class="container">
      <div class="row gx-lg-5 align-items-center">
        <div class="col-lg-6 mb-5 mb-lg-0">
          <h1 class="my-5 display-3 fw-bold ls-tight" style="color:lightslategray;">
            LOGIN TO  <br />
            <span style="color: tomato;">KTM WORLD</span>
          </h1>
          <p style="color: hsl(217, 10%, 50.8%)">
         
          </p>
        </div>

        <div class="col-lg-6 mb-5 mb-lg-0">
          <div class="card" Style=  "width: 30rem;">
            <div class="card-body py-5 px-md-5">
              <form method="post" action="Login">
                <!-- 2 column grid layout with text inputs for the first and last names -->
                <div class="h3" style="margin-left:35%;"><h3 style="color: black;">LOGIN</h3></div>
                <div class="row">
                 
                
<div class="form-outline mb-4">
                  <input type="email" name="email" id="email" class="form-control" placeholder="Email" />
                  <label class="form-label" for="form3Example3"></label>
                </div>
                <!-- Email input -->
     

                <!-- Password input -->
                <div class="form-outline mb-4">
                  <input type="password" name="password" id="password" class="form-control" placeholder="Password"/>
                  <label class="form-label" for="form3Example4"></label>
                </div>

                <!-- Checkbox -->
                <div class="form-check d-flex justify-content-center mb-4">
                  <input class="form-check-input me-2" type="checkbox" style="color: black;" value="" id="form2Example33" checked />
                  <label class="form-check-label" for="form2Example33" style="color: black;">
                 Remember
                  </label>
                </div>

                <!-- Submit button -->
          <div class="btn btn-link" style="margin: left 25px;">
          <input type="submit" class="btn btn-danger btn-block mb-4" value="Login"/>
        <a href="Email.html">  <h6 style="align-items: center;">Forgot Password?</h6></a>
     <br>
       <a href="signup.html">  <h6 style="align-items: center;">New User SignUp</h6></a>
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
<script type="text/javascript">
         var status=document.getElementById("status").value;
         if(status=="failed"){
        	 swal("Sorry","Wrong email or Password ","error");
         }
         else if(status=="success"){
        	 
         }
    
    </script>
</body>
</html>
