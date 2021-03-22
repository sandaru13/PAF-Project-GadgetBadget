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

    <center>
		<img src="innvP1.PNG"/>
	</center>
	
	<form>
	    Campaign Title
	    <input type="text" class="form-control" name="campTitle" placeholder="yo..." required>
	    <br>  
	    
	    <label for="category">Fund Raiser Category</label>
  			<select name="category" id="cato">
		     <option value="aac">Art and Crafting</option>
		     <option value="gam">Gaming</option>
		     <option value="gam">Gaming</option>
		     <option value="gam">Gaming</option>
		     <option value="gam">Gaming</option>
		    </select>
	    <br><br>
	    The Project is managed by
	    <br>
	        <input type="radio" id="solo" name="manage" value="solo">
			<label for="solo">By Me</label><br>
			<input type="radio" id="org" name="manage" value="org">
			<label for="org">By My Organization</label><br>
			<input type="radio" id="friends" name="manage" value="friends">
			<label for="friends">with my friends</label><br>
		<br>
		What is your prefer currency
	    <br>
	    	<input type="radio" id="lkr" name="currency" value="lkr">
			<label for="lkr">LKR</label><br>
			<input type="radio" id="dollar" name="currency" value="dollar">
			<label for="dollar">USD$</label></br></br>
			
		Set minimum amount goal
		<br>
		   	<input type="radio" id="mf1" name="minFund" value="mf1">
			<label for="mf1">1000$</label><br>
			<input type="radio" id="mf2" name="minFund" value="mf2">
			<label for="mf2">10000$</label><br>
			<input type="radio" id="mf3" name="minFund" value="mf3">
			<label for="mf1">50000$</label><br>
			<input type="radio" id="mf4" name="minFund" value="mf4">
			<label for="mf4">100000$</label><br>
			<input type="radio" id="mf4" name="minFund" value="mf4">
			<label for="mf4">I'm not sure yet</label></br></br>
	    
	    <input type="checkbox" id="AgreementP1" name="Agreement" value="AgreementP1" required>
	    <label for="AgreementP1">Terms and Conditions</label><br>
	    
	    <button type="button" class="btn btn-success" onclick="">Proceed to next page</button>
	    
	  </form>
    
</body>
</html>