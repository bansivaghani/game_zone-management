<?php include("code/header.php"); ?>

<div class="page-body">
    <div class="container-fluid">
        <div class="page-title">
            <div class="row">
                <div class="col-12 col-sm-6">
                    <h3>Manage News</h3>
                </div>
            </div>
        </div>
    </div>

    <!-- Container-fluid starts-->
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-12">
                <div class="card">
                    <div class="card-body">
                        <div class="row my-gallery gallery-with-description" itemscope="">

                        <?php 
                        // Set the number of records per page
                        $limit = 6;

                        // Get the current page number
                        if (isset($_GET['page'])) {
                            $page = $_GET['page'];
                        } else {
                            $page = 1;
                        }

                        // Calculate the starting point for the query
                        $start_from = ($page - 1) * $limit;

                        // SQL query to fetch paginated results
                        $sql = "SELECT * FROM `news` LIMIT $start_from, $limit";
                        $run = mysqli_query($con, $sql);

                        // Loop through the fetched results
                        while ($row = mysqli_fetch_assoc($run)) {
                            extract($row);
                            echo '
                                <figure class="col-xl-3 col-sm-6 xl-33" itemprop="associatedMedia" itemscope="">
                                    <img src="'.$image.'" itemprop="thumbnail" alt="Image description" style="height:250px;">
                                    <div class="caption">
                                        <h4>'.$title.'</h4>
                                        <div style="position: relative;bottom: 30px;left: 80%;">
                                            <a  onclick="window.location=`edit_news.php?id='.$id.'`">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-edit me-1"><path d="M20 14.66V20a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V6a2 2 0 0 1 2-2h5.34"></path><polygon points="18 2 22 6 12 16 8 16 8 12 18 2"></polygon></svg>
                                            </a>
                                            <a  onclick="window.location=`code/delete.php?id='.$id.'&tbl=news&url=Manage_news.php`">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-trash-2"><polyline points="3 6 5 6 21 6"></polyline><path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path><line x1="10" y1="11" x2="10" y2="17"></line><line x1="14" y1="11" x2="14" y2="17"></line></svg>
                                            </a>
                                        </div>
                                        <p>'.$description.'</p>
                                    </div>
                                </figure>';
                        }
                        ?>

                        </div>

                        <!-- Pagination -->
                        <div class="row">
                            <div class="col-12">
                                <ul class="pagination">
                                    <?php 
                                    // Get the total number of rows to calculate the total pages
                                    $sql = "SELECT COUNT(*) FROM `news`";
                                    $result = mysqli_query($con, $sql);
                                    $row = mysqli_fetch_row($result);
                                    $total_records = $row[0];

                                    // Calculate the total number of pages
                                    $total_pages = ceil($total_records / $limit);

                                    // Display the previous page link
                                    if ($page > 1) {
                                        echo '<li class="page-item"><a class="page-link" href="Manage_news.php?page='.($page-1).'">Previous</a></li>';
                                    }

                                    // Display the page number links
                                    for ($i = 1; $i <= $total_pages; $i++) {
                                        if ($i == $page) {
                                            echo '<li class="page-item active"><a class="page-link" href="Manage_news.php?page='.$i.'">'.$i.'</a></li>';
                                        } else {
                                            echo '<li class="page-item"><a class="page-link" href="Manage_news.php?page='.$i.'">'.$i.'</a></li>';
                                        }
                                    }

                                    // Display the next page link
                                    if ($page < $total_pages) {
                                        echo '<li class="page-item"><a class="page-link" href="Manage_news.php?page='.($page+1).'">Next</a></li>';
                                    }
                                    ?>
                                </ul>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Container-fluid Ends-->
</div>

<?php include("code/footer.php"); ?>
