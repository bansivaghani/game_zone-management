<?php include("code/header.php"); ?>

<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

<?php
// Set the number of records per page
$records_per_page = 4;  // You can change this number based on your preference

// Get the total number of categories
$sql = "SELECT COUNT(*) as total FROM `category`";
$result = mysqli_query($con, $sql);
$row = mysqli_fetch_assoc($result);
$total_records = $row['total'];

// Calculate total pages
$total_pages = ceil($total_records / $records_per_page);

// Get the current page number from the URL, default to 1 if not set
$current_page = isset($_GET['page']) ? $_GET['page'] : 1;
if($current_page < 1) $current_page = 1;
if($current_page > $total_pages) $current_page = $total_pages;

// Calculate the starting point for the query
$start_from = ($current_page - 1) * $records_per_page;

// Fetch records for the current page
$sql = "SELECT * FROM `category` LIMIT $start_from, $records_per_page";
$run = mysqli_query($con, $sql);
?>

<div class="page-body">
    <div class="container-fluid">
        <div class="page-title">
            <div class="row">
                <div class="col-12 col-sm-6">
                    <h3>Manage Category</h3>
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid product-wrapper">
        <div class="product-grid">
            <div class="feature-products"></div>
            <div class="product-wrapper-grid">
                <div class="row">

                    <?php 
                    while ($row = mysqli_fetch_assoc($run)) {
                        extract($row);
                        echo '
                        <div class="col-xl-3 col-sm-6 xl-4">
                            <div class="card">
                                <div class="product-box">
                                    <div class="product-img">
                                        <img class="img-fluid" src="'.$image.'" alt="">
                                        <div class="product-hover">
                                            <ul>
                                                <li><a href="edit_categoery.php?id='.$id.'">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-edit me-1">
                                                        <path d="M20 14.66V20a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V6a2 2 0 0 1 2-2h5.34"></path>
                                                        <polygon points="18 2 22 6 12 16 8 16 8 12 18 2"></polygon>
                                                    </svg>
                                                </a></li>
                                                <li><a href="code/delete.php?id='.$id.'&tbl=category&url=Manage_category.php">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-trash-2">
                                                        <polyline points="3 6 5 6 21 6"></polyline>
                                                        <path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path>
                                                        <line x1="10" y1="11" x2="10" y2="17"></line>
                                                        <line x1="14" y1="11" x2="14" y2="17"></line>
                                                    </svg>
                                                </a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product-details">
                                        <div class="rating"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i></div>
                                        <a href="product-page.html"><h4>'.$title.'</h4></a>
                                        <p>'.$description.'</p>
                                    </div>
                                </div>
                            </div>
                        </div>';
                    }
                    ?>

                </div>
            </div>
        </div>

        <!-- Pagination -->
        <div class="card page-bottom b-r-0">
            <div class="row">
                <div class="col-12 col-sm-6">
                    <div class="info-block">
                        <ul class="pagination pagination-primary">
                            <!-- Previous Page -->
                            <li class="page-item <?php if($current_page == 1) echo 'disabled'; ?>">
                                <a class="page-link" href="?page=<?php echo $current_page - 1; ?>">Previous</a>
                            </li>

                            <!-- Page Numbers -->
                            <?php
                            for ($i = 1; $i <= $total_pages; $i++) {
                                echo '<li class="page-item '.($current_page == $i ? 'active' : '').'">
                                        <a class="page-link" href="?page='.$i.'">'.$i.'</a>
                                      </li>';
                            }
                            ?>

                            <!-- Next Page -->
                            <li class="page-item <?php if($current_page == $total_pages) echo 'disabled'; ?>">
                                <a class="page-link" href="?page=<?php echo $current_page + 1; ?>">Next</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <br>
    </div>
</div>

<?php include("code/footer.php"); ?>
