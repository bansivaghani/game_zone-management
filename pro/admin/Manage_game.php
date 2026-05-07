<?php include("code/header.php"); ?>

<div class="page-body">
    <div class="container-fluid">
        <div class="page-title">
            <div class="row">
                <div class="col-12 col-sm-6">
                    <h3>Game List</h3>
                </div>
            </div>
        </div>
    </div>

    <!-- Container-fluid starts-->
    <div class="container-fluid list-products">
        <div class="row">
            <!-- Individual column searching (text inputs) Starts-->

            <div class="col-sm-12">
                <div class="card">
                    <div class="card-body">
                        <div class="tab-content" id="top-tabContent">
                            <div class="tab-pane fade show active" id="top-home" role="tabpanel" aria-labelledby="top-home-tab">
                                <div class="row">

<?php
// Pagination variables
$limit = 10; // Number of records per page
$page = isset($_GET['page']) ? (int)$_GET['page'] : 1;
$offset = ($page - 1) * $limit;

// SQL to get paginated results
$sql = "SELECT * FROM `items` LIMIT $offset, $limit";
$run = mysqli_query($con, $sql);

// Display each record
while ($row = mysqli_fetch_assoc($run)) {
    extract($row);

    // Get category title
    $sql_1 = "SELECT * FROM `category` WHERE id = $c_id";
    $run_2 = mysqli_query($con, $sql_1);
    $row_2 = mysqli_fetch_assoc($run_2);

    echo '
        <div class="col-xxl-4 box-col-6 col-lg-6">
            <div class="project-box">
                <span class="badge badge-primary">
                    <a onclick="window.location=`edit_game.php?id='.$id.'`">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-edit me-1">
                            <path d="M20 14.66V20a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V6a2 2 0 0 1 2-2h5.34"></path>
                            <polygon points="18 2 22 6 12 16 8 16 8 12 18 2"></polygon>
                        </svg>
                    </a>

                    <a onclick="window.location=`code/delete.php?id='.$id.'&tbl=items&url=manage_game.php`">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-trash-2">
                            <polyline points="3 6 5 6 21 6"></polyline>
                            <path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path>
                            <line x1="10" y1="11" x2="10" y2="17"></line>
                            <line x1="14" y1="11" x2="14" y2="17"></line>
                        </svg>
                    </a>
                </span>
                <h6>'.$title.'</h6>
                <div class="media">
                    <img class="img-20 me-2 rounded-circle" src="'.$row_2['image'].'" alt="" title="">
                    <div class="media-body">
                        <p>'.$row_2['title'].'</p>
                    </div>
                </div>
                <p>'.$description.'</p>
                <div class="row details">
                    <div class="col-6"><span>Player</span></div>
                    <div class="col-6 font-primary">: '.$player.'</div>
                    <div class="col-6"><span>Time</span></div>
                    <div class="col-6 font-primary">: '.$time.'</div>
                    <div class="col-6"><span>Price(₹)</span></div>
                    <div class="col-6 font-primary">: '.$price.'</div>
                </div>
            </div>
        </div>';
}

// Get total number of records for pagination
$sql_total = "SELECT COUNT(*) AS total FROM `items`";
$run_total = mysqli_query($con, $sql_total);
$row_total = mysqli_fetch_assoc($run_total);
$total_pages = ceil($row_total['total'] / $limit);

// Pagination controls
echo '
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>';

// Add pagination links
echo '<div class="row">
        <div class="col-12">
            <ul class="pagination pagination-primary">';
            
// Previous page link
if ($page > 1) {
    echo '<li class="page-item"><a class="page-link" href="?page='.($page - 1).'">Previous</a></li>';
} else {
    echo '<li class="page-item disabled"><a class="page-link" href="#">Previous</a></li>';
}

// Page number links
for ($i = 1; $i <= $total_pages; $i++) {
    $active = ($i == $page) ? 'active' : '';
    echo '<li class="page-item '.$active.'"><a class="page-link" href="?page='.$i.'">'.$i.'</a></li>';
}

// Next page link
if ($page < $total_pages) {
    echo '<li class="page-item"><a class="page-link" href="?page='.($page + 1).'">Next</a></li>';
} else {
    echo '<li class="page-item disabled"><a class="page-link" href="#">Next</a></li>';
}

echo '</ul>
        </div>
    </div>';
?>

            </div>
        </div>
    </div>
</div>

<?php include("code/footer.php"); ?>
