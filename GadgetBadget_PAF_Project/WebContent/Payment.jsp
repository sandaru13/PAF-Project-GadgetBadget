<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
  <title>GadgetBadget-payment</title>
  <link rel="stylesheet" href="styles/paybill_new.css">
  <link rel="stylesheet" href="styles/home.css">
</head>


<body class="bodys">

     <img src="images/tpayment1.jpg" alt="photo with letters" style = "width: 100%;height:520px;margin-bottom:0px;	opacity: 1.0;">
    <div class="Row">
      <div class="col_3">
      <div class="all">
        <form method = "post" action ="#">
          <div class="Row">
              <div class="col_1">

                  <h3>Billing Address</h3>

                 <label for ="fname">Full Name</label>
                    <Input type = "text" id ="fname" name= "fullname" placeholder ="T.S.Senatilaka">
                  <label for ="email">Email</label>
                    <Input type = "email" id ="email" name= "email" placeholder ="tsandeepani@gmail.com">
                  <label for ="address">Address</label>
                    <Input type = "text" id ="address" name= "address" placeholder ="No:20/4 3rd street">
                  <label for ="city">City</label>
                    <Input type = "text" id ="city" name= "city" placeholder ="Panadura">
                  <label for ="projectType">Project type</label>

											<select  id ="projectType" name= "projectType" required >
										     <option value="" hidden >select the project type</option>
												 <option value="ty1">Type 1</option>
										     <option value="ty2">Type 2</option>
										     <option value="ty3">Type 3</option>
										     <option value="ty4">Type 4</option>
												 <option value="ty5">Type 5</option>
										     <option value="ty6">Type 6</option>
												 <option value="ty7">Type 7</option>
												 <option value="ty8">Type 8</option>

										   </select>


                <div class="Row">
                  <div class="col_2">
                    <label for ="In_Num">Project Number</label>
                      <Input type = "text" id ="pr_Num" name= "pr_Num" placeholder ="xxxxxx">
                  </div>

                  <div class="col_2">
										<label for ="Amount">Amount</label>
			                 <Input type = "text" id ="Amount" name= "Amount" placeholder ="Rs.">
                  </div>
                </div>

            </div>

            <div class="col_1">

              <h3>Payment Details</h3>

              <label for ="cName">Name on card</label>
                 <Input type = "text" id ="cName" name= "CardName" placeholder ="T.S.Senatilaka">
              <label for ="cNum">Credit card number</label>
                  <Input type = "text" id ="cNum" name= "CardNum" placeholder ="xxxx - xxxx - xxxx - xxxx" max="19">
              <label for ="cName">Exp Month</label>
                  <Input type = "text" id ="expmonth" name= "expmonth" placeholder ="Expiration month">

                  <div class="Row">
                      <div class="col_2">
                        <label for ="expyear">Exp year</label>
                          <Input type = "text" id ="Expyear" name= "expyear" placeholder ="2020">
                      </div>

                      <div class="col_2">
                        <label for ="cvv">CVV</label>
                          <Input type = "text" id ="cvv" name= "cvv" placeholder ="000">
                      </div>
                  </div>

                  <img src="images/tcard.png" alt="photo with letters" style = "width: 100%;height:60px;margin-bottom:0px;">
              </div>
          </div>

        <label>
          <input class = "inputStyle" id = "checkbox" type = "checkbox" onclick = "enableButton()">Accept privacy policy and terms
        </label>

          <input  name="btn" id = "submitBtn"  class="btn" type = "submit" value = "Confirm" >

        </form>
      </div>
      </div>

    </div>


 </body>
 <hr/>

</html>











