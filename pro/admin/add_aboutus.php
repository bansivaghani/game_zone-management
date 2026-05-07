<?php

include("code/header.php")
?>
        <!-- Page Sidebar Ends-->        <div class="page-body">
          <div class="container-fluid">
           <br>
          </div>
          <!-- Container-fluid starts-->
          <form method="post">
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
                            <input class="form-control" type="text" placeholder="Project name *" name="ct">
                          </div>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col">
                          <div class="mb-3">
                            <label>Image</label>
                            <input class="form-control" type="file" placeholder="Name client or company name" name="i">
                          </div>
                        </div>
                      </div>
                     

                      <div class="row">
                        <div class="col">
                          <div class="mb-3">
                            <label>Enter some Details</label>
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

          $sql="INSERT INTO `category` (`id`, `title`, `image`, `description`) VALUES (NULL, '$ct', '$i', '$d');";
          $run=mysqli_query($con,$sql);

          if($run){
              echo"<script>alert('inserted');</script>";

          }
          //echo"<script>alert('hii');</script>";
        }
      ?>
       <!-- footer start-->
        <footer class="footer">
          <div class="container-fluid">
            <div class="row">
              <div class="col-md-12 footer-copyright text-center">
                <p class="mb-0">Copyright 2022 © Zeta theme by pixelstrap  </p>
              </div>
            </div>
          </div>
        </footer>
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
    <script src="assets/js/scrollbar/simplebar.js"></script>
    <script src="assets/js/scrollbar/custom.js"></script>
    <!-- Sidebar jquery-->
    <script src="assets/js/config.js"></script>
    <!-- Plugins JS start-->
    <script src="assets/js/sidebar-menu.js"></script>
    <script src="assets/js/chart/knob/knob.min.js"></script>
    <script src="assets/js/chart/knob/knob-chart.js"></script>
    <script src="assets/js/chart/apex-chart/apex-chart.js"></script>
    <script src="assets/js/chart/apex-chart/stock-prices.js"></script>
    <script src="assets/js/notify/bootstrap-notify.min.js"></script>
    <script src="assets/js/dashboard/default.js"></script>
    <svg id="SvgjsSvg1274" width="2" height="0" xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.com/svgjs" style="overflow: hidden; top: -100%; left: -100%; position: absolute; opacity: 0;"><defs id="SvgjsDefs1275"></defs><polyline id="SvgjsPolyline1276" points="0,0"></polyline><path id="SvgjsPath1277" d="M-1 135L-1 135C-1 135 38.3125 135 38.3125 135C38.3125 135 76.625 135 76.625 135C76.625 135 114.9375 135 114.9375 135C114.9375 135 229.875 135 229.875 135C229.875 135 268.1875 135 268.1875 135C268.1875 135 306.5 135 306.5 135C306.5 135 344.8125 135 344.8125 135C344.8125 135 383.125 135 383.125 135C383.125 135 498.0625 135 498.0625 135C498.0625 135 536.375 135 536.375 135C536.375 135 574.6875 135 574.6875 135C574.6875 135 613 135 613 135C613 135 613 135 613 135 "></path></svg><script src="assets/js/notify/index.js"></script>
    <script src="assets/js/datepicker/date-picker/datepicker.js"></script>
    <script src="assets/js/datepicker/date-picker/datepicker.en.js"></script>
    <script src="assets/js/datepicker/date-picker/datepicker.custom.js"></script>
    <script src="assets/js/photoswipe/photoswipe.min.js"></script>
    <script src="assets/js/photoswipe/photoswipe-ui-default.min.js"></script>
    <script src="assets/js/photoswipe/photoswipe.js"></script>
    <script src="assets/js/typeahead/handlebars.js"></script>
    <script src="assets/js/typeahead/typeahead.bundle.js"></script>
    <script src="assets/js/typeahead/typeahead.custom.js"></script>
    <script src="assets/js/typeahead-search/handlebars.js"></script>
    <script src="assets/js/typeahead-search/typeahead-custom.js"></script>
    <script src="assets/js/height-equal.js"></script>
    <!-- Plugins JS Ends-->
    <!-- Theme js-->
    <script src="assets/js/script.js"></script>
    



     <div class="customizer-contain"> <div class="tab-content" id="c-pills-tabContent"> <div class="customizer-header"> <i class="icofont-close icon-close"></i> <h5>Preview Settings</h5> <p class="mb-0">Try It Real Time <i class="fa fa-thumbs-o-up txt-primary"></i></p></div><div class="customizer-body custom-scrollbar"> <div class="tab-pane fade show active" id="c-pills-home" role="tabpanel" aria-labelledby="c-pills-home-tab"> <h6>Layout Type</h6> <ul class="main-layout layout-grid"> <li data-attr="ltr" class="active"> <div class="header bg-light"> <ul> <li></li><li></li><li></li></ul> </div><div class="body"> <ul> <li class="bg-light sidebar"></li><li class="bg-light body"><span class="badge badge-primary">LTR</span></li></ul> </div></li><li data-attr="rtl"> <div class="header bg-light"> <ul> <li></li><li></li><li></li></ul> </div><div class="body"> <ul> <li class="bg-light body"><span class="badge badge-primary">RTL</span></li><li class="bg-light sidebar"></li></ul> </div></li><li data-attr="ltr" class="box-layout px-3"> <div class="header bg-light"> <ul> <li></li><li></li><li></li></ul> </div><div class="body"> <ul> <li class="bg-light sidebar"></li><li class="bg-light body"><span class="badge badge-primary">Box</span></li></ul> </div></li></ul> <h6 class="">Sidebar Type</h6> <ul class="sidebar-type layout-grid"> <li data-attr="normal-sidebar"> <div class="header bg-light"> <ul> <li></li><li></li><li></li></ul> </div><div class="body"> <ul> <li class="bg-dark sidebar"></li><li class="bg-light body"></li></ul> </div></li><li data-attr="compact-sidebar"> <div class="header bg-light"> <ul> <li></li><li></li><li></li></ul> </div><div class="body"> <ul> <li class="bg-dark sidebar compact"></li><li class="bg-light body"></li></ul> </div></li></ul> </div><div class="tab-pane fade" id="c-pills-layouts" role="tabpanel" aria-labelledby="c-pills-layouts-tab"> <h6 class="">Unlimited Color</h6> <ul class="layout-grid unlimited-color-layout"> <input id="ColorPicker1" type="color" value="#3e5fce" name="Background"> <input id="ColorPicker2" type="color" value="#ffce00" name="Background"> <button type="button" class="color-apply-btn btn btn-primary color-apply-btn">Apply</button> </ul> <h6>Light layout</h6> <ul class="layout-grid customizer-color"> <li class="color-layout" data-attr="color-1" data-primary="#6362e7" data-secondary="#ffc500"> <div></div></li><li class="color-layout" data-attr="color-2" data-primary="#10539c" data-secondary="#ec9a71"> <div></div></li><li class="color-layout" data-attr="color-3" data-primary="#2c5f2d" data-secondary="#90b757"> <div></div></li><li class="color-layout" data-attr="color-4" data-primary="#0E7C7B" data-secondary="#dbb98f"> <div></div></li><li class="color-layout" data-attr="color-5" data-primary="#5f4b8b" data-secondary="#e69a8d"> <div></div></li><li class="color-layout" data-attr="color-6" data-primary="#c38c81" data-secondary="#89d4df"> <div></div></li></ul> <h6 class="">Dark Layout</h6> <ul class="layout-grid customizer-color dark"> <li class="color-layout" data-attr="color-1" data-primary="#3e5fce" data-secondary="#ffce00"> <div></div></li><li class="color-layout" data-attr="color-2" data-primary="#603f83" data-secondary="#c7d3d4"> <div></div></li><li class="color-layout" data-attr="color-3" data-primary="#262223" data-secondary="#ddc6b6"> <div></div></li><li class="color-layout" data-attr="color-4" data-primary="#234e70" data-secondary="#fbf8bf"> <div></div></li><li class="color-layout" data-attr="color-5" data-primary="#317773" data-secondary="#dbb98f"> <div></div></li><li class="color-layout" data-attr="color-6" data-primary="#755139" data-secondary="#f2edd7"> <div></div></li></ul> <h6 class="">Mix Layout</h6> <ul class="layout-grid customizer-mix"> <li class="color-layout active" data-attr="light-only"> <div class="header bg-light"> <ul> <li></li><li></li><li></li></ul> </div><div class="body"> <ul> <li class="bg-light sidebar"></li><li class="bg-light body"></li></ul> </div></li><li class="color-layout" data-attr="dark-sidebar"> <div class="header bg-light"> <ul> <li></li><li></li><li></li></ul> </div><div class="body"> <ul> <li class="bg-dark sidebar"></li><li class="bg-light body"></li></ul> </div></li><li class="color-layout" data-attr="dark-only"> <div class="header bg-dark"> <ul> <li></li><li></li><li></li></ul> </div><div class="body"> <ul> <li class="bg-dark sidebar"></li><li class="bg-dark body"></li></ul> </div></li></ul> </div></div></div></div>
    <!-- login js-->
    <!-- Plugin used-->
  


</body><!-- Mirrored from admin.pixelstrap.com/zeta/theme/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 06 Jul 2024 11:40:54 GMT --></html>