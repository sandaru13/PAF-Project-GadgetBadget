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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js"></script>
    <script>
	    $(document).ready(function() {
	    	var ctx2 = document.getElementById('pieChart');

	        var myPieChart = new Chart(ctx2, {
	            type: 'doughnut',
	            data: {
	            	labels: ["Finished Campaigns","Ongoing Campaigns"],
	                datasets: [{	                    
	                    data: [60, 40],
	                    backgroundColor: [
	                        'rgba(255, 99, 132, 1)',
	                        'rgba(54, 162, 235, 1)'
	                    ],
	                    borderColor: [
	                        'rgba(255, 99, 132, 1)',
	                        'rgba(54, 162, 235, 1)'
	                    ],
	                    borderWidth: 1
	                }]
	            }
	        });
	        
	        var ctx3 = document.getElementById('accountChart');
	        var myChart = new Chart(ctx3, {
	            type: 'bar',
	            data: {
	                labels: ['Innovators', 'Buyers'],
	                datasets: [{
	                    label: 'No of Accounts',
	                    data: [237, 68],
	                    backgroundColor: [
	                        'rgba(48, 79, 254, 1)',
	                        'rgba(48, 79, 254, 1)'
	                    ],
	                    borderColor: [
	                        'rgba(48, 79, 254, 1)',
	                        'rgba(48, 79, 254, 1)'
	                    ],
	                    borderWidth: 0
	                }]
	            },
	            options: {
	                scales: {
	                    yAxes: [{
	                        gridLines: {
	                            display: false,
	                        },
	                        ticks: {
	                            beginAtZero: true,
	                        }
	                    }],
	                    xAxes: [{
	                        gridLines: {
	                            display: false,
	                        },
	                        ticks: {
	                            beginAtZero: true,

	                        }
	                    }]
	                }
	            }
	        });
	    });
	</script>
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
                                
                <div class="row p-2 m-4 d-flex flex-row justify-content-center ">
                	<div class="col-5 overflow-auto white mr-4 d-flex flex-column justify-content-center align-items-center" style="background-image: url(animatedback.gif);"><br>
						
                        <i class="fas fa-file-alt fa-7x" style="color: rgb(252, 203, 43);"></i>
                        <h1 class="font-weight-bold mt-3"># of ongoing campaigns</h1>
                        <h4 class="mt-3 ml-3 mb-4 font-weight-bold text-muted">Ongoing Campaigns on the Site</h4>
                        <div class="row w-100" style="height: 6px;" style="color: chocolate; background-color: chocolate; ">
                            <div class="col-2" style="background-color: rgb(23, 95, 228); border-radius: 15px;"></div>
                            <div class="col-4" style="background-color: rgb(221, 170, 4); border-radius: 15px;"></div>
                            <div class="col-6" style="background-color: rgb(253, 215, 0); border-radius: 15px;"></div>
                        </div>
                    </div>
                </div>
                
                <hr class="mt-4 mb-2" style="background-color: crimson; height: 3px; width: 100%;">

                <div class="row ml-4 d-flex justify-content-between" style="width: 100%;">
	                <div class="d-flex flex-row mt-4 mr-4">
	                    <i class="fas fa-user d-flex align-self-center fa-3x mr-2" style="color: rgb(255, 174, 0);"></i>
	                    <div class="d-flex flex-column">
	                        <p class="mb-0 text-muted">Total Accounts</p>
	                        <h2 class="mt-0"># of accounts</h2>
	                    </div>
	                </div>
	
	                <div class="d-flex flex-row mt-4 mr-4">
	                    <i class="fas fa-campground d-flex align-self-center fa-3x mr-2" style="color: rgb(6, 145, 209);"></i>
	                    <div class="d-flex flex-column">
	                        <p class="mb-0 text-muted">Total Campaigns</p>
	                        <h2 class="mt-0"># of campaigns</h2>
	                    </div>
	                </div>
	
	                <div class="d-flex flex-row mt-4 mr-4">
	                    <i class="fas fa-donate d-flex align-self-center fa-3x mr-2" style="color: rgb(1, 59, 126);"></i>
	                    <div class="d-flex flex-column">
	                        <p class="mb-0 text-muted">Total Donations</p>
	                        <h2 class="mt-0">sum of donations</h2>
	                    </div>
	                </div>
	
	                <div class="d-flex flex-row mt-4 mr-4">
	                    <i class="fas fa-dollar-sign d-flex align-self-center fa-3x mr-2" style="color: rgb(123, 26, 187);"></i>
	                    <div class="d-flex flex-column">
	                        <p class="mb-0 text-muted">Total Purchases</p>
	                        <h2 class="mt-0">sum of purchases</h2>
	                    </div>
	                </div>
	            </div>
                
                <div class="row p-2 m-4 ">
	                <div class="col-7 m-4 white">
	                	<div class="row d-flex flex-column">
	                    	<h2 class="mt-3 ml-3 mb-0 font-weight-bold">Campaigns</h2>
	                        <p class="mt-0 ml-3 mb-4 text-muted">Current campaigns on the site</p>
	                    </div>
		                <div class="row d-flex flex-row">
		                	<canvas class="mb-4  col-6" id="pieChart" width="100%" height="80%"></canvas>
		                	<div class="col-5">
		                    	<h2 class="mt-3 ml-3 mb-0">60%</h2>
		                        <p class="mt-0 ml-3 mb-4 text-muted">Finished Campaigns</p>
		                        <ul class="mt-2">
		                        	<li class="d-flex justify-content-between mt-4 mb-4">
		                                <p><i class="fas fa-circle mr-2" style="color: rgba(255, 99, 132, 1);"></i>Finished Campaigns :</p>
		                                <p>60%</p>
		                            </li>
		                            <li class="d-flex justify-content-between mt-4 mb-4">
		                                <p><i class="fas fa-circle mr-2" style="color: rgba(54, 162, 235, 1);"></i>Ongoing Campaigns :</p>
		                                <p>40%</p>
		                            </li>
		                        </ul>
		                	</div>
		                </div>
	                </div>
	                
	                <div class="col-4 m-4 white">
                        <div class="row d-flex flex-column white">
                            <h2 class="mt-3 ml-3 mb-0 font-weight-bold">Accounts</h2>
                            <p class="mt-0 ml-3 mb-4 text-muted">Existing User Accounts</p>
                        </div>
                        <div class="row d-flex flex-column ml-3 mr-4">
                            <canvas id="accountChart" width="100%" height="90%"></canvas>
                        </div>
                    </div>	                
	            </div> 
                
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
		                        <p>Gadget Badget is an online crowdfunding platform that helps innovators by interconnecting innovators with funding bodies.
		                           Also the platform offers the opportunity to sell the projects of the innovators by interconnecting them with buyers.</p>
		
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
		        <!-- Footer -->
                
        	</div>    
    	</div>        
	</div>
	
</body>
</html>