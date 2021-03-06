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
                <div class="front row" id="front">
                
                    <div class="col-6 loginLeft ">
						<!-- 
                        <div
                            class=" signlogomb-3 mb-3 mt-4 d-flex flex-column justify-content-center align-items-center">
                            <img src="logo.png" class="signlogo ">
                        </div>                    

						<div class="mt-4 ml-4">
	                    	<h1 class=""><b>Come !</b></h1>
	                    	<h2 class="text-right"><b>With a New Idea,</b></h2>
	                    	<h1 class=""><b>Leave as an</b></h1>
	                    	<h2 class="text-center" style="font-weight: bold; font-style: italic; font-family: serif">Innovator</h2>
                    	</div> 

                        <div class="to_flip d-flex justify-content-center align-items-center" id="toflipbtn" style="padding: 20px;position: relative; left: 60px;">
                            <a style="color: white;" href="http://localhost:8080/GadgetBadget_PAF_Project/SignUp.jsp">SIGN UP</a>
                        </div>
                        -->  
                    </div>                   
                    
                    <div class="col-6 loginRight" style="background-color: whitesmoke;">
                        <form class="text-center p-3" id="logfrm" action="#" method="POST">
                            <h1 class="h1 mb-0 d-flex flex-row mt-5">Sign In</h1><br>
                            <div class="row ml-1 mb-3">
                                <small class="mt-0 text-muted mb-4">Don't have an account ? </small>
                                <a href="http://localhost:8080/GadgetBadget_PAF_Project/SignUp.jsp" style="font-size: smaller; font-weight: bold; color: blue;">Create an account..</a>
                            </div>

                            <!-- E-mail -->
                            <input type="text" id="loginEmail" class="form-control mb-4" placeholder="Username/E-mail" required name="loginEmail">
                                 
                            <!-- Password -->
                            <input type="password" id="loginPw" class="form-control" placeholder="Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" required name="loginPw">

                            <div class="row mt-3 ml-1 mr-2 d-flex justify-content-between align-items-end mb-4" id="remrow">                                
                                <a style="font-size: smaller; font-weight: bold;" href="http://localhost:8080/GadgetBadget_PAF_Project/forgotPassword.jsp"> Forgot Password?</a>
                            </div>

                            <button class="btn my-4 btn-block sign_UpIn_btn" type="submit" id="signinsumbit">Sign In</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>


</body>
</html>