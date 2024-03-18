<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <title>Admin outlet</title>
     <!-- Favicon icon -->
     <link rel="icon" type="new/image/png" sizes="16x16" href="./new/images/favicon.png">
     <!-- Datatable -->
     <link href="./new/vendor/datatables/css/jquery.dataTables.min.css" rel="stylesheet">
     <!-- Custom Stylesheet -->
     <link href="./new/css/style.css" rel="stylesheet">
 
</head>
<body style="background-color:aqua;">

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
        <div class="content-body">
            <!-- row -->         
            <div class="container-fluid">
              <div class="row">
                <div class="col col-lg-9 col-xl-4">
                   <div class="card">
                    <div class="card-header" >
                        <h3>Assign Pincode to Outlet</h3>
                    </div>
                    
                    <div class="card-body py-1" >
                        <div class="basic-form" >
                            <form action="saveoutlet" method=post>
                                <div class="form-group"  style=" border-bottom: 1px solid rgb(161, 182, 226);"> </div>
                               
                                <div class="form-group ">
                                    <label class="card-title">Outlet Location</label>
                                    <select id="inputState" name="location" class="form-control border-dark">
                                        <option selected>...Select Option...</option>
                                        <option>Hadapsar</option>
                                        <option>kharadi</option>
                                        <option>shevalewadi</option>
                                        <option>vimannagar</option>
                                    </select>
                                </div>
                                <div class="form-group" >
                                    <label class="card-title">Assigned Pincode</label>
                                    <div >
                                        <input type="text" name="pincode" class="form-control border-dark">
                                    </div>
                                </div >  
                                <div class="form-group"  style=" border-bottom: 1px solid rgb(161, 184, 235);">
                                </div>  
                                <div class="form-group row" >
                                    <div class="col-sm-10 py-3">
                                        <button type="submit" class="btn btn-danger"><i class="mdi mdi-checkbox-marked-circle mr-2"></i>Submit</button>
                                    </div> 
                                </div>
                            </form>
                        </div>
                    </div>
                  </div> 
                 </div>

                 <!-- hjklkj -->
                     
                <div class="col-8">
                    <div class="card">
                        <div class="card-header">
                            <h3 >Assign Pincode to Outlet</h3>
                        </div>
                        <div class="card-body py-1">
                            <div class="form-group"  style=" border-bottom: 1px solid rgb(161, 182, 226);"> </div>
                               <div class="">
                                <table id="example"  class="table table-bordered " style="min-width: 675px">
                                    <thead style="background-color:#ffc400fc;">
                                        <tr>
                                            <th>Id</th>
                                            <th>Outlet Location</th>
                                            <th>Assigned Pincode</th>
                                            <th>Edit</th>
                                            <th>Delete</th>
                                        </tr>
                                    </thead>
                                    <c:forEach var="o" items="${outlet}">
                                    <tbody class="text-dark">
                                        <tr>
                                            <td>${o.id}</td>
                                            <td>
                                                ${o.location}
                                            </td>
                                            <td>${o.pincode}</td>
                                            <td><a href="editoutlet?id=${o.id}" class="btn btn-warning">
                                                <i class="mdi mdi-square-edit-outline"></i>Edit</a>
                                            </td>
                                            <td>
                                              <a href="deleteoutlet?id=${o.id}" class="btn btn-danger">                                                  
                                              <i class="mdi mdi-delete"></i> Delete                       
                                                </a>
                                            </td>
                                        </tr>                                   
                                    </tbody>
                                   </c:forEach> 
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
              </div>
                  <!-- zxfcghjkjhgfg -->
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


    </div>
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

 
     <!-- Datatable -->
    <script src="./new/vendor/datatables/js/jquery.dataTables.min.js"></script>
    <script src="./new/js/plugins-init/datatables.init.js"></script>
    
   
</body>

</html>