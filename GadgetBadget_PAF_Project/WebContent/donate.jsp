<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>GadgetBadget</title>
        
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
	    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
	    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
	    
	    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.css">
	    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
	    <link rel="stylesheet" href="css/donate.css">
       
    </head>
    <body>
        <div class="container">
            <div class="regbox box">
                <img class="avatar" src="images/donateImg.jpg"><br>
                <h2>Donate This Project</h2>
				<form action="RegisterServlet" method="post"><br>
                   	<label for="contribution">Make a contribution</label><br>
					<input type="text" id="usd" placeholder="USD" name="amount" required><br><br>
                 	<input type="submit" value="CONTINUE">
                 	<p>Contributions are not associated with perks</p>
                
                </form>
			</div>
		</div>
	</body>
</html>