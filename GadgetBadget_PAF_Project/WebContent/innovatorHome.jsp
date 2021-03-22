<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <link rel="icon" type="image/gif/png" href="logo.png">
	<title>GadgetBadget</title>

	<!-- css -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/css/mdb.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.css">
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="css/sandaru.css">
    
    <!-- js -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    <script src="https://unpkg.com/flickity@2.0/dist/flickity.pkgd.min.js"></script>
    <script src="https://unpkg.com/swiper/swiper-bundle.js"></script>
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <script src="js/HomePage.js"></script>

</head>

<body>

	<!-- navbar -->
		<nav class="navbar navbar-expand-lg topnav" style="background-color:black;">
	
	        <img src="logo.png" class="navbar-brand navLogo" alt="Gadget Badget">
	        <h4 style="font-weight: bolder; font-style: italic; font-family:  Cambria, Cochin, Georgia, Times, 'Times New Roman', serif; color: rgb(253, 71, 108);" class="mt-2 ml-0">Gadget Badget</h4>
	        
	        <div class="collapse navbar-collapse d-flex justify-content-end" id="navbarNavDropdown">
	            <ul class="navbar-nav">
	                <li class="nav-item active ml-2 mr-1">
	                    <a class="nav-link" href="http://localhost:8080/GadgetBadget_PAF_Project/home.jsp">Home </a>
	                </li>
	                <li class="nav-item active ml-2 mr-1">
	                    <a class="nav-link" href="#">Section 1</a>
	                </li>
	                <li class="nav-item active ml-2 mr-1">
	                    <a class="nav-link" href="#">Section 2</a>
	                </li>
	                <li class="nav-item active ml-2 mr-1">
	                    <a class="nav-link" href="#">Section 3</a>
	                </li>
	                <li class="nav-item active ml-2 mr-1">
	                    <a class="nav-link" href="#">Section 4</a>
	                </li>
	
	                <li class="nav-item dropdown active ml-2 mr-1">
	                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
	                        Dropdown link
	                    </a>
	                    
	                    <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink" style="overflow: hidden;">
	                        <a class="dropdown-item" href="#">link 1</a>
	                        <a class="dropdown-item" href="#">link 2</a>
	                        <a class="dropdown-item" href="#">link 3</a>
	                    </div>
	                </li>
	
	                <li class="nav-item active ml-4 row">
	                    <a class="nav-link" href="http://localhost:8080/GadgetBadget_PAF_Project/SignUp.jsp" title="Sign Up"><i class="fas fa-user fa-1x"></i>  Sign Up</a>
	                </li>
	
	                <li class="nav-item active ml-4 mr-2 row">
	                    <a class="nav-link" href="http://localhost:8080/GadgetBadget_PAF_Project/Login.jsp" title="Login"><i class="fas fa-sign-in-alt fa-1x"></i>  Login</a>
	                </li>
	            </ul>
	        </div>
	    </nav>
	    <!-- navbar -->
	    
	    <!-- header -->
	    <header>
	        <div class="overlay"  style="background-image: url('https://mdbootstrap.com/img/new/slides/004.jpg');"></div>
	        <div class="container h-100">
	            <div class="d-flex h-100 text-center align-items-center">
	                <div class="w-100 text-white">
	                    <h1 class="display-3" style="font-weight: bolder;">Innovator Section</h1>
	                    <h3 class="lead mt-3">You are <b>not alone</b> in your Journey<br> <br><center>WE, over <b>2 million community</b> would like to help YOU</center></h3><br>
	                </div>
	            </div>
	        </div>
	    </header>
		<!-- header -->
		
		
		<br><br>
		<div class="card text-center" style="width:1200px;margin:0 auto;">
		  <div class="card-body">
		    <h2 class="card-title">Why to choose GadgetBadget</h2>
		    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec porta, lorem a faucibus tincidunt, turpis est auctor diam, nec luctus turpis leo ut lacus. Aenean nec elementum lacus. Nunc at ex posuere velit ullamcorper ultrices et eget mauris. Nulla faucibus sit amet neque non rutrum. Suspendisse et purus mi. Phasellus semper aliquet libero et dapibus. Proin at tellus vel dolor viverra euismod quis non quam. Nulla viverra facilisis elit et placerat. Fusce sit amet lectus tempus, ultrices leo ut, dignissim quam. Phasellus consequat mi erat, id rhoncus orci pretium vel. Etiam non orci interdum lectus iaculis pharetra ut ut sem. Mauris rhoncus tincidunt commodo. Cras arcu mi, ornare id nisl id, bibendum finibus mi.</p>
		  </div>
		</div>
	    <br><br>
            
          <h2 class="text-center"><b>Some Of Our Success Stories</b></h2><br><br>
                    
		  <div class="row" style="width:1500px; margin:0 auto;">
				<div class="col-lg-4 col-sm-6 col-xs-12">
			  		<div class="card" style="width: 70%">
			    		<img src="https://mdbootstrap.com/img/new/standard/nature/188.jpg" class="card-img-top" alt="..."/>
  						<div class="card-body">
    						<h5 class="card-title">Project Name</h5>
    						<br>
    						<a href="#!" class="btn btn-info">View Project</a>
  						</div>
			    	</div>
			  </div>
			  	
				<div class="col-lg-4 col-sm-6 col-xs-12">
			  		<div class="card" style="width: 70%">
			    		<img src="https://mdbootstrap.com/img/new/standard/nature/187.jpg" class="card-img-top" alt="..."/>
  						<div class="card-body">
    						<h5 class="card-title">Project Name</h5>
    						<br>
    						<a href="#!" class="btn btn-info">View Project</a>
  						</div>
			    	</div>
			  	</div>
			  	
				<div class="col-lg-4 col-sm-6 col-xs-12">
			  		<div class="card" style="width: 70%">
			    		<img src="https://mdbootstrap.com/img/new/standard/nature/182.jpg" class="card-img-top" alt="..."/>
  						<div class="card-body">
    						<h5 class="card-title">Project Name</h5>
    						<br>
    						<a href="#!" class="btn btn-info">View Project</a>
  						</div>
			    	</div>
			  </div>
	     </div>
	     
	     <br><br>
	     
	     <div class="text-center">   
	     <button type="button" class="btn btn-outline-success" onclick="location.href='http://localhost:8080/GadgetBadget_PAF_Project/innvFormP1.jsp'">Let's begin a Campaign</button>
	     </div>
	     <br><br>
	     
	     <span class="d-block p-2 bg-info" style="margin:28px">
		  	<center><img src="innvHome.PNG"/></center>
		 </span>
		 
		 <br><br>
		 
		 
		 
		  <!-- footer -->
	        <footer class="page-footer font-small text-light">
	            <!-- Footer Links -->
	            <div class="text-center text-md-left pt-4" style="background-color: #1a2742;">
	
	                <!-- Grid row -->
	                <div class="row">
	
	                    <!-- Grid column -->
	                    <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
	
	                        <!-- Content -->
	                        <h6 class="text-uppercase font-weight-bold">Gadget Badget</h6>
	                        <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
	                        <p>Here you can use rows and columns to organize your footer content. Lorem ipsum dolor sit
	                            amet,
	                            consectetur
	                            adipisicing elit.</p>
	
	                    </div>
	                    <!-- Grid column -->
	
	                    <!-- Grid column -->
	                    <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
	
	                        <!-- Links -->
	                        <h6 class="text-uppercase font-weight-bold">Products</h6>
	                        <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
	                        <p>
	                            <a href="#!">Bootstrap</a>
	                        </p>
	                        <p>
	                            <a href="#!">WordPress</a>
	                        </p>
	                        <p>
	                            <a href="#!">BrandFlow</a>
	                        </p>
	                        <p>
	                            <a href="#!">Bootstrap Angular</a>
	                        </p>
	
	                    </div>
	                    <!-- Grid column -->
	
	                    <!-- Grid column -->
	                    <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
	
	                        <!-- Links -->
	                        <h6 class="text-uppercase font-weight-bold">Useful links</h6>
	                        <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
	                        <p>
	                            <a href="#!">Link 1</a>
	                        </p>
	                        <p>
	                            <a href="#!">Link 2</a>
	                        </p>
	                        <p>
	                            <a href="#!">Link 3</a>
	                        </p>
	                        <p>
	                            <a href="#!">Link 4</a>
	                        </p>
	
	                    </div>
	                    <!-- Grid column -->
	
	                    <!-- Grid column -->
	                    <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
	
	                        <!-- Links -->
	                        <h6 class="text-uppercase font-weight-bold">Contact</h6>
	                        <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
	                        <p>
	                            <i class="fas fa-home mr-3"></i> No 10/B, Colombo, Sri Lanka</p>
	                        <p>
	                            <i class="fas fa-envelope mr-3"></i> info@gb.com</p>
	                        <p>
	                            <i class="fas fa-phone mr-3"></i> + 94 234 567 885</p>
	                        <p>
	                            <i class="fas fa-print mr-3"></i> + 94 234 567 893</p>
	
	                    </div>
	                    <!-- Grid column -->
	
	                </div>
	                <!-- Grid row -->
	
	            </div>
	            <!-- Footer Links -->
	
	            <!-- Copyright -->
	            <div class="footer-copyright text-center py-3" style="background-color: #1c2331;">© 2021 Copyright:
	                <a href="#"> Gadget Badget</a>
	            </div>
	            <!-- Copyright -->
	        </footer>
		 
	                 

</body>
</html>