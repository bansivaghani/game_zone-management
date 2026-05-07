<?php

include("code/header.php");



$sql="SELECT * FROM manage_aboutus ";
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
                            <label>Aboutus Title</label>
                            <input class="form-control" type="text" placeholder="Project name *" name="t" value="<?php echo $row_1['title']; ?>">
                          </div>
                        </div>
                      </div>

                       <div class="row">
                        <div class="col">
                          <div class="mb-3">
                            <label>Aboutus Heading</label>
                            <input class="form-control" type="text" placeholder="Project name *" name="h" value="<?php echo $row_1['heading']; ?>">
                          </div>
                        </div>
                      </div>



                      <div class="row">
                        <div class="col">
                          <div class="mb-3">
                            <label>Aboutus Image</label>
                            <input class="form-control" type="file" placeholder="Name client or company name" name="f_f">
                          </div>
                        </div>
                      </div>
                     

                      <div class="row">
                        <div class="col">
                          <div class="mb-3">
                            <label>Aboutus description</label>
                            <textarea class="form-control" id="exampleFormControlTextarea4" rows="3" name="d"><?php echo $row_1['description']; ?></textarea>
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



 $img=$_FILES['f_f']['tmp_name'];
   $path="upload/aboutus/".$_FILES['f_f']['name'];
    if(move_uploaded_file($img,$path)){
   
      $sql="UPDATE `manage_aboutus` SET `title`='$t',`heading`='$h',`description`='$d',`img`='$path'";

    }else{

   $sql="UPDATE `manage_aboutus` SET `title`='$t',`heading`='$h',`description`='$d'";
    }

$run=mysqli_query($con,$sql);

if ($run) {
    // code... 
  echo "<script>window.location='url.php?url=manage_aboutus.php'</script>";
}


}




include("code/footer.php");

 ?>
     