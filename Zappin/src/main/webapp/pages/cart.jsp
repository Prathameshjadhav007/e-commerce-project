<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cart</title>

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" >
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Raleway:wght@600;800&display=swap" rel="stylesheet"> 

        <!-- Icon Font Stylesheet -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">


        <!-- Libraries Stylesheet -->
        <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">


        <!-- Customized Bootstrap Stylesheet -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="css/style.css" rel="stylesheet">

    </head>

    <body>

       
        <!-- Spinner Start -->
         <div id="spinner" class="show w-100 vh-100 bg-white position-fixed translate-middle top-50 start-50  d-flex align-items-center justify-content-center">
            <div class="spinner-grow text-primary" role="status"></div>
        </div> 
        <!-- Spinner End -->


        <!-- Navbar start -->
          <!-- Navbar start -->
          <div class="container-fluid fixed-top">
           
            <div class="container px-0">
                <nav class="navbar navbar-light bg-white navbar-expand-xl mt-0">
                    <a href="index" class="navbar-brand"><h1 class="text-primary display-6">ZAAPIN</h1></a>
                    <button class="navbar-toggler py-2 px-3" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                        <span class="fa fa-bars text-primary"></span>
                    </button>
                    <div class="collapse navbar-collapse bg-white" id="navbarCollapse">
                        <div class="navbar-nav mx-auto">
                            <a href="index" class="nav-item nav-link ">Home</a>
                            <a href="favourite" class="nav-item nav-link">Favourites</a>
                            <a href="categories" class="nav-item nav-link">Categories</a>
                            <a href="offer" class="nav-item nav-link">Offer</a>
                           
                        </div>
                          <div class="d-flex m-3 me-0">
                            <button class="btn-search btn border border-secondary btn-md-square rounded-circle bg-white me-4" data-bs-toggle="modal" data-bs-target="#searchModal"><i class="fas fa-search text-primary"></i></button>
                            <a href="cart" class="position-relative me-4 my-auto">
                                <i class="fa fa-shopping-bag fa-2x"></i>
                                <c:if test="${count > 0}">
                                <span class="position-absolute bg-secondary rounded-circle d-flex align-items-center justify-content-center text-dark px-1" style="top: -5px; left: 15px; height: 20px; min-width: 20px;">${count}</span>
                                </c:if>  </a>
                            <a href="profile" class="my-auto">
                                <i class="fas fa-user fa-2x"></i>
                            </a>
                        </div>
                    </div>
                </nav>
            </div>
        </div>
        <!-- Navbar End -->


        <!-- Modal Search Start -->
        <div class="modal fade" id="searchModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="col-md-12  col-xl-12">
            <div class="modal-dialog ">
                <div class="modal-content rounded-0">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Search by keyword</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body align-items-center">
                        <div class="input-group w-75 mx-auto d-flex">
                            <input type="search" class="form-control p-3" placeholder="keywords" aria-describedby="search-icon-1">
                            <span id="search-icon-1" class="input-group-text p-3"><i class="fa fa-search"></i></span>
                        </div>
                    </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Modal Search End -->

       <!-- Single Page Header start -->
       <div class="container-fluid page-header py-5">
        <h1 class="text-center text-white display-6">Cart</h1>
        <!-- <ol class="breadcrumb justify-content-center mb-0">
            <li class="breadcrumb-item"><a href="#">Home</a></li>
            <li class="breadcrumb-item"><a href="#">Pages</a></li>
            <li class="breadcrumb-item active text-white">Shop Detail</li>
        </ol> -->
    </div>
    <!-- Single Page Header End -->
      
    
        <!-- Cart Page Start -->
        <div class="container-fluid py-5">
            <div class="container py-4">
                <h1 class="mb-3">Your Cart</h1>
                  <div class="form-group mb-3"  style=" border-bottom: 1px solid ;"> </div>
                      
                <div class="table-responsive">
                    <table class="table">
                        <thead>
                          <tr>
                            <th scope="col">Products</th>
                            <th scope="col">Name</th>
                            <th scope="col">Price</th>
                            <th scope="col">Quantity</th>
                            <th scope="col">Total</th>
                            <th scope="col">Handle</th>
                          </tr>
                        </thead>
                        <tbody>
                            
                            <c:forEach var="c" items="${cart}">
                             
                            
                            <tr>
                                <th scope="row">
                                    <div class="d-flex align-items-center">
                                        <img src="img2/${c.productimg}" class="img-fluid me-5 rounded-circle" style="width: 80px; height: 80px;" alt="">
                                    </div>
                                </th>
                                <td>
                                    <p class="mb-0 mt-4">${c.productname}</p>
                                </td>
                                <td>
                                    <p class="mb-0 mt-4">${c.price}</p>
                                </td>
                                <td>
                                    <div class="input-group quantity mt-4" style="width: 100px;">
                                        <div class="input-group-btn">
                                            <button class="btn btn-sm btn-minus rounded-circle bg-light border" >
                                            <i class="fa fa-minus"></i>
                                            </button>
                                        </div>
                                        <input type="text" class="form-control form-control-sm text-center border-0" value="1">
                                        <div class="input-group-btn">
                                            <button class="btn btn-sm btn-plus rounded-circle bg-light border">
                                                <i class="fa fa-plus"></i>
                                            </button>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <c:set var="Income" scope="session" value="${c.price*c.quantity}"/>
                                    <p id="total" class="mb-0 mt-4"><c:out value="${Income}"/>  </p>
                                    
                                </td>
                                <td>
                                    <a href="deletecart?id=${c.id}"><button class="btn btn-md rounded-circle bg-light border mt-4" >
                                        <i class="fa fa-times text-danger"></i>
                                    </button></a>
                                </td>
                            
                            </tr>
                            </c:forEach>      
                        </tbody>
                    </table>
                </div>
                <!-- <select id="inputState" name="categoryname" class="border-0 border-bottom rounded me-5 py-3 mb-4">
                                        <option selected>..No cuppon...</option>
                                           <c:forEach var="c" items="${offerandcoupon}">                                          
                                        <option>${c.couponcode}</option>
                                         </c:forEach> 
                                    </select> -->
                <div class="mt-5 ">
                    <form action="cheakcuppon" method="post">
                    <input type="text" name="cuppon" class="border-0 border-bottom rounded me-5 py-3 mb-4" placeholder="Coupon Code">                 
                    <input type="submit" class="btn border-secondary rounded-pill px-4 py-3 text-primary" value="Apply Coupon">
                    <span>${cuppon}</span>
                    </form> 
                </div>
                <div class="row g-4 justify-content-end ">
                    <div class="col-8">
                    <div class="col-sm-8 col-md-7 col-lg-6 col-xl-7">
                        <div class="bg-light rounded">
                            <div class="p-4">
                                <h1 class="display-6 mb-4">Cart Total</h1>
                                <div class="d-flex justify-content-between mb-4">
                                    <h5 class="mb-0 me-4">Subtotal:</h5>
                                    <p class="mb-0">&#8377;96.00</p>
                                </div>
                                <div class="d-flex justify-content-between mb-4">
                                    <h5 class="mb-0 me-4">GST and other charges:</h5>
                                    <p class="mb-0">&#8377;10.00</p>
                                </div>
                                <div class="d-flex justify-content-between">
                                    <h5 class="mb-0 me-4">
                                        delivery partner fee</h5>
                                    <div class="">
                                        <p class="mb-0">&#8377;40.00<span style="margin-left: 5px;">Free</span></p>
                                    </div>
                                </div>
                                
                            </div>
                            <div class="py-4 mb-4 border-top border-bottom d-flex justify-content-between">
                                <h5 class="mb-0 ps-4 me-4">Grand Total</h5>
                                <p class="mb-0 pe-4">&#8377;106.00</p>
                            </div>
                           <a href="checkout"> <button class="btn border-secondary rounded-pill px-4 py-3 text-primary text-uppercase mb-4 ms-4" type="button">Proceed Checkout</button></a>
                        </div>
                    </div>
                </div>
                </div>
            </div>
        </div>
        <!-- Cart Page End -->


        <!-- Back to Top -->
        <a href="#" class="btn btn-primary border-3 border-primary rounded-circle back-to-top"><i class="fa fa-arrow-up"></i></a>   
          <%-- <c:if test="${count>0}">
           <div  class="my-div">          
           ${count} items in cart  <a href="cart"><b style="color:black;float:right;">View cart</b> </a> 
          </div>
        </c:if> --%>
        
    <!-- JavaScript Libraries -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/lightbox/js/lightbox.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
    <script src="js/myScript.js"></script>

    </body>

</html>