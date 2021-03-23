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
			<center><h4>Let's Add some DETAILS about your project ;]</h4></center><br>
			
		    <center>
				<img src="innvP2.png"/>
			</center>
				
			  <div class="row" style="width:1500px; margin:0 auto;">
			    	<div class="col-lg-4">
				  		<div class="card" style="width:500px;margin-left:270px;margin-top:40px" >
				  		
				  		<form style="margin:30px 30px 30px 30px;">
				  							
					    Pitch Your project idea with your community
					    <input type="text" class="form-control" name="projectDetails" placeholder="Describe your project within 5min" required maxlength="1000" style="height:80px;">
					    <br>
					    Let's add some pictures 
					    <input type="file" class="form-control" src="" name="projectPic" accept = "image/*">
					    <br>
					    
					    <!-- must implement img input -->
					    
					    Add link to social media pages
					    <input type="text" class="form-control" name="social" placeholder="">
					    <br>
					        
					    Offers to backers as rewards<br>
					    <div class=container>
							<div class="row" style="margin-top:10px;">
						
								<div class="col" style="margin-left:-10px;">
									<input type="button" class="btn btn-outline-success" value="Custom Reward" onclick="ShowHideDiv(this)" >					
								</div>
																			
								<div class="col">
									<input type="button" value="I don't think so" onclick="ShowHideDiv(this)" class="btn btn-outline-warning">								
								</div>
								
							</div>
						</div>
						<br>
						
						<div class=container>
							<div class="row">	
								<div id="dvReward" style="display: none">
								    Offer Percentage:
								    <input type="text" id="inReward" class="form-control">							    
								</div>
							</div>
						</div>		
						
						<br>
						Donation Type
						<br>
						<div class=container>
							<div class="row" style="margin-top:10px;">
								<div class="col">
									<input type="radio" id="dt1" name="donaType" value="dt1">
									<label for="dt1">Minimum</label><br>
								</div>
								<div class="col">
									<input type="radio" id="dt2" name="donaType" value="dt2">
									<label for="dt2">Maximum</label><br>
								</div>
								<div class="col">
									<input type="radio" id="dt3" name="donaType" value="dt3">
									<label for="dt3">Any</label>
								</div>
							</div>
						</div>
						<br>
							
					    Create own unique perks  
					    <input type="text" class="form-control" name="perks" placeholder="">
					    
					    <input type="radio" id="perk1" name="perks" value="perk1">
						<label for="perk1">I'll do it later</label><br>
						<input type="radio" id="perk2" name="perks" value="perk2">
						<label for="perk2">I don't think so</label><br><br>
						
						Deadline 
						<input type="date" class="form-control" name="deadline"><br>
						
						<button type="button" class="btn btn-success" onclick="">Proceed to next page</button>
				    
				    </form>
				  </div>
				</div>
			</div>
				
		</div>
				<script type="text/javascript">
				    function ShowHideDiv(btnRew) {
				        var dvReward = document.getElementById("dvReward");
				        dvReward.style.display = btnRew.value == "Custom Reward" ? "block" : "none";
				    }
				</script>
				
    
</body>
</html>