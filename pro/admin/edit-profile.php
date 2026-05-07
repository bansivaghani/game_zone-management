<?php 
include("code/header.php");



$id=$_GET['id'];

if ($id=="") {
  # code...
  $id=$_SESSION['id'];
}
// Fetch user data from the database
$sql = "SELECT `id`, `name`, `gmail`, `password`, `role`, `address`, `city`, `postal_code`, `country`, `about_me`, `updated_at` FROM `login` WHERE id = $id";  // Assuming user with id 1
$run = mysqli_query($con, $sql);
$user = mysqli_fetch_assoc($run);

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Process the form submission and update the profile in the database
    $name = $_POST['name'];
    $gmail = $_POST['gmail'];
    $password = $_POST['password'];
    $role = $_POST['role'];
    $address = $_POST['address'];
    $city = $_POST['city'];
    $postal_code = $_POST['postal_code'];
    $country = $_POST['country'];
    $about_me = $_POST['about_me'];

    if ($password != "") {
        $hashed_password = password_hash($password, PASSWORD_DEFAULT);
    } else {
        $hashed_password = $user['password'];  // Keep current password if no new password provided
    }

    // Update query
    $update_sql = "UPDATE login SET name=?, gmail=?, password=?, role=?, address=?, city=?, postal_code=?, country=?, about_me=? WHERE id=?";
    if ($stmt = $con->prepare($update_sql)) {
        $stmt->bind_param("sssssssssi", $name, $gmail, $hashed_password, $role, $address, $city, $postal_code, $country, $about_me, $user['id']);
        if ($stmt->execute()) {
            echo "Profile updated successfully!";
        } else {
            echo "Error updating profile: " . $stmt->error;
        }
        $stmt->close();
    }
}

?>
<div class="page-body">
  <div class="container-fluid">
    <div class="page-title">
      <div class="row">
        <div class="col-12 col-sm-6">
          <h3>Edit Profile</h3>
        </div>
        <div class="col-12 col-sm-6">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="index.html"><i data-feather="home"></i></a></li>
            <li class="breadcrumb-item">User</li>
            <li class="breadcrumb-item active">User Edit</li>
          </ol>
        </div>
      </div>
    </div>
  </div>
  <!-- Container-fluid starts-->
  <div class="container-fluid">
    <div class="edit-profile">
      <div class="row">
        <div class="col-xl-4">
          <div class="card">
            <div class="card-header pb-0">
              <h4 class="card-title mb-0">My Profile</h4>
            </div>
            <div class="card-body">
              <form method="POST">
                <div class="row mb-2">
                  <div class="profile-title">
                    <div class="media">
                      <img class="img-70 rounded-circle" alt="" src="assets/images/avtar/man.png">
                      <div class="media-body">
                        <h3 class="mb-1 f-20 txt-primary"><?= $user['name']; ?></h3>
                        <p class="f-12"><?= $user['role']; ?></p>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="mb-3">
                  <h6 class="form-label">Bio</h6>
                  <textarea  readonly class="form-control" rows="5" name="about_me"><?= $user['about_me']; ?></textarea >
                </div>
                <div class="mb-3">
                  <label class="form-label">Email-Address</label>
                  <input class="form-control" type="email" name="gmail" value="<?= $user['gmail']; ?>" placeholder="your-email@domain.com" required readonly>
                </div>
              </form>
            </div>
          </div>
        </div>
        <div class="col-xl-8">
          <form method="POST" class="card">
            <div class="card-header pb-0">
              <h4 class="card-title mb-0">Edit Profile</h4>
            </div>
            <div class="card-body">
              <div class="row">
                <div class="col-sm-6 col-md-3">
                  <div class="mb-3">
                    <label class="form-label">Username</label>
                    <input class="form-control" type="text" name="name" value="<?= $user['name']; ?>" required>
                  </div>
                </div>
                <div class="col-sm-6 col-md-4">
                  <div class="mb-3">
                    <label class="form-label">Email Address</label>
                    <input class="form-control" type="email" name="gmail" value="<?= $user['gmail']; ?>" required>
                  </div>
                </div>
                <div class="col-md-5">
                  <div class="mb-3">
                    <label class="form-label">Profession</label>
                    <input class="form-control" type="text" name="role" value="<?= $user['role']; ?>" required <?php if ($_SESSION['role']!='admin') {
                      
                     echo "readonly";}?>>
                  </div>
                </div>
                <div class="col-sm-6 col-md-6">
                  <div class="mb-3">
                    <label class="form-label">Address</label>
                    <input class="form-control" type="text" name="address" value="<?= $user['address']; ?>" required>
                  </div>
                </div>
                <div class="col-sm-6 col-md-6">
                  <div class="mb-3">
                    <label class="form-label">City</label>
                    <input class="form-control" type="text" name="city" value="<?= $user['city']; ?>" required>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="mb-3">
                    <label class="form-label">Postal Code</label>
                    <input class="form-control" type="text" name="postal_code" value="<?= $user['postal_code']; ?>" required>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="mb-3">
                    <label class="form-label">Country</label>
                  
 <input class="form-control" type="text" name="country" value="<?= $user['country']; ?>" required>
                  
                  </div>
                </div>
                <div class="col-md-12">
                  <div>
                    <label class="form-label">About Me</label>
                    <textarea class="form-control" rows="5" name="about_me"><?= $user['about_me']; ?></textarea>
                  </div>
                </div>
              </div>
            </div>
            <div class="card-footer text-end">
              <button class="btn btn-primary" type="submit">Update Profile</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>

<?php include("code/footer.php"); ?>
