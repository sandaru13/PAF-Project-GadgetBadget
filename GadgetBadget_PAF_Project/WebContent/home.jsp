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
	
		<nav class="navbar navbar-expand-lg topnav">

        <img src="logo.png" class="navbar-brand navLogo" alt="Gadget Badget">
        <h4 style="font-weight: bolder; font-style: italic; font-family:  Cambria, Cochin, Georgia, Times, 'Times New Roman', serif; color: rgb(253, 71, 108);" class="mt-2 ml-0">Gadget Badget</h4>
        
        <div class="collapse navbar-collapse d-flex justify-content-end" id="navbarNavDropdown">
            <ul class="navbar-nav">
                <li class="nav-item active ml-2 mr-1">
                    <a class="nav-link" href="#">Home </a>
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
                    <a class="nav-link" href="#" title="Sign Up"><i class="fas fa-user fa-1x"></i>  Sign Up</a>
                </li>

                <li class="nav-item active ml-4 mr-2 row">
                    <a class="nav-link" href="#" title="Login"><i class="fas fa-sign-in-alt fa-1x"></i>  Login</a>
                </li>
            </ul>
        </div>
    </nav>
    
    <header>
        <div class="overlay"></div>
        <div class="container h-100">
            <div class="d-flex h-100 text-center align-items-center">
                <div class="w-100 text-white">
                    <h1 class="display-3" style="font-weight: bolder;">Have an Innovative Idea?</h1>
                    <h3 class="lead mt-3">Start your project. We will back you up.</h3><br>
                    <button type="button" class="btn btn-success">Start a Campaign</button>
                </div>
            </div>
        </div>
    </header>
    	
</body>
</html>