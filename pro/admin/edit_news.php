<?php

include("code/header.php");


$id=$_GET['id'];
$sql="SELECT * FROM `news` where id=$id";
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
                            <label>News Title</label>
                            <input class="form-control" type="text" value="<?php echo $row_1['title']; ?>" placeholder="Project name *" name="t">
                          </div>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col">
                          <div class="mb-3">
                            <label>News Image</label>
                            <input class="form-control" type="file" placeholder="Name client or company name" name="f_f">
                          </div>
                        </div>
                      </div>
                     

                      <div class="row">
                        <div class="col">
                          <div class="mb-3">
                            <label>News Description</label>
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
   $path="upload/news/".$_FILES['f_f']['name'];
    if(move_uploaded_file($img,$path)){

$sql="UPDATE `news` SET `title`='$t',`image`='$path',`description`='$d' WHERE id=$id";

}else{

$sql="UPDATE `news` SET `title`='$t',`description`='$d' WHERE id=$id";

}
$run=mysqli_query($con,$sql);

if ($run) {
    // code...
  echo "<script>window.location='url.php?url=edit_news.php?id=".$id."'</script>";
}


}



include("code/footer.php");
 ?>
    