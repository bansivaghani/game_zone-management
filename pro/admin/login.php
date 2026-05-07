<!DOCTYPE html>
<html lang="en">

<?php 

include("../code/connection.php");


if (!$_SESSION['gmail']=="") {
  
  echo "<script>window.location.href='index.php'</script>";
}

 ?>  
<!-- Mirrored from admin.pixelstrap.com/zeta/theme/login.php by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 06 Jul 2024 11:41:10 GMT -->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Zeta admin is super flexible, powerful, clean &amp; modern responsive bootstrap 5 admin template with unlimited possibilities.">
    <meta name="keywords" content="admin template, Zeta admin template, dashboard template, flat admin template, responsive admin template, web app">
    <meta name="author" content="pixelstrap">
    <link rel="icon" href="../tmp/wp-content/uploads/2023/11/logo.webp" type="image/x-icon">
    <title>Zeta admin dashboard </title>
    <!-- Google font-->
    <link rel="preconnect" href="https://fonts.googleapis.com/">
    <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin="">
    <link href="https://fonts.googleapis.com/css2?family=Rubik:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,300;1,400;1,500;1,600;1,700;1,800;1,900&amp;display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&amp;display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="assets/css/vendors/font-awesome.css">
    <!-- ico-font-->
    <link rel="stylesheet" type="text/css" href="assets/css/vendors/icofont.css">
    <!-- Themify icon-->
    <link rel="stylesheet" type="text/css" href="assets/css/vendors/themify.css">
    <!-- Flag icon-->
    <link rel="stylesheet" type="text/css" href="assets/css/vendors/flag-icon.css">
    <!-- Feather icon-->
    <link rel="stylesheet" type="text/css" href="assets/css/vendors/feather-icon.css">
    <!-- Plugins css start-->
    <!-- Plugins css Ends-->
    <!-- Bootstrap css-->
    <link rel="stylesheet" type="text/css" href="assets/css/vendors/bootstrap.css">
    <!-- App css-->
    <link rel="stylesheet" type="text/css" href="assets/css/style.css">
    <link id="color" rel="stylesheet" href="assets/css/color-1.css" media="screen">
    <!-- Responsive css-->
    <link rel="stylesheet" type="text/css" href="assets/css/responsive.css">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css">

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css">

  </head>
  <body>
    <!-- login page start-->
    <section>         </section>
    <div class="container-fluid p-0">
      <div class="row">
        <div class="col-12">
          <div class="login-card">
<form class="theme-form login-form" method="post">
    <h4>Login</h4>
    <h6>Welcome back! Log in to your account.</h6>

    <!-- Email Field -->
    <div class="form-group">
        <label>Email Address</label>
        <div class="input-group">
            <span class="input-group-text"><i class="bi bi-envelope"></i></span>
            <input class="form-control" type="email" placeholder="Test@gmail.com" name="g">
        </div>
    </div>

    <!-- Password Field with Show/Hide Icon -->
    <div class="form-group">
        <label>Password</label>
        <div class="input-group">
            <span class="input-group-text"><i class="bi bi-lock"></i></span>
            <input class="form-control" type="password" id="password" name="p" placeholder="*********">
            <span class="input-group-text" onclick="togglePassword()">
                <i class="bi bi-eye" id="toggleIcon"></i>
            </span>
        </div>
    </div>

    <!-- Submit Button -->
    <div class="form-group">
        <button class="btn btn-primary btn-block" type="submit" name="btn">Sign in</button>
        <br>
              <p>Don't have password ?<a class="ms-2" href="forget-password.php">Reset Passwrod</a></p>

    </div>
                  <div class="login-social-title">                
                <h5>Sign in with</h5>
              </div>
              <div class="form-group">
                <ul class="login-social">
                  <li><a href="https://www.linkedin.com/" target="_blank"><i data-feather="linkedin"></i></a></li>
                  <li><a href="https://twitter.com/" target="_blank"><i data-feather="twitter"></i></a></li>
                  <li><a href="https://www.facebook.com/" target="_blank"><i data-feather="facebook"></i></a></li>
                  <li><a href="https://www.instagram.com/" target="_blank"><i data-feather="instagram">                  </i></a></li>
                </ul>
              </div>
              <p>Don't have account?<a class="ms-2" href="sign-up.php">Create Account</a></p>
</form>
<script>
function togglePassword() {
    var passwordField = document.getElementById("password");
    var toggleIcon = document.getElementById("toggleIcon");

    if (passwordField.type === "password") {
        passwordField.type = "text";
        toggleIcon.classList.remove("bi-eye");
        toggleIcon.classList.add("bi-eye-slash");
    } else {
        passwordField.type = "password";
        toggleIcon.classList.remove("bi-eye-slash");
        toggleIcon.classList.add("bi-eye");
    }
}
</script>

            <?php




                 if (isset($_POST['btn'])) {

extract($_POST);

$sql="select * from login where gmail='$g' and password='$p'";
$run=mysqli_query($con,$sql);
$total=mysqli_num_rows($run);
$fetch=mysqli_fetch_assoc($run);
if ($total>0) {
  // code...
  $_SESSION['gmail']=$g;
  $_SESSION['role']=$fetch['role'];
  $_SESSION['id']=$fetch['id'];

  if ($fetch['role']=="user") {
    # code...

echo "<script>window.location.href='../../../../../../../../../game_zone/pro/tmp/index.php?action=home'</script>";    
  }elseif ($fetch['role']=="admin") {
    # code...

echo "<script>window.location.href='index.php'</script>";    

  }

}else{
  echo "<script>alert('Not match user..');</script>";
}
// if ($row['gmail']==$g) {
//   $_SESSION['gmail']=$g;
// }

                }
            ?>
          </div>
        </div>
      </div>
    </div>
    <!-- latest jquery-->
    <script src="assets/js/jquery-3.5.1.min.js"></script>
    <!-- Bootstrap js-->
    <script src="assets/js/bootstrap/bootstrap.bundle.min.js"></script>
    <!-- feather icon js-->
    <script src="assets/js/icons/feather-icon/feather.min.js"></script>
    <script src="assets/js/icons/feather-icon/feather-icon.js"></script>
    <!-- scrollbar js-->
    <!-- Sidebar jquery-->
    <script src="assets/js/config.js"></script>
    <!-- Plugins JS start-->
    <!-- Plugins JS Ends-->
    <!-- Theme js-->
    <script src="assets/js/script.js"></script>
    <!-- login js-->
    <!-- Plugin used-->
  </body>

<!-- Mirrored from admin.pixelstrap.com/zeta/theme/login.php by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 06 Jul 2024 11:41:10 GMT -->
</html>