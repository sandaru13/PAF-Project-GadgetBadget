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
	
	<center>Let's Add some DETAILS about your project ;]</center><br>
	
    <center>
		<img src="innvP2.PNG"/>
	</center>
	
	<form>
	
	    Pitch Your project idea with your community
	    <input type="text" class="form-control" name="projectDetails" placeholder="Describe your project within 5min" required maxlength="1000">
	    <br>
	    Let's add some pictures 
	    <input type="file" class="form-control" src="" name="projectPic" accept = "image/*">
	    <br>
	    
	    <!-- must implement img input -->
	    
	    Add link to social media pages
	    <input type="text" class="form-control" name="social" placeholder="">
	    <br>
	        
	    Offers to backers as rewards<br>
	    <input type="radio" id="offersType1" name="offersType" value="offersType1">
		<label for="offersType1">10%</label><br> 
		<input type="radio" id="offersType2" name="offersType" value="offersType2">
		<label for="offersType2">20%</label><br>
		<input type="radio" id="offersType3" name="offersType" value="offersType3">
		<label for="offersType3">30%</label><br>
		<input type="radio" id="nooffersType" name="offersType" value="nooffersType2">
		<label for="nooffersType2">I'm not sure yet</label><br><br>  
		
		Donation Type
		<br>
		<input type="radio" id="dt1" name="donaType" value="dt1">
		<label for="dt1">Minimum</label><br>
		<input type="radio" id="dt2" name="donaType" value="dt2">
		<label for="dt2">Maximum</label><br>
		<input type="radio" id="dt3" name="donaType" value="dt3">
		<label for="dt3">Any</label><br><br>
			
	    Create own unique perks  
	    <input type="text" class="form-control" name="perks" placeholder="">
	    
	    <input type="radio" id="perk1" name="perks" value="perk1">
		<label for="perk1">I'll do it later</label><br>
		<input type="radio" id="perk2" name="perks" value="perk2">
		<label for="perk2">I don't think so</label><br><br>
		
		Deadline 
		<input type="date" class="form-control" name="deadline">
		
		<button type="button" class="btn btn-success" onclick="">Proceed to next page</button>
    
    </form>
    
</body>
</html>