<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
  <title>GadgetBadget</title>
  <link rel="stylesheet" href="css/backingProject.css">
 
</head>


<body class="bodys">

    <div class="Row">
      <div class="col_3">
      <div class="all">
        <form method = "post" action ="#">
          <div class="Row">
              <div class="col_1">

                  <h2>YOU'RE CONTRIBUTING TO</h2>
				  <h3>Olive Pro: 2-in-1 Hearing Aids & Bluetooth Earbuds</h3>
                 <label for ="contribution">Your contribution</label>
                    <Input type = "text" id ="amount" name= "contribution" placeholder ="USD"><br>
                   <p>Secure Payment</p>
                  <label for ="name">Name on card</label>
                    <Input type = "text" id ="name" name= "name">
                  <label for ="card">Card Information</label>
                    <Input type = "text" id ="cardNo" name= "cardNo" placeholder ="card number" max="19"><br>
                  <p><b>Add a tip to GadgetBadget</b></p>
                  <p>By supporting GadgetBadget, you are helping us bring the power of community to important causes around the world. We will match a portion of your tip and donate to various causes important to the GadgetBadget community.</p>
                    <input type="radio" id="tip1" name="tip" value="1">
					  <label for="tip1">$1 USD</label>
					  <input type="radio" id="tip2" name="tip" value="2">
					  <label for="tip2">$2 USD</label>  
					  <input type="radio" id="tip3" name="tip" value="3">
					  <label for="tip3">$3 USD</label>
					   <input type="radio" id="otherTip" name="tip" value="4">
					  <label for="otherTip">Other Amount</label>
					   <input type="radio" id="noTip" name="tip">
					  <label for="noTip">No Tip</label>


            </div>

            <div class="col_1">

              <h4>Contribution Summary</h4>

              <p>Your contribution</p>
                 <Input type = "text" id ="amount" name= "amount" placeholder ="$                                                                                     USD">
              <label for ="sTot">SubTotal</label>
              <label for ="tip">gadgetBadget Tip</label>
              <label for ="Tot"><b>TOTAL<b></label><br><br>
              
              <p>Crowdfunding is not shopping</p>
                  <p>dl sdbkja sbdkba</p>
				<label><input class = "inputStyle" id = "checkbox" type = "checkbox" onclick = "enableButton()">I agree to the Terms of Use and have read and understand the Privacy Policy</label>

          <input  name="btn" id = "submitBtn"  class="btn" type = "submit" value = "Confirm" ></div>

        </form>
      </div>
      </div>

    </div>


 </body>
 <hr/>

</html>
