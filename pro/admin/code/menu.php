<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<style type="text/css">


  
  /* Add styles to the sidebar menu */
#sidebar-menu {
    height: 100vh; /* Ensure the sidebar takes full height of the viewport */
    overflow-y: auto; /* Enables vertical scrolling when content exceeds the height */
    padding-right: 15px; /* Adds some padding for the scrollbar */
}

/* Optional: Add a smooth scroll effect */
#sidebar-menu::-webkit-scrollbar {
    width: 8px; /* Set the width of the scrollbar */
}

#sidebar-menu::-webkit-scrollbar-thumb {
    background-color: rgba(0, 0, 0, 0.3); /* Darker color for the scrollbar thumb */
    border-radius: 10px;
}

#sidebar-menu::-webkit-scrollbar-track {
    background-color: #f1f1f1; /* Light color for the scrollbar track */
}

/* Optional: Set a maximum height to the submenu to make it scrollable */
.sidebar-submenu {
    max-height: 300px; /* Adjust this value according to your needs */
    overflow-y: auto;
}

</style>
<nav class="sidebar-main">
    <div class="left-arrow disabled" id="left-arrow">
        <i class="fa fa-chevron-left"></i> <!-- Replaced the SVG with Font Awesome left arrow -->
    </div>
    <div id="sidebar-menu">
        <ul class="sidebar-links" id="simple-bar" data-simplebar="init" style="display: block;">
            <div class="simplebar-wrapper" style="margin: 0px;">
                <div class="simplebar-height-auto-observer-wrapper">
                    <div class="simplebar-height-auto-observer"></div>
                </div>
                <div class="simplebar-mask">
                    <div class="simplebar-offset" style="right: 0px; bottom: 0px;">
                        <div class="simplebar-content-wrapper">
                            <div class="simplebar-content" style="padding: 0px;">
                                <li class="back-btn">
                                    <a href="index.html" class="active">
                                        <img class="img-fluid" src="assets/images/logo-icon.png" alt="">
                                    </a>
                                    <div class="mobile-back text-end">
                                        <span>Back</span>
                                        <i class="fa fa-angle-right ps-2" aria-hidden="true"></i>
                                    </div>
                                </li>

                                <li class="sidebar-list">
                                    <a class="sidebar-link sidebar-title active" href="#">
                                        <i class="fa fa-tachometer-alt"></i> <!-- Replaced SVG with Font Awesome Dashboard icon -->
                                        <span class="lan-3">Dashboards</span>
                                        <div class="according-menu">
                                            <i class="fa fa-angle-down"></i>
                                        </div>
                                    </a>
                                    <ul class="sidebar-submenu" style="display: block;">
                                        <li><a class="active" href="index.php">Home</a></li>
                                    </ul>
                                </li>

                                <li class="sidebar-list">
                                    
                                    <a class="sidebar-link sidebar-title active" href="#">
                                        <i class="fa fa-user"></i> <!-- Replaced SVG with Font Awesome User icon -->
                                        <span>User</span>
                                        <div class="according-menu">
                                            <i class="fa fa-angle-down"></i>
                                        </div>
                                    </a>
                                    <ul class="sidebar-submenu" style="display: block;">
                                        <li><a class="active" href="manage_user.php">Manage User</a></li>
                                    </ul>
                                </li>

                                <li class="sidebar-list">
                                    
                                    <a class="sidebar-link sidebar-title active" href="#">
                                        <i class="fa fa-bookmark"></i> <!-- Replaced SVG with Font Awesome Booking icon -->
                                        <span>Booking</span>
                                        <div class="according-menu">
                                            <i class="fa fa-angle-down"></i>
                                        </div>
                                    </a>
                                    <ul class="sidebar-submenu" style="display: block;">
                                        <li><a class="active" href="new_booking.php">All Booking</a></li>
                                        <li><a href="approved_booking.php">Approved Booking</a></li>
                                        <li><a href="cancle_booking.php">Cancel Booking</a></li>
                                    </ul>
                                </li>

                                <li class="sidebar-list">
                                    
                                    <a class="sidebar-link sidebar-title active" href="#">
                                        <i class="fa fa-th"></i> <!-- Replaced SVG with Font Awesome Category icon -->
                                        <span>Category</span>
                                        <div class="according-menu">
                                            <i class="fa fa-angle-down"></i>
                                        </div>
                                    </a>
                                    <ul class="sidebar-submenu" style="display: block;">
                                        <li><a class="active" href="add_categoery.php">Add Category</a></li>
                                        <li><a href="Manage_category.php">Manage Category</a></li>
                                    </ul>
                                </li>

                                <li class="sidebar-list">
                                    
                                    <a class="sidebar-link sidebar-title active" href="#">
                                        <i class="fa fa-gamepad"></i> <!-- Replaced SVG with Font Awesome Game icon -->
                                        <span>Game</span>
                                        <div class="according-menu">
                                            <i class="fa fa-angle-down"></i>
                                        </div>
                                    </a>
                                    <ul class="sidebar-submenu" style="display: block;">
                                        <li><a class="active" href="add_game.php">Add Game</a></li>
                                        <li><a href="Manage_game.php">Manage Game</a></li>
                                    </ul>
                                </li>

                                <li class="sidebar-list">
                                    
                                    <a class="sidebar-link sidebar-title active" href="#">
                                        <i class="fa fa-newspaper"></i> <!-- Replaced SVG with Font Awesome News icon -->
                                        <span>News</span>
                                        <div class="according-menu">
                                            <i class="fa fa-angle-down"></i>
                                        </div>
                                    </a>
                                    <ul class="sidebar-submenu" style="display: block;">
                                        <li><a class="active" href="add_news.php">Add News</a></li>
                                        <li><a href="Manage_news.php">Manage News</a></li>
                                    </ul>
                                </li>

                                <li class="sidebar-list">
                                    
                                    <a class="sidebar-link sidebar-title active" href="#">
                                        <i class="fa fa-info-circle"></i> <!-- Replaced SVG with Font Awesome About Us icon -->
                                        <span>About Us</span>
                                        <div class="according-menu">
                                            <i class="fa fa-angle-down"></i>
                                        </div>
                                    </a>
                                    <ul class="sidebar-submenu" style="display: block;">
                                        <li><a href="Manage_aboutus.php">Manage About</a></li>
                                    </ul>
                                </li>

                                <li class="sidebar-list">
                                    
                                    <a class="sidebar-link sidebar-title active" href="#">
                                        <i class="fa fa-address-book"></i> <!-- Replaced SVG with Font Awesome Contact icon -->
                                        <span>Contact Detail</span>
                                        <div class="according-menu">
                                            <i class="fa fa-angle-down"></i>
                                        </div>
                                    </a>
                                    <ul class="sidebar-submenu" style="display: block;">
                                        <li><a class="active" href="manage_contact.php">Manage Contact</a></li>
                                    </ul>
                                </li>

                                <li class="sidebar-list">
                                    
                                    <a class="sidebar-link sidebar-title active" href="#">
                                        <i class="fa fa-credit-card"></i> <!-- Replaced SVG with Font Awesome Payment icon -->
                                        <span>Payment</span>
                                        <div class="according-menu">
                                            <i class="fa fa-angle-down"></i>
                                        </div>
                                    </a>
                                    <ul class="sidebar-submenu" style="display: block;">
                                        <li><a class="active" href="manage_payment.php">Manage Payment</a></li>
                                    </ul>
                                </li>

                                <li class="sidebar-list">
                                    
                                    <a class="sidebar-link sidebar-title active" href="#">
                                        <i class="fa fa-cogs"></i> <!-- Replaced SVG with Font Awesome Settings icon -->
                                        <span>Setting</span>
                                        <div class="according-menu">
                                            <i class="fa fa-angle-down"></i>
                                        </div>
                                    </a>
                                    <ul class="sidebar-submenu" style="display: block;">
                                        <li><a class="active" href="edit-profile.php">Manage Setting</a></li>
                                    </ul>
                                </li>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </ul>
        <div class="sidebar-img-section"></div>
    </div>
    <div class="right-arrow" id="right-arrow">
        <i class="fa fa-chevron-right"></i> <!-- Replaced the SVG with Font Awesome right arrow -->
    </div>
</nav>
