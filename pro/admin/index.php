<?php include("code/header.php"); ?>
        <div class="page-body">
          <div class="container-fluid">        
            <div class="page-title">
              <div class="row">
                <div class="col-12 col-sm-6">
                  <h3>Default</h3>
                </div>
                <div class="col-12 col-sm-6">
                  <ol class="breadcrumb">
                    <li class="breadcrumb-item"> <a class="home-item" href="index.html"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-home"><path d="M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"></path><polyline points="9 22 9 12 15 12 15 22"></polyline></svg></a></li>
                    <li class="breadcrumb-item"> Dashboard</li>
                    <li class="breadcrumb-item active"> Default</li>
                    

                  </ol>
                </div>
              </div>
            </div>
          </div>
          <!-- Container-fluid starts-->
          <div class="container-fluid default-dash">
            <div class="row"> 
              <div class="col-xl-6 col-md-6 dash-xl-50">
                <div class="card profile-greeting">
                  <div class="card-body">
                    <div class="media">
                      <div class="media-body"> 
                        <div class="greeting-user">
                          <h1>Hello, Harry Mendez</h1>
                          <p>Welcome back, your dashboard is ready!</p><a class="btn btn-outline-white_color" href="../../">Go TO Website<i class="icon-arrow-right">                           </i></a>
                        </div>
                      </div>
                    </div>
                    <div class="cartoon-img"><img class="img-fluid" src="https://admin.pixelstrap.com/zeta/assets/images/images.svg" alt=""></div>
                  </div>
                </div>
              </div>
              <div class="col-xl-3 col-md-6 dash-xl-50">
                <div class="card pb-0 o-hidden earning-card">
                  <div class="card-header earning-back"></div>
                  <div class="card-body p-0">
                    <div class="earning-content" style="position: relative;"><img class="img-fluid" src="assets/images/avatar.jpg" alt=""><a href="blog-single.html">
                        <h4>Total 's Earning</h4></a><span>(Mon 15 - Sun 21)</span>
                      <h6>₹ <?php 




$sql="SELECT sum(amout) FROM `payment`";
$run=mysqli_query($con,$sql);
$total=mysqli_num_rows($run);
$fetch=mysqli_fetch_array($run);

echo $fetch[0];
                      ; ?></h6>
                      <div id="earning-chart" style="min-height: 120px;"><div id="apexchartsrbfti9dz" class="apexcharts-canvas apexchartsrbfti9dz apexcharts-theme-light" style="width: 613px; height: 105px;"><svg id="SvgjsSvg1845" width="613" height="105" xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.com/svgjs" class="apexcharts-svg apexcharts-zoomable hovering-zoom" xmlns:data="ApexChartsNS" transform="translate(0, 0)" style="background: transparent;"><g id="SvgjsG1847" class="apexcharts-inner apexcharts-graphical" transform="translate(0, -5)"><defs id="SvgjsDefs1846"><clipPath id="gridRectMaskrbfti9dz"><rect id="SvgjsRect1868" width="620" height="98" x="-3.5" y="-1.5" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath><clipPath id="gridRectMarkerMaskrbfti9dz"><rect id="SvgjsRect1869" width="617" height="99" x="-2" y="-2" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath><linearGradient id="SvgjsLinearGradient1874" x1="0" y1="0" x2="0" y2="1"><stop id="SvgjsStop1875" stop-opacity="0.65" stop-color="rgba(99,98,231,0.65)" offset="0"></stop><stop id="SvgjsStop1876" stop-opacity="0.3" stop-color="rgba(177,177,243,0.3)" offset="1"></stop><stop id="SvgjsStop1877" stop-opacity="0.3" stop-color="rgba(177,177,243,0.3)" offset="1"></stop></linearGradient></defs><g id="SvgjsG1880" class="apexcharts-xaxis" transform="translate(0, 0)"><g id="SvgjsG1881" class="apexcharts-xaxis-texts-g" transform="translate(0, -4)"></g></g><g id="SvgjsG1893" class="apexcharts-grid"><g id="SvgjsG1894" class="apexcharts-gridlines-horizontal" style="display: none;"><line id="SvgjsLine1904" x1="0" y1="0" x2="613" y2="0" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line><line id="SvgjsLine1905" x1="0" y1="15.833333333333334" x2="613" y2="15.833333333333334" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line><line id="SvgjsLine1906" x1="0" y1="31.666666666666668" x2="613" y2="31.666666666666668" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line><line id="SvgjsLine1907" x1="0" y1="47.5" x2="613" y2="47.5" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line><line id="SvgjsLine1908" x1="0" y1="63.333333333333336" x2="613" y2="63.333333333333336" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line><line id="SvgjsLine1909" x1="0" y1="79.16666666666667" x2="613" y2="79.16666666666667" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line><line id="SvgjsLine1910" x1="0" y1="95" x2="613" y2="95" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line></g><g id="SvgjsG1895" class="apexcharts-gridlines-vertical" style="display: none;"></g><line id="SvgjsLine1896" x1="1.5963541666666667" y1="96" x2="1.5963541666666667" y2="102" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-xaxis-tick"></line><line id="SvgjsLine1897" x1="78.22135416666666" y1="96" x2="78.22135416666666" y2="102" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-xaxis-tick"></line><line id="SvgjsLine1898" x1="154.84635416666666" y1="96" x2="154.84635416666666" y2="102" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-xaxis-tick"></line><line id="SvgjsLine1899" x1="231.47135416666666" y1="96" x2="231.47135416666666" y2="102" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-xaxis-tick"></line><line id="SvgjsLine1900" x1="308.09635416666663" y1="96" x2="308.09635416666663" y2="102" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-xaxis-tick"></line><line id="SvgjsLine1901" x1="384.72135416666663" y1="96" x2="384.72135416666663" y2="102" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-xaxis-tick"></line><line id="SvgjsLine1902" x1="461.34635416666663" y1="96" x2="461.34635416666663" y2="102" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-xaxis-tick"></line><line id="SvgjsLine1903" x1="537.9713541666666" y1="96" x2="537.9713541666666" y2="102" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-xaxis-tick"></line><line id="SvgjsLine1912" x1="0" y1="95" x2="613" y2="95" stroke="transparent" stroke-dasharray="0"></line><line id="SvgjsLine1911" x1="0" y1="1" x2="0" y2="95" stroke="transparent" stroke-dasharray="0"></line></g><g id="SvgjsG1870" class="apexcharts-area-series apexcharts-plot-series"><g id="SvgjsG1871" class="apexcharts-series" seriesName="Seriesx1" data:longestSeries="true" rel="1" data:realIndex="0"><path id="SvgjsPath1878" d="M 0 95L 0 85.5C 13.409374999999999 85.5 24.903125000000003 63.33333333333333 38.3125 63.33333333333333C 51.721875 63.33333333333333 63.215625 71.25 76.625 71.25C 90.034375 71.25 101.528125 31.666666666666664 114.9375 31.666666666666664C 155.165625 31.666666666666664 189.646875 66.5 229.875 66.5C 243.284375 66.5 254.778125 63.33333333333333 268.1875 63.33333333333333C 281.596875 63.33333333333333 293.090625 66.5 306.5 66.5C 319.909375 66.5 331.403125 58.58333333333333 344.8125 58.58333333333333C 358.221875 58.58333333333333 369.715625 66.5 383.125 66.5C 423.353125 66.5 457.834375 39.58333333333333 498.0625 39.58333333333333C 511.471875 39.58333333333333 522.965625 47.5 536.375 47.5C 549.784375 47.5 561.278125 7.916666666666657 574.6875 7.916666666666657C 588.096875 7.916666666666657 599.590625 95 613 95C 613 95 613 95 613 95M 613 95z" fill="url(#SvgjsLinearGradient1874)" fill-opacity="1" stroke-opacity="1" stroke-linecap="round" stroke-width="0" stroke-dasharray="0" class="apexcharts-area" index="0" clip-path="url(#gridRectMaskrbfti9dz)" pathTo="M 0 95L 0 85.5C 13.409374999999999 85.5 24.903125000000003 63.33333333333333 38.3125 63.33333333333333C 51.721875 63.33333333333333 63.215625 71.25 76.625 71.25C 90.034375 71.25 101.528125 31.666666666666664 114.9375 31.666666666666664C 155.165625 31.666666666666664 189.646875 66.5 229.875 66.5C 243.284375 66.5 254.778125 63.33333333333333 268.1875 63.33333333333333C 281.596875 63.33333333333333 293.090625 66.5 306.5 66.5C 319.909375 66.5 331.403125 58.58333333333333 344.8125 58.58333333333333C 358.221875 58.58333333333333 369.715625 66.5 383.125 66.5C 423.353125 66.5 457.834375 39.58333333333333 498.0625 39.58333333333333C 511.471875 39.58333333333333 522.965625 47.5 536.375 47.5C 549.784375 47.5 561.278125 7.916666666666657 574.6875 7.916666666666657C 588.096875 7.916666666666657 599.590625 95 613 95C 613 95 613 95 613 95M 613 95z" pathFrom="M -1 95L -1 95L 38.3125 95L 76.625 95L 114.9375 95L 229.875 95L 268.1875 95L 306.5 95L 344.8125 95L 383.125 95L 498.0625 95L 536.375 95L 574.6875 95L 613 95"></path><path id="SvgjsPath1879" d="M 0 85.5C 13.409374999999999 85.5 24.903125000000003 63.33333333333333 38.3125 63.33333333333333C 51.721875 63.33333333333333 63.215625 71.25 76.625 71.25C 90.034375 71.25 101.528125 31.666666666666664 114.9375 31.666666666666664C 155.165625 31.666666666666664 189.646875 66.5 229.875 66.5C 243.284375 66.5 254.778125 63.33333333333333 268.1875 63.33333333333333C 281.596875 63.33333333333333 293.090625 66.5 306.5 66.5C 319.909375 66.5 331.403125 58.58333333333333 344.8125 58.58333333333333C 358.221875 58.58333333333333 369.715625 66.5 383.125 66.5C 423.353125 66.5 457.834375 39.58333333333333 498.0625 39.58333333333333C 511.471875 39.58333333333333 522.965625 47.5 536.375 47.5C 549.784375 47.5 561.278125 7.916666666666657 574.6875 7.916666666666657C 588.096875 7.916666666666657 599.590625 95 613 95" fill="none" fill-opacity="1" stroke="#6362e7" stroke-opacity="1" stroke-linecap="round" stroke-width="3" stroke-dasharray="0" class="apexcharts-area" index="0" clip-path="url(#gridRectMaskrbfti9dz)" pathTo="M 0 85.5C 13.409374999999999 85.5 24.903125000000003 63.33333333333333 38.3125 63.33333333333333C 51.721875 63.33333333333333 63.215625 71.25 76.625 71.25C 90.034375 71.25 101.528125 31.666666666666664 114.9375 31.666666666666664C 155.165625 31.666666666666664 189.646875 66.5 229.875 66.5C 243.284375 66.5 254.778125 63.33333333333333 268.1875 63.33333333333333C 281.596875 63.33333333333333 293.090625 66.5 306.5 66.5C 319.909375 66.5 331.403125 58.58333333333333 344.8125 58.58333333333333C 358.221875 58.58333333333333 369.715625 66.5 383.125 66.5C 423.353125 66.5 457.834375 39.58333333333333 498.0625 39.58333333333333C 511.471875 39.58333333333333 522.965625 47.5 536.375 47.5C 549.784375 47.5 561.278125 7.916666666666657 574.6875 7.916666666666657C 588.096875 7.916666666666657 599.590625 95 613 95" pathFrom="M -1 95L -1 95L 38.3125 95L 76.625 95L 114.9375 95L 229.875 95L 268.1875 95L 306.5 95L 344.8125 95L 383.125 95L 498.0625 95L 536.375 95L 574.6875 95L 613 95"></path><g id="SvgjsG1872" class="apexcharts-series-markers-wrap" data:realIndex="0"><g class="apexcharts-series-markers"><circle id="SvgjsCircle1920" r="0" cx="574.6875" cy="7.916666666666657" class="apexcharts-marker wkicbp7s7 no-pointer-events" stroke="#ffffff" fill="#6362e7" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" default-marker-size="0"></circle></g></g></g><g id="SvgjsG1873" class="apexcharts-datalabels" data:realIndex="0"></g></g><line id="SvgjsLine1913" x1="0" y1="0" x2="613" y2="0" stroke="#b6b6b6" stroke-dasharray="0" stroke-width="1" class="apexcharts-ycrosshairs"></line><line id="SvgjsLine1914" x1="0" y1="0" x2="613" y2="0" stroke-dasharray="0" stroke-width="0" class="apexcharts-ycrosshairs-hidden"></line><g id="SvgjsG1915" class="apexcharts-yaxis-annotations"></g><g id="SvgjsG1916" class="apexcharts-xaxis-annotations"></g><g id="SvgjsG1917" class="apexcharts-point-annotations"><circle id="SvgjsCircle1918" r="6" cx="261.00390625" cy="63.33333333333333" class="apexcharts-point-annotation-marker  " stroke="#6362e7" fill="#ffffff" fill-opacity="1" stroke-width="3" stroke-opacity="1"></circle><text id="SvgjsText1919" font-family="Helvetica, Arial, sans-serif" x="261.00390625" y="46.33333333333333" text-anchor="middle" dominant-baseline="auto" font-size="11px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-point-annotation-label  " rel="0" style="font-family: Helvetica, Arial, sans-serif;"></text></g><rect id="SvgjsRect1921" width="0" height="0" x="0" y="0" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fefefe" class="apexcharts-zoom-rect"></rect><rect id="SvgjsRect1922" width="0" height="0" x="0" y="0" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fefefe" class="apexcharts-selection-rect"></rect></g><g id="SvgjsG1891" class="apexcharts-yaxis" rel="0" transform="translate(-8, 0)"><g id="SvgjsG1892" class="apexcharts-yaxis-texts-g"></g></g><g id="SvgjsG1848" class="apexcharts-annotations"></g></svg><div class="apexcharts-legend" style="max-height: 52.5px;"></div><div class="apexcharts-tooltip apexcharts-theme-light" style="left: 468.828px; top: 10.9167px;"><div class="apexcharts-tooltip-series-group apexcharts-active" style="order: 1; display: flex;"><span class="apexcharts-tooltip-marker" style="background-color: rgb(99, 98, 231);"></span><div class="apexcharts-tooltip-text" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"><div class="apexcharts-tooltip-y-group"><span class="apexcharts-tooltip-text-label">Series 1: </span><span class="apexcharts-tooltip-text-value">55</span></div><div class="apexcharts-tooltip-z-group"><span class="apexcharts-tooltip-text-z-label"></span><span class="apexcharts-tooltip-text-z-value"></span></div></div></div></div><div class="apexcharts-yaxistooltip apexcharts-yaxistooltip-0 apexcharts-yaxistooltip-left apexcharts-theme-light"><div class="apexcharts-yaxistooltip-text"></div></div></div></div>
                    <div class="resize-triggers"><div class="expand-trigger"><div style="width: 614px; height: 178px;"></div></div><div class="contract-trigger"></div></div></div>
                  </div>
                </div>
              </div>
              
              
              <div class="col-xl-12 col-md-12 ">
                <div class="card ongoing-project">
                  <div class="card-header card-no-border">
                    <div class="media media-dashboard">
                      <div class="media-body"> 
                        <h5 class="mb-0">Ongoing Projects         </h5>
                      </div>
                    </div>
                  </div>
                  <div class="card-body pt-0">
                    <div class="table-responsive custom-scrollbar">
                   <table class="table table-bordernone">
                        <thead>
                            <tr>
                                <th scope="col">Name</th>
                                <th scope="col">Game Name</th>
                                <th scope="col">Amount</th>
                                <th scope="col">Total Person</th>
                                <th scope="col">Date</th>
                                <th scope="col">Action</th>
                            </tr>
                        </thead>
                        <tbody>


                            <?php 


if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $payment_id = $_POST['payment_id'];
    $new_action = $_POST['action'];

    if (in_array($new_action, ['pending', 'approved', 'cancelled'])) {
        $sql = "UPDATE `payment` SET `action` = ? WHERE `id` = ?";
        $stmt = mysqli_prepare($con, $sql);
        mysqli_stmt_bind_param($stmt, "si", $new_action, $payment_id);
        mysqli_stmt_execute($stmt);
        mysqli_stmt_close($stmt);
    }
}
                            $sql = "SELECT * FROM `payment` where action='pending'  limit 3";
                            $run = mysqli_query($con, $sql);

                            while ($row = mysqli_fetch_assoc($run)) {
                                extract($row);

                                $sql1 = "SELECT * FROM `login` WHERE id=$u_id";
                                $run1 = mysqli_query($con, $sql1);
                                $row_u = mysqli_fetch_assoc($run1);

                                $sql2 = "SELECT * FROM `items` WHERE id=$g_id";
                                $run2 = mysqli_query($con, $sql2);
                                $row_g = mysqli_fetch_assoc($run2);

                                echo ' 
                                <tr>
                                    <td>
                                        <div class="media">
                                            <img src="assets/images/user/4.jpg" alt="">
                                            <div class="media-body">
                                                <h5>'.$row_u['name'].'</h5>
                                                <h7>'.$row_u['gmail'].'</h7>
                                            </div>
                                        </div>
                                    </td>
                                    <td>'.$row_g['title'].'</td>
                                    <td>'.$amout.' ₹</td>
                                    <td>'.$person.' Person</td>
                                    <td>'.$date.'</td>
                                    <td>
                                        <form method="POST" action="">
                                            <input type="hidden" name="payment_id" value="'.$id.'">
                                            <select name="action" class="form-control" onchange="this.form.submit()">
                                                <option value="pending" '.($action == "pending" ? "selected" : "").'>Pending</option>
                                                <option value="approved" '.($action == "approved" ? "selected" : "").'>Approved</option>
                                                <option value="cancelled" '.($action == "cancelled" ? "selected" : "").'>Cancelled</option>
                                            </select>
                                        </form>
                                    </td>
                                </tr>';
                            }
                            ?>
                        </tbody>
                    </table>
                      </table>
                    </div>
                  </div>
                </div>
              </div>
              
              
              
              
            </div>
          </div>
          <!-- Container-fluid Ends-->
        </div>
       <?php include("code/footer.php"); ?>
