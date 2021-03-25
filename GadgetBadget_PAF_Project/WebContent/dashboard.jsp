<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	
	<!-- css -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/css/mdb.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.css">
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="css/dashboard.css">
    
    <!-- js -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    <script src="https://unpkg.com/flickity@2.0/dist/flickity.pkgd.min.js"></script>
    <script src="https://unpkg.com/swiper/swiper-bundle.js"></script>
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <script src="js/Dashboard.js"></script>
	
</head>
<body>

	<div class="container-fluid p-0 m-0 grey lighten-5">
        <div class="row row-cols-2 p-0 m-0 pageContent" >

            <!--Start of SlideBar-->
            <div class="col-2 p-0 m-0" style="z-index: 0;">
                <nav class="sidebar">
                    <div class="sideback">
                    	<div class="sidebarTop d-flex flex-row pt-4">
                        	<div class="ml-2">
                            	<img src="logo.png" alt="Gadget Badget" style="width: 80px; height: 90px;">
                        	</div>

                        	<div class="d-flex flex-column ml-2">
                            	<h3 class="pt-3" style="font-weight: bold;">Gadget</h3>
                            	<h4 style="font-weight: bold;">Badget</h4>
                        	</div>

                    	</div><br>

	                    <ul>
	                        <li class="" style=" background-color: rgb(255, 255, 255 , 0.4); margin: 10px; border-radius: 5px;">
	                            <a href="#"> <i class="fas fa-chart-pie mr-3"> </i>  Dashboard</a>	                            
	                        </li>
	
	                        <li><a class="dropbtnAccounts" href="#"><i class="fas fa-id-card mr-3"></i>Accounts<span class="fas fa-sort-down Accounts-sp"></span></a>
	                            <ul class="dropContAccounts">
	                                <li><a href="">Innovators</a></li>
	                                <li><a href="">Buyers</a></li>
	                            </ul>
	                        </li>
	
	                        <li><a class="dropbtnProjects" href="#"><i class="fas fa-box mr-3"></i>Projects<span class="fas fa-sort-down Projects-sp"></span></a>
	                            <ul class="dropContProjects">
	                                <li><a href="">Ongoing Campaigns</a></li>
	                                <li><a href="">Finished Campaigns</a></li>
	                            </ul>
	                        </li>
	
	                        <li><a class="dropbtnPayments" href="#"><i class="fas fa-dollar-sign mr-3"></i>Payments<span class="fas fa-sort-down Payments-sp"></span></a>
	                            <ul class="dropContPayments">
	                                <li><a href="">Funds</a></li>
	                                <li><a href="">Purchase</a></li>
	                            </ul>
	                        </li>
		
	                    </ul>
	                    
                    </div>
                </nav>
            </div>
            <!--End of SlideBar-->
            
            <div class="col-10 pl-0 pr-0 m-0 contentArea" style="width: 100%; position: relative; left: -2px;">

                <nav class="navbar-expand-lg  pl-4 p-0 d-flex justify-content-between" style="background-color: rgba(250, 68, 68 , 0.9); height: 70px;">
                    
                    <h1 class="navbar-brand mt-2" style="font-weight: bold; font-size: 30px;" ><i class="fas fa-chart-pie mr-3"></i>DASHBOARD</h1>
                    
                    <div class="mr-5">                      
                        <ul class="navbar-nav ml-auto nav-flex-icons">
                            <li class="nav-item mt-1">
                                <a class="nav-link waves-effect waves-light">
                                   <i class="fas fa-bell fa-2x mt-2 mr-3"></i>
                                </a>
                            </li>
                            <li class="nav-item mt-1">
                                <a class="nav-link waves-effect waves-light">
                                   <i class="fas fa-envelope fa-2x mt-2 mr-3"></i>
                                </a>
                            </li>
                            
                            <li class="nav-item dropdown">                            
                                <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink-333" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">                                    
                                    <img src="https://mdbootstrap.com/img/Photos/Avatars/img(32).jpg" class="img-fluid z-depth-1 rounded-circle" alt="Admin Profile" style="width: 50px; height: 50px;">
                                </a>
                                
                                <div class="dropdown-menu dropdown-menu-right dropdown-default p-0" aria-labelledby="navbarDropdownMenuLink-333" style="width: 300px;">
                                    <div class="aqua-gradient d-flex flex-row" style="height: auto;">
                                    
                                        <img src="https://mdbootstrap.com/img/Photos/Avatars/img(32).jpg"
                                            class="img-fluid z-depth-1 rounded m-3" alt="Responsive image"
                                            style="width: 70px; height: 70px;">

                                            <div class="d-flex flex-column">
                                                <p class="m-0 p-0">System Admin</p>
                                            </div>
                                    </div>
                                    
                                    <a class="dropdown-item mt-0 mb-0 pt-0 pb-0" href="#"> <i class="fas fa-sign-out-alt mr-3"></i>Log Out</a>
                                </div>
                                                                
                            </li>
                        </ul>                                                       
                    </div>
                </nav>
                
                
                
        	</div>    
    	</div>        
	</div>
	
</body>
</html>