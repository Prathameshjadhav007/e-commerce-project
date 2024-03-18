<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <title>Admin Dashboard</title>
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="./new/images/favicon.png">
    <link rel="stylesheet" href="./new/vendor/owl-carousel/css/owl.carousel.min.css">
    <link rel="stylesheet" href="./new/vendor/owl-carousel/css/owl.theme.default.min.css">
    <link href="./new/vendor/jqvmap/css/jqvmap.min.css" rel="stylesheet">
    <link href="./new/css/style.css" rel="stylesheet">



</head>

<body>

    <!--*******************
        Preloader start
    ********************-->
    <div id="preloader">
        <div class="sk-three-bounce">
            <div class="sk-child sk-bounce1"></div>
            <div class="sk-child sk-bounce2"></div>
            <div class="sk-child sk-bounce3"></div>
        </div>
    </div>
    <!--*******************
        Preloader end
    ********************-->


    <!--**********************************
        Main wrapper start
    ***********************************-->
    <div id="main-wrapper">

        <!--**********************************
            Nav header start
        ***********************************-->
        <div class="nav-header">
            <a href="admindashboard.html" class="brand-logo" > 
                <h2 class="logo-abbr text-dark"></h2>
                <img class="logo-compact"  src="./new/images/logoz.JPG"  alt="">
                <img class="brand-title"  src="./new/images/logoz.JPG"   alt="">
            </a>

            <div class="nav-control">
                <div class="hamburger">
                    <span class="line"></span><span class="line"></span><span class="line"></span>
                </div>
            </div>
        </div>
        <!--**********************************
            Nav header end
        ***********************************-->

        <!--**********************************
            Header start
        ***********************************-->
        <div class="header">
            <div class="header-content">
                <nav class="navbar navbar-expand">
                    <div class="collapse navbar-collapse justify-content-between">
                        <div class="header-left">
                            <div class="search_bar dropdown">
                                <div class="dropdown-menu p-0 m-0">
                                    <form>
                                        <input class="form-control border-danger rounded" type="search" placeholder="Search" aria-label="Search">
                                    </form>
                                </div>
                            </div>
                        </div>
                        
                        <ul class="navbar-nav header-right">
                            <li class="nav-item dropdown header-profile">
                                <a class="nav-link" href="#" role="button" data-toggle="dropdown">
                                    <i class="mdi mdi-account"></i>
                                </a>
                                <div class="dropdown-menu dropdown-menu-right">
                                    <a href="./app-profile.html" class="dropdown-item">
                                        <i class="icon-user"></i>
                                        <span class="ml-2">Profile </span>
                                    </a>
                                    <a href="./page-login.html" class="dropdown-item">
                                        <i class="icon-key"></i>
                                        <span class="ml-2">Logout </span>
                                    </a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
        </div>
        <!--**********************************
            Header end ti-comment-alt
        ***********************************-->

        <!--**********************************
            Sidebar start
        ***********************************-->
        <div class="quixnav">
            <div class="quixnav-scroll">
                <ul class="metismenu" id="menu">
                    <li class="nav-label first"></li>
                    <li><a href="admindashboard" aria-expanded="false"><i
                         class="fa fa-dashboard"></i><span class="nav-text">Dashboard</span></a>
                    </li>
                    <li><a href="admin_category" aria-expanded="false"><i
                        class="fa fa-object-group"></i><span class="nav-text">Categories</span></a>
                   </li>
                   <li><a href="admin_subcategory" aria-expanded="false"><i
                    class="fa fa-object-group"></i><span class="nav-text">Sub categories</span></a>
                    </li>
                    <li><a class="has-arrow" href="javascript:void()" aria-expanded="false"><i
                                class="fa fa-list"></i><span class="nav-text">Product</span></a>
                        <ul aria-expanded="false">
                            <li><a href="admin_add_product">Add New Product</a></li>
                            <li><a href="admin_view_product">View Product</a></li>
                        </ul>
                    </li>
                    <li><a href="admin_outlet" aria-expanded="false"><i
                        class="fa fa-handshake-o"></i><span class="nav-text">Outlets</span></a>
                     </li>
                     <li><a href="offer_cuppon" aria-expanded="false"><i
                        class="fa fa-ticket"></i><span class="nav-text">Offer and Coupons</span></a>
                        </li>
                    <li><a class="has-arrow" href="javascript:void()" aria-expanded="false"><i
                                class="fa fa-shopping-cart"></i><span class="nav-text">Orders</span></a>
                        <ul aria-expanded="false">
                            <li><a href="order_pending">Order Pending</a></li>
                            <li><a href="order_accepted">Oreder Accepted</a></li>
                            <li><a href="order_rejected">Oreder Rejected</a></li>
                            <li><a href="order_preparing">Preparing Food</a></li>
                            <li><a href="order_ontheway">Delivery on the Way</a></li>
                            <li><a href="order_delivered">Delivered</a></li>
                        </ul>
                    </li>
                    <li><a class="has-arrow" href="javascript:void()" aria-expanded="false"><i
                                class="fa fa-users"></i><span class="nav-text">Users</span></a>
                        <ul aria-expanded="false">
                            <li><a href="#">jjj</a></li>
                            <li><a href="#">rrrrr</a></li>
                        </ul>
                    </li>

                    <li><a href="javascript:void()" aria-expanded="false"><i class="fa fa-object-group"></i><span
                                class="nav-text">Sections</span></a>
                   </li>

                    <li><a class="has-arrow" href="javascript:void()" aria-expanded="false"><i
                                class="fa fa-list"></i><span class="nav-text">Contents</span></a>
                        <ul aria-expanded="false">
                            <li><a href="#">cccccc</a></li>
                            <li><a href="javascript:void()">cccc</a></li>
                        </ul>
                    </li>
                    <li><a class="has-arrow" href="javascript:void()" aria-expanded="false"><i
                                class="fa fa-rupee"></i><span class="nav-text">Expenses</span></a>
                        <ul aria-expanded="false">
                            <li><a href="#">Add Expenses</a></li>
                            <li><a href="#">view Expenses</a></li>
                        </ul>
                    </li>
                    <li><a href="setting" aria-expanded="false"><i
                        class="fa fa-cog"></i><span class="nav-text">Setting</span></a>
                     </li>
                </ul>
            </div>
        </div>
        <!--**********************************
            Sidebar end
        ***********************************-->
        
        <!--**********************************
            Content body start
        ***********************************-->
        <div class="content-body" >
            <!-- row -->
            <div class="container-fluid">
                <div class="row">
                        <div class="col-lg-3 col-sm-6">
                            <div class="card">
                                <div class="stat-widget-one card-body">
                                    <div class="stat-icon d-inline-block">
                                        <i class="ti-mobile text-success border-success"></i>
                                    </div>
                                    <div class="stat-content d-inline-block">
                                        <div class="text-dark ">Products</div>
                                        <div class="stat-digit">1,012</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-sm-6">
                            <div class="card">
                                <div class="stat-widget-one card-body">
                                    <div class="stat-icon d-inline-block">
                                        <i class="ti-ticket text-danger border-danger"></i>
                                    </div>
                                    <div class="stat-content d-inline-block">
                                        <div class="text-dark ">Offers</div>
                                        <div class="stat-digit">2,781</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-sm-6">
                            <div class="card">
                                <div class="stat-widget-one card-body">
                                    <div class="stat-icon d-inline-block">
                                        <i class="fa fa-users text-primary border-primary"></i>
                                    </div>
                                    <div class="stat-content d-inline-block">
                                        <div class="text-dark ">Customers</div>
                                        <div class="stat-digit">961</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-sm-6">
                            <div class="card">
                                <div class="stat-widget-one card-body">
                                    <div class="stat-icon d-inline-block">
                                        <i class="fa fa-users text-success border-success"></i>
                                    </div>
                                    <div class="stat-content d-inline-block">
                                        <div class="text-dark ">Delivery Agent</div>
                                        <div class="stat-digit">1,012</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-sm-6">
                            <div class="card">
                                <div class="stat-widget-one card-body">
                                    <div class="stat-icon d-inline-block">
                                        <i class="ti-time text-pink border-pink"></i>
                                    </div>
                                    <div class="stat-content d-inline-block">
                                        <div class="text-dark ">Pending Order</div>
                                        <div class="stat-digit">770</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-sm-6">
                            <div class="card">
                                <div class="stat-widget-one card-body">
                                    <div class="stat-icon d-inline-block">
                                        <i class="fa fa-spoon text-danger border-danger"></i>
                                    </div>
                                    <div class="stat-content d-inline-block">
                                        <div class="text-dark ">Preparing Food</div>
                                        <div class="stat-digit">2,781</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-sm-6">
                            <div class="card">
                                <div class="stat-widget-one card-body">
                                    <div class="stat-icon d-inline-block">
                                        <i class="ti-car text-primary border-primary "></i>
                                    </div>
                                    <div class="stat-content d-inline-block">
                                        <div class="text-dark ">Delivery On the<br> Way</div>
                                        <div class="stat-digit">961</div>
                                    </div>
                                </div>
                           </div>                     
                        </div>
                        <div class="col-lg-3 col-sm-6">
                            <div class="card">
                                <div class="stat-widget-one card-body">
                                    <div class="stat-icon d-inline-block">
                                        <i class="fa fa-telegram text-pink border-pink"></i>
                                    </div>
                                    <div class="stat-content d-inline-block">
                                        <div class="text-dark ">Delivered Oreder</div>
                                        <div class="stat-digit">770</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-sm-6">
                            <div class="card">
                                <div class="stat-widget-one card-body">
                                    <div class="stat-icon d-inline-block">
                                        <i class="ti-money text-success border-success"></i>
                                    </div>
                                    <div class="stat-content d-inline-block">
                                        <div class="text-dark ">Recieved<br> Payment</div>
                                        <div class="stat-digit">1,012</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-sm-6">
                            <div class="card">
                                <div class="stat-widget-one card-body">
                                    <div class="stat-icon d-inline-block">
                                        <i class="ti-money ti text-danger border-danger"></i>
                                    </div>
                                    <div class="stat-content d-inline-block">
                                        <div class="text-dark ">Expenses</div>
                                        <div class="stat-digit">2,781</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> 
               

                    <div class="row">
                     <div class="col-lg-6">
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="card-title">New Orders</h4>
                                </div>
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table mb-0">
                                            <thead>
                                                <tr>
                                                    <th>#</th>
                                                    <th>Name</th>
                                                    <th>Product</th>
                                                    <th>quantity</th>
                                                    <th>Status</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>
                                                        <div class="round-img">
                                                            <a href=""><img width="35" src="./images/avatar/1.png" alt=""></a>
                                                        </div>
                                                    </td>
                                                    <td>Lew Shawon</td>
                                                    <td><span>Dell-985</span></td>
                                                    <td><span>456 pcs</span></td>
                                                    <td><span class="badge badge-success">Done</span></td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div class="round-img">
                                                            <a href=""><img width="35" src="./images/avatar/1.png" alt=""></a>
                                                        </div>
                                                    </td>
                                                    <td>Lew Shawon</td>
                                                    <td><span>Asus-565</span></td>
                                                    <td><span>456 pcs</span></td>
                                                    <td><span class="badge badge-warning">Pending</span></td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div class="round-img">
                                                            <a href=""><img width="35" src="./images/avatar/1.png" alt=""></a>
                                                        </div>
                                                    </td>
                                                    <td>lew Shawon</td>
                                                    <td><span>Dell-985</span></td>
                                                    <td><span>456 pcs</span></td>
                                                    <td><span class="badge badge-success">Done</span></td>
                                                </tr>
    
                                                <tr>
                                                    <td>
                                                        <div class="round-img">
                                                            <a href=""><img width="35" src="./images/avatar/1.png" alt=""></a>
                                                        </div>
                                                    </td>
                                                    <td>Lew Shawon</td>
                                                    <td><span>Asus-565</span></td>
                                                    <td><span>456 pcs</span></td>
                                                    <td><span class="badge badge-warning">Pending</span></td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div class="round-img">
                                                            <a href=""><img width="35" src="./images/avatar/1.png" alt=""></a>
                                                        </div>
                                                    </td>
                                                    <td>lew Shawon</td>
                                                    <td><span>Dell-985</span></td>
                                                    <td><span>456 pcs</span></td>
                                                    <td><span class="badge badge-success">Done</span></td>
                                                </tr>
    
                                                <tr>
                                                    <td>
                                                        <div class="round-img">
                                                            <a href=""><img width="35" src="./images/avatar/1.png" alt=""></a>
                                                        </div>
                                                    </td>
                                                    <td>Lew Shawon</td>
                                                    <td><span>Asus-565</span></td>
                                                    <td><span>456 pcs</span></td>
                                                    <td><span class="badge badge-warning">Pending</span></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                   
                    
                <div class="col-sm-12 col-md-12 col-xxl-6 col-xl-4 col-lg-6">
                    <div class="card">
                        <div class="card-header">
                            <h4 class="card-title">Product Sold</h4>
                            <div class="card-action">
                                <div class="dropdown custom-dropdown">
                                    <div data-toggle="dropdown">
                                        <i class="ti-more-alt"></i>
                                    </div>
                                    <div class="dropdown-menu dropdown-menu-right">
                                        <a class="dropdown-item" href="#">Option 1</a>
                                        <a class="dropdown-item" href="#">Option 2</a>
                                        <a class="dropdown-item" href="#">Option 3</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="chart py-4">
                                <canvas id="sold-product"></canvas>
                            </div>
                        </div>
                    </div>
                </div>
                    
            </div>


             
                <div class="row">
                    <div class="col-xl-8 col-lg-8 col-md-8">
                        <div class="card">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-xl-12 col-lg-8">
                                        <div id="morris-bar-chart"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                </div>
               </div>
            </div>
       
        <!--**********************************
            Content body end
        ***********************************-->


        <!--**********************************
            Footer start
        ***********************************-->
        <div class="footer">
            <div class="copyright">
               
            </div>
        </div>
        <!--**********************************
            Footer end
        ***********************************-->

        <!--**********************************
           Support ticket button start
        ***********************************-->

        <!--**********************************
           Support ticket button end
        ***********************************-->


    
    <!--**********************************
        Main wrapper end
    ***********************************-->

    <!--**********************************
        Scripts
    ***********************************-->
    <!-- Required vendors -->
    <script src="./new/vendor/global/global.min.js"></script>
    <script src="./new/js/quixnav-init.js"></script>
    <script src="./new/js/custom.min.js"></script>


    <!-- Vectormap -->
    <script src="./new/vendor/raphael/raphael.min.js"></script>
    <script src="./new/vendor/morris/morris.min.js"></script>


    <script src="./new/vendor/circle-progress/circle-progress.min.js"></script>
    <script src="./new/vendor/chart.js/Chart.bundle.min.js"></script>

    <script src="./new/vendor/gaugeJS/dist/gauge.min.js"></script>

    
    <!-- Owl Carousel -->
    <script src="./new/vendor/owl-carousel/js/owl.carousel.min.js"></script>

    <!-- Counter Up -->
    <script src="./new/vendor/jqvmap/js/jquery.vmap.min.js"></script>
    <script src="./new/vendor/jqvmap/js/jquery.vmap.usa.js"></script>
    <script src="./new/vendor/jquery.counterup/jquery.counterup.min.js"></script>


    <script src="./new/js/dashboard/dashboard-1.js"></script>

</body>

</html>