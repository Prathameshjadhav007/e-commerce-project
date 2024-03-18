<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.tron.intern.entity.Product" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>index</title>

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
         <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
         
        <script>
        $(document).ready(function(){
        	
        	favStatus();
        	
           });
        
        
        function favStatus() {
            $.ajax({
                type: "GET",
                url: "/favStatus",
                success: function(response) {
                	  data = response
                     for ( i = 0; i<data.length; i++) { 
                    	 if(data[i]!=0)
                    		{ 
                    		 for( j = i+1; j<data.length; j++)
                    			 {
                    			 if(data[i]==data[j])
                    			 {
                    				 data[j]=0;
            	                 $("#white_" + data[i]).hide();
         	                     $("#red_"+ data[i]).show();
         	                         data[i]=0;
                    			 }
                                 }
                    			 }
                     }
                	  for(i=0; i<data.length; i++)
          			{
          				if(data[i]!=0)
          					{
          			      $("#white_" + data[i]).show();
	                      $("#red_"+ data[i]).hide();
          					}
          			}
                },
                error: function(err) { 
                    alert("error is" + err);
                   }
            });
        }
        
        
        
        
        function sendCartRequest(id) {
            // Your AJAX logic here using the 'id'
            $.ajax({
                type: "GET",
                url: "/savecart?id=" + id,
                success: function(response) {
                   if(response=="Already Product in Cart")
                	   {
                	     alert(response)
                	   }
                   else
                	   {
                	   $("#counter").text(response);
                	   alert("Added to card")
                	   }
                  
                },
                error: function(error) {
                    console.error(error);
                }
            });
        }
        function savefavourite(id) {
            $.ajax({
                type: "GET",
                url: "/savefavourite?id=" + id,
                success: function(response) {
                    alert(response)
                    $('#white_'+ id).hide();
                	   $('#red_'+ id).show();
                },
                error: function(error) {
                    console.error(error);
                }
            });
        }
        function removefavourite(id) {
            $.ajax({
                type: "GET",
                url: "/removefav?id=" + id,
                success: function(response) {
                    alert(response)
                    $('#white_'+ id).show();
                	   $('#red_'+ id).hide();
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
                            <a href="index" class="nav-item nav-link active">Home</a>
                            <a href="favourite" class="nav-item nav-link">Favourites</a>
                            <a href="categories" class="nav-item nav-link">Categories</a>
                            <a href="offer" class="nav-item nav-link">Offer</a>
                            
                            
                        </div>
                          <div class="d-flex m-3 me-0">
                            <button class="btn-search btn border border-secondary btn-md-square rounded-circle bg-white me-4" data-bs-toggle="modal" data-bs-target="#searchModal"><i class="fas fa-search text-primary"></i></button>
                            <a href="cart" class="position-relative me-4 my-auto">
                                <i class="fa fa-shopping-bag fa-2x"></i>
                               <%--  <c:if test="${count > 0}"> --%>
                                <span  class="position-absolute  bg-secondary rounded-circle d-flex align-items-center justify-content-center text-dark px-1" id="counter" style="top: -5px; left: 15px; height: 20px; min-width: 20px;">${count}</span>
                                <%--   </c:if> --%>
                            </a>
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


        <!-- Hero Start -->
     <div class="container-fluid  py-5 mb-5 hero-header">
            <div class="container py-5">
                <div class="row g-5 align-items-center">
                    <div class=" col-lg-1 ">
                    </div>
                    <div class=" col-xl-10 ">
                        
                    </div>
                </div>
            </div>
        </div> 
        
<!-- yuguukhuhuk -->
        <!-- Hero End -->
        <!-- Carousel start -->
        <div class="container-fluid testimonial py-5" style="margin-top:100px">
            <div class="container py-5">
                <div class="testimonial-header ">
                    <h1 class="mb-3"></h1>
                </div>
                <div class="owl-carousel testimonial-carousel">
                    <c:forEach var="oc" items="${offerandcoupon}">
                    <div class="testimonial-item img-border-radius bg-light rounded p-4">
                        <div class="position-relative">
                            <div class="d-flex align-items-center flex-nowrap">
                                <div class="bg-secondary rounded">
                                   <a href="#"> <img src="img2/${oc.offerimage}" class="img-fluid rounded" style="width: 600px; height: 300px;" alt=""></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    </c:forEach>
                 
                </div>
            </div>
        </div>
         <!-- Carousel end -->
        <!-- Featurs Section Start -->
        <div class="container-fluid featurs ">
            <div class="container ">
                <h1 class="mb-3">Main Categories</h1>
                <div class="row g-4">
                <c:forEach var="c" items="${category}">
                    <div class="col-md-6 col-lg-3">
                        <div class="featurs-item text-center rounded  p-3 ml-3">
                            <div class="   mx-auto">
                                <div class="col-6 ">
                                    <a href="foodcategory?categoryname=${c.categoryname}"> <img src="img2/${c.categoryimage}" class=" rounded-circle" style="width: 105px;" alt=""></a>
                              </div>
                              <div class="col-6 mt-2 ">
                                <a href="foodcategory?categoryname=${c.categoryname}" class="h5">${c.categoryname}</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    </c:forEach>
                </div>
            </div>
        </div>
        <!-- Featurs Section End -->

        <!-- Vesitable Shop Start-->
       
               
        <div class="container-fluid fruite py-5 ">
            <div class="container py-5">
                    <h1 class="mb-3">Best food in city</h1>
                        <div class="row g-4">  
                            <c:forEach var="p" items="${product}">
                            <div class="col-md-6 col-lg-4 col-xl-3">
                                <div class="rounded position-relative fruite-item">
                                    <div class="fruite-img">
                                        <a href="productdetail?id=${p.id}">  <img src="img2/${p.productimg}" style="width:225px; height:225px;" class="img-fluid w-100 rounded-top" alt=""></a>
                                    </div>
                                    <div class="text-white bg-secondary px-3 py-1 rounded position-absolute" style="top: 10px; left: 10px;">${p.categoryname}</div>
                                    <div class="p-4 border border-secondary border-top-0 rounded-bottom">
                                            <h5>${p.productname}</h5>
                                          <p class="mb-0">${p.description.length() >15 ? p.description.substring(0,15) : p.description}...</p>     
                                            <div class="d-flex justify-content-between">
                                            <p class="text-dark fs-5 fw-bold mb-2"> &#8377;${p.displyprice} /-</p>
                                            <a onclick="savefavourite(${p.id})" id="white_${p.id}"> <i class="material-icons large">favorite_border</i></a>
                                            <a onclick="removefavourite(${p.id})" id="red_${p.id}"> <i class="material-icons large" style="color:red;">favorite</i></a>
                                          
                                            </div>
                                            <div class="text-center">
                                                <a onclick="sendCartRequest(${p.id})" class="btn border border-secondary rounded-pill px-4 py-2 mb-4 text-primary"><i class="fa fa-shopping-bag me-2 text-primary"></i> Add to cart</a>
                                            </div>
                                        </div>
                                </div>
                            </div> 
                               </c:forEach> 
                </div>
             </div>
        </div> 
        <!-- Vesitable Shop End href="savecart?id=${p.id}"  href="savefavourite?id=${p.id}"-   ->
 
       
         
         
         
        <!-- Bestsaler Product Start -->
        <div class="container-fluid mb-5">
            <div class="container ">
                <h1 class="mb-3">Recommnded</h1>
                <div class="row g-4">
                    <div class="col-md-6 col-lg-6 col-xl-3">
                        <div class="text-center">
                            <img src="img/fruite-item-1.jpg" class="img-fluid rounded" alt="">
                            <div class="py-4">
                                <a href="#" class="h5">Organic Orange</a>
                                <div class="d-flex my-3 justify-content-center">
                                    <i class="fas fa-star text-primary"></i>
                                    <i class="fas fa-star text-primary"></i>
                                    <i class="fas fa-star text-primary"></i>
                                    <i class="fas fa-star text-primary"></i>
                                    <i class="fas fa-star"></i>
                                </div>
                                <h4 class="mb-3">3.12 $</h4>
                                <a href="#" class="btn border border-secondary rounded-pill px-3 text-primary"><i class="fa fa-shopping-bag me-2 text-primary"></i> Add to cart</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-6 col-xl-3">
                        <div class="text-center">
                            <img src="img/fruite-item-2.jpg" class="img-fluid rounded" alt="">
                            <div class="py-4">
                                <a href="#" class="h5">Organic raspberry</a>
                                <div class="d-flex my-3 justify-content-center">
                                    <i class="fas fa-star text-primary"></i>
                                    <i class="fas fa-star text-primary"></i>
                                    <i class="fas fa-star text-primary"></i>
                                    <i class="fas fa-star text-primary"></i>
                                    <i class="fas fa-star"></i>
                                </div>
                                <h4 class="mb-3">3.12 $</h4>
                                <a href="#" class="btn border border-secondary rounded-pill px-3 text-primary"><i class="fa fa-shopping-bag me-2 text-primary"></i> Add to cart</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-6 col-xl-3">
                        <div class="text-center">
                            <img src="img/fruite-item-3.jpg" class="img-fluid rounded" alt="">
                            <div class="py-4">
                                <a href="#" class="h5">Organic Banana</a>
                                <div class="d-flex my-3 justify-content-center">
                                    <i class="fas fa-star text-primary"></i>
                                    <i class="fas fa-star text-primary"></i>
                                    <i class="fas fa-star text-primary"></i>
                                    <i class="fas fa-star text-primary"></i>
                                    <i class="fas fa-star"></i>
                                </div>
                                <h4 class="mb-3">3.12 $</h4>
                                <a href="#" class="btn border border-secondary rounded-pill px-3 text-primary"><i class="fa fa-shopping-bag me-2 text-primary"></i> Add to cart</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-6 col-xl-3">
                        <div class="text-center">
                            <img src="img/fruite-item-4.jpg" class="img-fluid rounded" alt="">
                            <div class="py-4">
                                <a href="#" class="h5">Organic Apricot</a>
                                <div class="d-flex my-3 justify-content-center">
                                    <i class="fas fa-star text-primary"></i>
                                    <i class="fas fa-star text-primary"></i>
                                    <i class="fas fa-star text-primary"></i>
                                    <i class="fas fa-star text-primary"></i>
                                    <i class="fas fa-star"></i>
                                </div>
                                <h4 class="mb-3">3.12 $</h4>
                                <a href="#" class="btn border border-secondary rounded-pill px-3 text-primary"><i class="fa fa-shopping-bag me-2 text-primary"></i> Add to cart</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Bestsaler Product End -->
         
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