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
    <link rel="stylesheet" href="css/register.css">
    <link rel="stylesheet" href="css/forgotpassword.css">
    
    <!-- js -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    <script src="https://unpkg.com/flickity@2.0/dist/flickity.pkgd.min.js"></script>
    <script src="https://unpkg.com/swiper/swiper-bundle.js"></script>
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
	
</head>
<body>

	<div class="Fulscreen_slide">
        <div class="container-fluid p-0 m-0 inner_layer d-flex justify-content-center align-items-center">
            <div class="jumbotron d-flex justify-content-center align-items-center p-0 col-6 h-75" id="flipJumbo">
                <div class="front row">

                    <div class="col-6 resetLeft">
                    </div>

                    <div class="col-6 d-flex flex-column justify-content-center align-items-center">     
                    	<div class="container">  
                            <h1 class="h1 mb-0 d-flex flex-row">Reset</h1>
                            <h1 class="h1 mb-3 d-flex flex-row">Your Password</h1><br>
                            <small class="mt-3 text-muted mb-4">Temporary Password has been sent to your Email Address. Use that when you Login again. You can setup your new password once you Logged in.</small><br><br>

                            <div class="d-flex justify-content-end">
                                <button class="btn ForgotPwNxtBtn mt-4" onclick="location.href='http://localhost:8080/GadgetBadget_PAF_Project/Login.jsp'">SIGN IN</button>
                            </div>
                    	</div>        
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>
</html>