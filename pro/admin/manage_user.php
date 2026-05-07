<style type="text/css">
  .pagination {
    text-align: center;
    margin-top: 20px;
}

.pagination a {
    padding: 8px 16px;
    margin: 0 4px;
    text-decoration: none;
    color: #007bff;
    border: 1px solid #007bff;
    border-radius: 4px;
}

.pagination a.active {
    background-color: #007bff;
    color: white;
}

.pagination a:hover {
    background-color: #ddd;
}

</style>
<?php
include("code/header.php"); 

// Set the number of records per page
$records_per_page = 10;

// Get the current page from the URL, default to 1 if not set
if (isset($_GET['page'])) {
    $current_page = $_GET['page'];
} else {
    $current_page = 1;
}

// Calculate the starting record for the SQL query
$start_from = ($current_page - 1) * $records_per_page;

// Get the total number of records (for pagination)
$sql_total = "SELECT COUNT(*) AS total FROM `login` WHERE role='user'";
$result_total = mysqli_query($con, $sql_total);
$row_total = mysqli_fetch_assoc($result_total);
$total_records = $row_total['total'];
$total_pages = ceil($total_records / $records_per_page);

// Fetch the records for the current page
$sql = "SELECT * FROM `login` WHERE role='user' LIMIT $start_from, $records_per_page";
$run = mysqli_query($con, $sql);

?>

<div class="page-body">
    <div class="container-fluid">
        <div class="page-title">
            <div class="row">
                <div class="col-12 col-sm-6">
                    <h3>Manage User</h3>
                </div>
            </div>
        </div>
    </div>

    <div class="col-xl-12 col-md-12">
        <div class="card ongoing-project">
            <div class="card-header card-no-border">
                <div class="media media-dashboard">
                    <div class="media-body">
                        <h5 class="mb-0">Manage User </h5>
                    </div>
                </div>
            </div>
            <div class="card-body pt-0">
                <div class="table-responsive custom-scrollbar">
                    <table class="table table-bordernone">
                        <thead> 
                            <tr> 
                                <th> <span>Name </span></th>
                                <th> <span>Join Date</span></th>
                                <th> <span>Role </span></th>
                                <th> <span>Action</span></th>
                            </tr>
                        </thead>
                        <tbody> 
                            <?php 
                            while ($row = mysqli_fetch_assoc($run)) {
                                extract($row);
                                echo '
                                <tr>
                                    <td>
                                        <div class="media">
                                            <div class="square-box me-2"><img class="img-fluid b-r-5" src="assets/images/avtar/boy.png" alt=""></div>
                                            <div class="media-body ps-2">
                                                <div class="avatar-details"><a href="product-page.html">
                                                    <h6>'.$name.'</h6></a><span>'.$gmail.'</span></div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="img-content-box">
                                        <h6>'.$date.'</h6>
                                    </td>
                                    <td>
                                        <div class="badge badge-light-primary">User</div>
                                    </td>
                                    <td>
                                        <a href="edit-profile.php?id='.$id.'">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-edit me-1"><path d="M20 14.66V20a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V6a2 2 0 0 1 2-2h5.34"></path><polygon points="18 2 22 6 12 16 8 16 8 12 18 2"></polygon></svg>
                                        </a>
                                        <a href="code/delete.php?id='.$id.'&tbl=login&url=manage_user.php">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-trash-2"><polyline points="3 6 5 6 21 6"></polyline><path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path><line x1="10" y1="11" x2="10" y2="17"></line><line x1="14" y1="11" x2="14" y2="17"></line></svg>
                                        </a>
                                    </td>
                                </tr>
                                ';
                            }
                            ?>
                        </tbody>
                    </table>
                </div>

                <!-- Pagination Links -->
                <div class="pagination">
                    <?php
                    if ($current_page > 1) {
                        echo '<a href="manage_user.php?page='.($current_page - 1).'" class="prev">Previous</a>';
                    }

                    // Loop through the pages and create links
                    for ($i = 1; $i <= $total_pages; $i++) {
                        if ($i == $current_page) {
                            echo '<a href="manage_user.php?page='.$i.'" class="active">'.$i.'</a>';
                        } else {
                            echo '<a href="manage_user.php?page='.$i.'">'.$i.'</a>';
                        }
                    }

                    if ($current_page < $total_pages) {
                        echo '<a href="manage_user.php?page='.($current_page + 1).'" class="next">Next</a>';
                    }
                    ?>
                </div>
            </div>
        </div>
    </div>
</div>

<?php include("code/footer.php"); ?>
