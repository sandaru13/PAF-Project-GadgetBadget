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

		<div class="container" style="background-color:#E0F7FA;">
			<br><br>
			<center><h3>Finacial Status</h3></center><br>
			
		    <center>
				<img src="innvP3.png"/>
			</center>
			
			<div class="row" style="width:1500px; margin:0 auto;">
			    	<div class="col-lg-4">
				  		<div class="card" style="width:500px;margin-left:270px;margin-top:40px" >
				  		
				  		<form style="margin:30px 30px 30px 30px;">
			
						 	Nationality
						    <input type="text" class="form-control" name="nationality" placeholder=""><br>
							
							NIC number
							<input type="text" class="form-control" name="getNIC" placeholder=""><br>
							
							Photo of NIC
							<input type="file" class="form-control" src="" name="photoNIC" accept = "image/*"><br>
							
							Bank Name
							<input type="text" class="form-control" name="getbank" placeholder=""><br>
							
							Provide your Bank Account number
							<input type="text" class="form-control" name="bankNumber" placeholder=""><br>
							
							Contact Number
							<input type="text" class="form-control" name="contackNumber" placeholder=""><br>
							
							
							<button type="button" class="btn btn-success" onclick="location.href='http://localhost:8080/GadgetBadget_PAF_Project/innvFormP4.jsp'">Proceed to next page</button>
						</form>
						</div>
					</div>
				</div>
				
			</div>
    
</body>
</html>