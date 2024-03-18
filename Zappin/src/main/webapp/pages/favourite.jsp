<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>favourite</title>

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
        <!-- Jquery with ajax -->
        <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
         
         <script>
         $(document).ready(function(){
        	 $('.hidew').hide();
            });
         
         function removeFavourite(id) {
             $.ajax({
                 type: "GET",
                 url: "/removefav2?id=" + id,
                 success: function(response) {
                	 $('#red_'+ id).hide();
                	 $('.hidew').show();
                	 $('#white_'+ id).show();
                	 $('#white_'+ id)
                     .append( '<i class="material-icons large" style="color:rgba(104, 82, 82, 0.5);" >favorite_border</i>'
          	          );
                	 setTimeout(function() {
                		    // Use jQuery to remove the element by its ID
                  	        location.reload();
                		  }, 2000);
                	                  },
                 error: function(error) {
                     console.error(error);
                 }
             });
         }
         </script>
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
                            <a href="favourite" class="nav-item nav-link active">Favourites</a>
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
        <h1 class="text-center text-white display-6">Favourite</h1>
        <!-- <ol class="breadcrumb justify-content-center mb-0">
            <li class="breadcrumb-item"><a href="#">Home</a></li>
            <li class="breadcrumb-item"><a href="#">Pages</a></li>
            <li class="breadcrumb-item active text-white">Shop Detail</li>
        </ol> -->
    </div>
    <!-- Single Page Header End -->

        <!-- Vesitable Shop Start-->
       
               
        <div class="container-fluid fruite py-5 ">
            <div class="container py-4">
                    <h1 class="mb-3">
                        Favourite Products</h1>
                         <div class="form-group mb-3"  style=" border-bottom: 1px solid rgb(161, 182, 226);"> </div>
                        <div class="row g-4">  
                        <c:forEach var="f" items="${favourite}">
                            <div class="col-md-6 col-lg-4 col-xl-3">
                                <div class="rounded position-relative fruite-item">
                                    <div class="fruite-img">
                                        <a href="productdetail?id=${f.id}"><img src="img2/${f.fimage}" class="img-fluid w-100 rounded-top" alt="">
                                      </a>  </div>
                                    <div class="text-white bg-secondary px-3 py-1 rounded position-absolute" style="top: 10px; left: 10px;">${f.fcategory}</div>
                                    <div class="p-4 border border-secondary border-top-0 rounded-bottom">
                                        <div class="d-flex justify-content-between">
                                            <h5>${f.fproductname} </h5>
 <!-- href="removefav2?id=${f.id}" -->  <a onclick="removeFavourite(${f.id})" id="red_${f.id}"> <i class="material-icons large" style="color:red;">favorite</i></a>
                                        <a class="hidew" id="white_${f.id}"> 
                                            </a></div>
                                         <p class="mb-0">${f.fdescription.length() >15 ? f.fdescription.substring(0,15) : p.fdescription}...</p>     
                                         
                                            <p class="text-dark fs-5 fw-bold mb-2"> &#8377;${f.fprice}/-</p>
                                           
                                        </div>
                                </div>
                            </div> 
                           </c:forEach>
                                                    
                 </div>
             </div>
        </div> 
        <!-- Vesitable Shop End -->

        


        <!-- Back to Top -->
        <a href="#" class="btn btn-primary border-3 border-primary rounded-circle back-to-top"><i class="fa fa-arrow-up"></i></a>   
          <c:if test="${count>0}">
           <div  class="my-div">          
           ${count} items in cart  <a href="cart"><b style="color:black;float:right;">View cart</b> </a> 
          </div>
        </c:if>
        
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