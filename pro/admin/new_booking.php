<?php 
include("code/header.php");
 // Include database connection

// Set the number of records per page
$records_per_page = 5;

// Find out how many total records are in the database
$sql_count = "SELECT COUNT(*) AS total FROM `payment`";
$result_count = mysqli_query($con, $sql_count);
$row_count = mysqli_fetch_assoc($result_count);
$total_records = $row_count['total'];

// Calculate the total number of pages needed
$total_pages = ceil($total_records / $records_per_page);

// Get the current page number from the URL, default is 1 if not set
$current_page = isset($_GET['page']) ? $_GET['page'] : 1;

// Calculate the OFFSET based on the current page
$offset = ($current_page - 1) * $records_per_page;

// If the form is submitted to update the payment action
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

// Fetch the payments with LIMIT and OFFSET
$sql = "SELECT * FROM `payment` LIMIT $offset, $records_per_page";
$run = mysqli_query($con, $sql);
?>

<div class="page-body">
    <div class="container-fluid">
        <div class="page-title">
            <div class="row">
                <div class="col-12 col-sm-6">
                    <h3>Manage User Payment</h3>
                </div>
            </div>
        </div>
    </div>

    <div class="col-xl-12 col-md-12">
        <div class="card ongoing-project">
            <div class="card-header card-no-border">
                <div class="media media-dashboard">
                    <div class="media-body">
                        <h5 class="mb-0">Payment Status</h5>
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
                </div>

                <!-- Pagination Links -->
                <nav>
                    <ul class="pagination justify-content-center">
                        <li class="page-item <?php if($current_page == 1) echo 'disabled'; ?>">
                            <a class="page-link" href="?page=<?php echo $current_page - 1; ?>">Previous</a>
                        </li>
                        <?php 
                        for ($i = 1; $i <= $total_pages; $i++) {
                            echo '<li class="page-item '.($i == $current_page ? 'active' : '').'">
                                    <a class="page-link" href="?page='.$i.'">'.$i.'</a>
                                  </li>';
                        }
                        ?>
                        <li class="page-item <?php if($current_page == $total_pages) echo 'disabled'; ?>">
                            <a class="page-link" href="?page=<?php echo $current_page + 1; ?>">Next</a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
</div>

<?php include("code/footer.php"); ?>
