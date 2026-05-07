<!DOCTYPE html>
<html lang="en">
  
<!-- Mirrored from admin.pixelstrap.com/zeta/theme/forget-password.php by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 06 Jul 2024 11:43:19 GMT -->
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
    <link rel="stylesheet" type="text/css" href="assets/css/vendors/sweetalert2.css">
    <!-- Plugins css Ends-->
    <!-- Bootstrap css-->
    <link rel="stylesheet" type="text/css" href="assets/css/vendors/bootstrap.css">
    <!-- App css-->
    <link rel="stylesheet" type="text/css" href="assets/css/style.css">
    <link id="color" rel="stylesheet" href="assets/css/color-1.css" media="screen">
    <!-- Responsive css-->
    <link rel="stylesheet" type="text/css" href="assets/css/responsive.css">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css">

  </head>
  <body>
    <!-- Loader starts-->
    <div class="loader-wrapper">
      <div class="loader">
        <div class="loader-bar"></div>
        <div class="loader-bar"></div>
        <div class="loader-bar"></div>
        <div class="loader-bar"></div>
        <div class="loader-bar"></div>
        <div class="loader-ball"></div>
      </div>
    </div>
    <!-- Loader ends-->
    <!-- page-wrapper Start-->
    <section>         
      <div class="container-fluid p-0"> 
        <div class="row m-0">
          <div class="col-12 p-0">    
            <div class="login-card">              
              <div class="login-main"> 
<form class="theme-form login-form" method="post" >
    <h4 class="mb-3">Reset Your Password</h4>

    <!-- Name Field -->
    <div class="form-group">
        <label>Enter Your Name</label>
        <div class="input-group">
            <input class="form-control" type="text" name="name" placeholder="Enter your name" required>
        </div>
    </div>

    <!-- Email Field -->
    <div class="form-group">
        <label>Enter Your Gmail</label>
        <div class="input-group">
            <input class="form-control" type="email" name="email" placeholder="Enter your email" required>
        </div>
    </div>

    <!-- New Password -->
    <div class="form-group">
        <label>New Password</label>
        <div class="input-group">
            <span class="input-group-text"><i class="bi bi-lock"></i></span>
            <input class="form-control" type="password" name="new_password" id="new_password" placeholder="*********" required>
            <span class="input-group-text" onclick="togglePassword()">
                <i class="bi bi-eye" id="toggleIcon"></i>
            </span>
        </div>
    </div>

    <!-- Retype Password -->
    <div class="form-group">
        <label>Retype Password</label>
        <div class="input-group">
            <span class="input-group-text"><i class="bi bi-lock"></i></span>
            <input class="form-control" type="password" name="confirm_password" id="confirm_password" placeholder="*********" required>
        </div>
    </div>

    <!-- Submit Button -->
    <div class="form-group">
        <button class="btn btn-primary btn-block" type="submit" name="reset_btn">Reset Password</button>
    </div>

    <p>Already have an account? <a class="ms-2" href="login.php">Sign in</a></p>
</form>

<!-- Toggle Password Visibility Script -->
<script>
function togglePassword() {
    var passwordField = document.getElementById("new_password");
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
// Connect to MySQL
$con = mysqli_connect("localhost", "root", "", "game_zone");

if (!$con) {
    die("Database connection failed: " . mysqli_connect_error());
}

if (isset($_POST['reset_btn'])) {
    $name = mysqli_real_escape_string($con, $_POST['name']);
    $email = mysqli_real_escape_string($con, $_POST['email']);
    $new_password = mysqli_real_escape_string($con, $_POST['new_password']);
    $confirm_password = mysqli_real_escape_string($con, $_POST['confirm_password']);

    // Check if passwords match
    if ($new_password !== $confirm_password) {
        echo "<script>alert('Passwords do not match!'); window.location='forget-password.php';</script>";
        exit();
    }

    // Encrypt password (Hashing for security)
    $hashed_password = password_hash($new_password, PASSWORD_DEFAULT);

    // Check if user exists with the given Name or Email
    $sql = "SELECT * FROM login WHERE name='$name' and gmail='$email'";
    $result = mysqli_query($con, $sql);

    if (mysqli_num_rows($result) > 0) {
        // Update password
        $update_sql = "UPDATE login SET password='$new_password' WHERE name='$name' and gmail='$email'";
        if (mysqli_query($con, $update_sql)) {
            echo "<script>alert('Password reset successfully!'); window.location='login.php';</script>";
        } else {
            echo "<script>alert('Error updating password!'); window.location='forget-password.php';</script>";
        }
    } else {
        echo "<script>alert('No user found with that Name or Email!'); window.location='forget-password.php';</script>";
    }
}

// Close connection
mysqli_close($con);
?>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- page-wrapper end-->
    </section>
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
    <script src="assets/js/sweet-alert/sweetalert.min.js"></script>
    <!-- Plugins JS Ends-->
    <!-- Theme js-->
    <script src="assets/js/script.js"></script>
    <!-- login js-->
    <!-- Plugin used-->
  </body>

<!-- Mirrored from admin.pixelstrap.com/zeta/theme/forget-password.php by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 06 Jul 2024 11:43:19 GMT -->
</html>