<?php include("code/header.php"); ?>
<!-- jQuery CDN -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<!-- Bootstrap JavaScript (for modal functionality) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

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

    <!-- Container-fluid starts-->
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
                                include("code/db_connection.php"); // Include your database connection

                                $sql = "SELECT * FROM `payment`";
                                $run = mysqli_query($con, $sql);

                                while ($row = mysqli_fetch_assoc($run)) {
                                    extract($row);

                                    $sql1 = "SELECT * FROM `login` WHERE id = $u_id";
                                    $run1 = mysqli_query($con, $sql1);
                                    $row_u = mysqli_fetch_assoc($run1);

                                    $sql2 = "SELECT * FROM `items` WHERE id = $g_id";
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
    <a href="javascript:void(0);" class=" view-btn"
       data-id="'.$id.'" 
       data-name="'.$row_u['name'].'"
       data-game="'.$row_g['title'].'"
       data-amount="'.$amout.'"
       data-person="'.$person.'"
       data-date="'.$date.'">
        <i class="fa fa-eye" style="font-size:24px;"></i>  <!-- Eye Icon -->
    </a>

                                                <a href="code/delete.php?id='.$id.'&tbl=payment&url=manage_payment.php">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-trash-2">
                                                        <polyline points="3 6 5 6 21 6"></polyline>
                                                        <path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path>
                                                        <line x1="10" y1="11" x2="10" y2="17"></line>
                                                        <line x1="14" y1="11" x2="14" y2="17"></line>
                                                    </svg>
                                                </a>
                                            </td>
                                        </tr>
                                    ';
                                }
                            ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <!-- Container-fluid Ends-->
</div>

<!-- Modal for Viewing Payment Details -->
<div class="modal fade" id="viewModal" tabindex="-1" role="dialog" aria-labelledby="viewModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content text-center" style="max-width: 400px; margin: auto;">
            <div class="modal-header" style="background-color: #007bff; color: white;">
                <h5 class="modal-title" id="viewModalLabel">Payment Details</h5>
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div id="payment-details-card" class="card text-center" style="border-radius: 15px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); padding: 15px;">
                    <div class="card-body">
                        <h5 class="card-title" id="payment-name"></h5>
                        <h6 class="card-subtitle mb-2 text-muted" id="game-name"></h6>
                        <p class="card-text" id="payment-amount"></p>
                        <p class="card-text" id="payment-person"></p>
                        <p class="card-text" id="payment-date"></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
// jQuery to handle the view button click event
$(document).on('click', '.view-btn', function() {
    var paymentName = $(this).data('name');
    var gameName = $(this).data('game');
    var amount = $(this).data('amount');
    var person = $(this).data('person');
    var date = $(this).data('date');

    // Populate the modal content
    $('#payment-name').text(paymentName);
    $('#game-name').text(gameName);
    $('#payment-amount').text('Amount: ₹' + amount);
    $('#payment-person').text('Persons: ' + person);
    $('#payment-date').text('Date: ' + date);

    // Show the modal
    $('#viewModal').modal('show');
});
</script>

<style>
/* Center the modal properly */
.modal-dialog-centered {
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
}

/* Custom styling for payment details card */
#payment-details-card {
    border-radius: 15px;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
    padding: 20px;
    text-align: center;
}

/* Custom modal content style */
.modal-content {
    border-radius: 15px;
    overflow: hidden;
}
</style>

<?php include("code/footer.php"); ?>
