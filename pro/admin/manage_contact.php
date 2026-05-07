<?php




include("code/header.php");


$sql="SELECT * FROM manage_contact_details ";
$run=mysqli_query($con,$sql);
$row_1=mysqli_fetch_assoc($run);




?>
        <!-- Page Sidebar Ends-->        <div class="page-body">
          <div class="container-fluid">
           <br>
          </div>
          <!-- Container-fluid starts-->
          <form method="post" enctype="multipart/form-data">
          <div class="container-fluid">
            <div class="row">
              <div class="col-sm-12">
                <div class="card">
                  <div class="card-body">
                    <div class="form theme-form projectcreate">
                      <div class="row">
                        <div class="col">
                          <div class="mb-3">
                            <label>Project Gmail</label>
                            <input class="form-control" type="text" placeholder="Project name *" name="g" value="<?php echo $row_1['gmail']; ?>">
                          </div>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col">
                          <div class="mb-3">
                            <label>Mobile</label>
                            <input class="form-control" type="text" placeholder="Name client or company name" name="m" value="<?php echo $row_1['mobile']; ?>">
                          </div>
                        </div>
                      </div>
                    

    <div class="row">
                        <div class="col">
                          <div class="mb-3">
                            <label>Address</label>
                            <textarea class="form-control" id="exampleFormControlTextarea4" rows="3" name="a"><?php echo $row_1['address']; ?></textarea>
                          </div>
                        </div>
                      </div>

                  
                      <div class="row">
                        <div class="col">
                          <div class="text-end">

                        <button class="btn btn-primary btn-block" type="submit" name="btn">Update</button>

                          
                            
                  

                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        
       <!-- Container-fluid Ends-->
        </div>
      </form>
            <?php 
//must Be one form <form method="post" enctype="multipart/form-data"
//all form input name ex: name="t"
//must be one submit button ex: type="submit"
//muat be submit buuton name  ex: name="btn"

if (isset($_POST['btn'])) {
    // code...
    extract($_POST);


   

     $sql="UPDATE `manage_contact_details` SET `gmail`='$g',`mobile`='$m',`address`='$a' ";
   
     



$run=mysqli_query($con,$sql);

if ($run) {
    // code...

            echo "<script>window.location='url.php?url=manage_contact.php'</script>";
//echo "<script>alert('Inserted');</script>";

}



}


include("code/footer.php");
 ?>
     
    