<?php

include("code/header.php");

$id=$_GET['id'];
$sql="SELECT * FROM `category` where id=$id";
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
                            <label>Categoery Title</label>
                            <input class="form-control" type="text" placeholder="Project name *" name="t" value="<?php echo $row_1['title']; ?>">
                          </div>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col">
                          <div class="mb-3">
                            <label>Categoery Image</label>
                            <input class="form-control" type="file" placeholder="Name client or company name" name="f_f">
                          </div>
                        </div>
                      </div>
                     

                      <div class="row">
                        <div class="col">
                          <div class="mb-3">
                            <label>Categoery description</label>
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

        if(isset($_POST['btn'])){
          extract($_POST);


 $img=$_FILES['f_f']['tmp_name'];
   $path="upload/category/".$_FILES['f_f']['name'];
    if(move_uploaded_file($img,$path)){
   
          $sql="UPDATE `category` SET `title`='$t',`image`='$path',`description`='$d' WHERE id=$id";
}else{
   
          $sql="UPDATE `category` SET `title`='$t',`description`='$d' WHERE id=$id";

}
        
          $run=mysqli_query($con,$sql);

          if($run){


            echo "<script>window.location='url.php?url=edit_categoery.php?id=".$id."'</script>";
            //  echo"<script>alert('inserted');</script>";

          }
          //echo"<script>alert('hii');</script>";
        }

      
      ?>
     <?php

include("code/footer.php");
?>