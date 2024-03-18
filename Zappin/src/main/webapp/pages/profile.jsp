<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>profile</title>

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
        
        <style>
       .gradient-custom-2 {
/* fallback for old browsers */
background: #fbc2eb;

/* Chrome 10-25, Safari 5.1-6 */
background: -webkit-linear-gradient(to right, rgb(245, 242, 216), rgb(241, 205, 137));

/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
background: linear-gradient(to right, rgb(241, 236, 222), rgb(241, 205, 137))
}
        </style>

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
                                </c:if> </a>
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
        <h1 class="text-center text-white display-6">Profile</h1>
        <!-- <ol class="breadcrumb justify-content-center mb-0">
            <li class="breadcrumb-item"><a href="#">Home</a></li>
            <li class="breadcrumb-item"><a href="#">Pages</a></li>
            <li class="breadcrumb-item active text-white">Shop Detail</li>
        </ol> -->
    </div>
    <!-- Single Page Header End -->
       
        <!-- Profile start -->
        <section class="h-100 gradient-custom-2">
            <div class="container py-5 h-100">
              <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col col-lg-9 col-xl-12">
                  <div class="card" >         <!-- Style="background-color: black; height: 200px;" -->
                    <div class="rounded-top text-white d-flex flex-row"  Style="background-color: rgb(236, 198, 141); height: 200px;">
                      <div class="ms-4  d-flex flex-column" style="width: 150px; margin-top:20px;">
                        <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-profiles/avatar-1.webp"
                          alt="Generic placeholder image" class="img-fluid img-thumbnail  mb-2"
                          style="width: 150px; margin-top: 75px; z-index: 1">
                        <button type="button" class="btn btn-outline-dark" data-mdb-ripple-color="dark"
                          style="z-index: 1;">
                          Edit profile
                        </button>
                      </div>
                      <div class="ms-3" style="margin-top: 130px;">
                        <h5>Prathamesh Jadhav</h5>
                        <p class="text-success"><i class="fas fa-map-marker-alt me-2"></i>Satara</p>
                      
                      </div>
                    </div>
                    <div class="p-4 text-black" style="background-color: #f8f9fa;">
                      <div class="d-flex justify-content-end text-center py-4">
                        <!-- <div>
                          <p class="mb-1 h5">253</p>
                          <p class="small text-muted mb-0">Photos</p>
                        </div>
                        <div class="px-3">
                          <p class="mb-1 h5">1026</p>
                          <p class="small text-muted mb-0">Followers</p>
                        </div>
                        <div>
                          <p class="mb-1 h5">47844</p>
                          <p class="small text-muted mb-0">Following</p>
                        </div> -->
                      </div>
                    </div>


                    <div class="container-fluid featurs py-4">
                      <div class="container py-4">
                          <div class="row g-4">
                    <div class="col-md-6 col-lg-3">
                      <div class="featurs-item text-center rounded bg-light p-4">
                        <div class="mb-3">
                          <h5 align="left" class="mb-3">ONLINE ORDERING</h5>
                          <nav>
                            <div class="nav nav-tabs mb-2">
                                <button class="nav-link active border-white  mb-2" type="button" role="tab"
                                    id="nav-about-tab" data-bs-toggle="tab" data-bs-target="#nav-about"
                                    aria-controls="nav-about" aria-selected="true">Order History</button>
                                <button class="nav-link border-white  mb-2" type="button" role="tab"
                                    id="nav-mission-tab" data-bs-toggle="tab" data-bs-target="#nav-mission"
                                    aria-controls="nav-mission" aria-selected="false">Addresses</button>
                                <button class="nav-link border-white  mb-2" type="button" role="tab"
                                    id="nav-fav-tab" data-bs-toggle="tab" data-bs-target="#nav-fav"
                                    aria-controls="nav-fav" aria-selected="false">Favourite Order</button>
                            </div>
                        </nav>
                      </div>
                      </div>
                  </div>
                  <div class="col-md-12 col-lg-6 col-xl-9">
                    <div class="tab-content mb-5">
                      <div class="tab-pane active" id="nav-about" role="tabpanel" aria-labelledby="nav-about-tab">
                        <div class="table-responsive">
                          <table class="table">
                              <thead>
                                  <tr>
                                      <th scope="col">Products</th>
                                      <th scope="col">Name</th>
                                      <th scope="col">Date</th>
                                      <th scope="col">Quantity</th>
                                      <th scope="col">Total</th>
                                  </tr>
                              </thead>
                              <tbody>
                                  <tr>
                                      <th scope="row">
                                          <div class="d-flex align-items-center mt-2">
                                              <img src="img/vegetable-item-2.jpg" class="img-fluid rounded-circle" style="width: 90px; height: 90px;" alt="">
                                          </div>
                                      </th>
                                      <td class="py-5">Awesome Brocoli</td>
                                      <td class="py-5">16/01/2024</td>
                                      <td class="py-5">2</td>
                                      <td class="py-5">$138.00</td>
                                  </tr>
                                  
                              </tbody>
                          </table>
                      </div>
                      </div>

                      <div class="tab-pane" id="nav-mission" role="tabpanel" aria-labelledby="nav-mission-tab">
                        <div class="row">
                        <div class="col-lg-4 col-xl-5">
                          <div class="p-4 rounded bg-light ">
                              <div class="row align-items-center py-5 mb-3">
                                <button class="btn btn-primary border-0 border-light py-3 px-4 rounded-pill text-white" style="background-color: rgb(22, 204, 228);" >Add Address</button>
                              </div>
                          </div>
                      </div>
                      <div class="col-lg-6 col-xl-5">
                        <div class="p-4 rounded bg-light ">
                            <div class="row align-items-center ">
                                <h5>Home</h5>
                             <p>The generatnon-characteristic words etc. 
                              Susp endisse ultricies nisi vel quam suscipit </p>
                            </div>
                            <div class="d-flex justify-content-between">
                              <button class="btn">edit</button>
                              <button class="btn">delete</button>
                            </div>
                           </div>
                           </div>
                        </div>
                      </div>


                      <div class="tab-pane" id="nav-fav" role="tabpanel" aria-labelledby="nav-fav-tab">
                        <div class="row">
                          <div class="col-md-6 col-lg-4 col-xl-3">
                            <div class="rounded position-relative fruite-item">
                                 <div class="fruite-img">
                                    <a href="productdetail"><img src="img/fruite-item-6.jpg" class="img-fluid w-100 rounded-top" alt=""></a>
                                </div>
                                <div class="text-white bg-secondary px-3 py-1 rounded position-absolute" style="top: 10px; left: 10px;">Fruits</div>
                                <div class="p-4 border border-secondary border-top-0 rounded-bottom">
                                    <div class="d-flex justify-content-between">
                                        <h4>Grapes </h4>
                                        <i class="material-icons large" onclick="toggleHeart(this)">favorite_border</i>
                                        </div>
                                     <p class="mb-0">Lorem ipsum dolor sit amet </p>
                                        <p class="text-dark fs-5 fw-bold mb-2">$4.99 / kg</p>
                                  
                                </div>
                            </div>
                        </div>               
                        <div class="col-md-6 col-lg-4 col-xl-3" >
                          <div class="rounded position-relative fruite-item" >
                              <div class="fruite-img">
                                  <a href="productdetail"> <img src="img/fruite-item-6.jpg" class="img-fluid w-100 rounded-top" alt=""></a>
                              </div>
                              <div class="text-white bg-secondary px-3 py-1 rounded position-absolute" style="top: 10px; left: 10px;">Fruits</div>
                              <div class="p-4 border border-secondary border-top-0 rounded-bottom">
                                  <div class="d-flex justify-content-between">
                                      <h4>Grapes </h4>
                                      <i class="material-icons large" onclick="toggleHeart(this)">favorite_border</i>
                                      </div>
                                   <p class="mb-0">Lorem ipsum dolor sit amet </p>
                                      <p class="text-dark fs-5 fw-bold mb-2">$4.99 / kg</p>
                                     
                              </div>
                          </div>
                      </div>               

                        </div>
                      </div>


                  </div>
                </div>
              </div>
           </div>
          
 
                    <div class="card-body p-4 text-black">
                      <div class="d-flex justify-content-between align-items-center mb-4">
                        <p class="lead fw-normal mb-0">Recent photos</p>
                        <p class="mb-0"><a href="#!" class="text-muted">Show all</a></p>
                      </div>
                      <div class="row g-2">
                        <div class="col mb-2">
                          <img src="https://mdbcdn.b-cdn.net/img/Photos/Lightbox/Original/img%20(112).webp"
                            alt="image 1" class="w-100 rounded-3">
                        </div>
                        <div class="col mb-2">
                          <img src="https://mdbcdn.b-cdn.net/img/Photos/Lightbox/Original/img%20(107).webp"
                            alt="image 1" class="w-100 rounded-3">
                        </div>
                      </div>
                      <div class="row g-2">
                        <div class="col">
                          <img src="https://mdbcdn.b-cdn.net/img/Photos/Lightbox/Original/img%20(108).webp"
                            alt="image 1" class="w-100 rounded-3">
                        </div>
                        <div class="col">
                          <img src="https://mdbcdn.b-cdn.net/img/Photos/Lightbox/Original/img%20(114).webp"
                            alt="image 1" class="w-100 rounded-3">
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            </div>
          </section>
<!-- profile end -->
        <!-- Back to Top -->
        <a href="#" class="btn btn-primary border-3 border-primary rounded-circle back-to-top"><i class="fa fa-arrow-up"></i></a>   

        
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