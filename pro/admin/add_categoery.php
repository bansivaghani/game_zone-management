<?php

include("code/header.php")
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
                            <input class="form-control" type="text" placeholder="Project name *" name="t">
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
                            <textarea class="form-control" id="exampleFormControlTextarea4" rows="3" name="d"></textarea>
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
   
          $sql="INSERT INTO `category` (`id`, `title`, `image`, `description`) VALUES (NULL, '$t', '$path', '$d');";

        
          $run=mysqli_query($con,$sql);

          if($run){
            echo "<script>window.location='url.php?url=add_categoery.php'</script>";
            //  echo"<script>alert('inserted');</script>";

          }
          //echo"<script>alert('hii');</script>";
        }

      }
      ?>
     <?php

include("code/footer.php");
?>