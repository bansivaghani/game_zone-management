<?php




include("code/header.php");


$sql="SELECT * FROM project_setting ";
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
                            <label>Project Title</label>
                            <input class="form-control" type="text" placeholder="Project name *" name="t" value="<?php echo $row_1['title']; ?>">
                          </div>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col">
                          <div class="mb-3">
                            <label>Project Logo</label>
                            <input class="form-control" type="file" placeholder="Name client or company name" name="logo">
                          </div>
                        </div>
                      </div>
                     
                     <div class="row">
                        <div class="col">
                          <div class="mb-3">
                            <label>Project Icon</label>
                            <input class="form-control" type="file" placeholder="Name client or company name" name="icon">
                          </div>
                        </div>
                      </div>
   

                      <div class="row">
                        <div class="col">
                          <div class="mb-3">
                            <label>Footer Intruction Text</label>
                            <textarea class="form-control" id="exampleFormControlTextarea4" rows="3" name="f"><?php echo $row_1['footer_text']; ?></textarea>
                          </div>
                        </div>
                      </div>
                    
                      <div class="row">
                        <div class="col">
                          <div class="text-end">

                        <button class="btn btn-primary btn-block" type="submit" name="btn">Submit</button>

                          
                            
                  

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



 $icon1=$_FILES['icon']['tmp_name'];
 $logo1=$_FILES['logo']['tmp_name'];

   $logo_1="upload/setting/".$_FILES['logo']['name'];
    $icon_1="upload/setting/".$_FILES['icon']['name'];
   

if (move_uploaded_file($logo1,$logo_1)) {
     # code...

     $sql="UPDATE `project_setting` SET `title` = '$t', `logo` = '$logo_1', `footer_text` = '$f'";
   }else{


     $sql="UPDATE `project_setting` SET `title` = '$t',  `footer_text` = '$f'";
   }
     

    if(move_uploaded_file($icon1,$icon_1)){
   

     $sql="UPDATE `project_setting` SET `title` = '$t', `icon` = '$icon_1', `footer_text` = '$f'";
   }
     



    



   
   

   if (move_uploaded_file($logo1,$logo_1) && move_uploaded_file($icon1,$icon_1)) {
     # code...
 
     $sql="UPDATE `project_setting` SET `title` = '$t', `icon` = '$icon_1', `logo` = '$logo_1', `footer_text` = '$f'";
   
     



    }



$run=mysqli_query($con,$sql);

if ($run) {
    // code...

            echo "<script>window.location='url.php?url=manage_setting.php'</script>";
//echo "<script>alert('Inserted');</script>";

}



}


include("code/footer.php");
 ?>
     
    