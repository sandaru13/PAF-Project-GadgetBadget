package com;

import model.Payment;

//For REST Service
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;

//For JSON
import com.google.gson.*;

//For XML
import org.jsoup.*;
import org.jsoup.parser.*;
import org.jsoup.nodes.Document;

@Path("/Payments")
public class PaymentService {
	Payment payment = new Payment();

	@GET
	@Path("/")
	@Produces(MediaType.TEXT_HTML)
	public String readPayment() {
		return payment.readPayment();
	}
  
	// inserPayment() method
	
	@POST
	@Path("/") 
	@Consumes(MediaType.APPLICATION_FORM_URLENCODED) 
	@Produces(MediaType.TEXT_PLAIN) 
	public String insertBuyer(@FormParam("Name") String Name, 
	 @FormParam("Email") String Email, 
	 @FormParam("Address") String Address, 
	 @FormParam("ContactNumber") String ContactNumber, 
	 @FormParam("CardName") String CardName, 
	 @FormParam("CreditCardNumber") String CreditCardNumber, 
	 @FormParam("ExpiryDate") String ExpiryDate, 
	 @FormParam("CVV") String CVV) 
	
	{ 
	 String output = payment.insertPayment(Name,Email,Address,ContactNumber,CardName,CreditCardNumber,ExpiryDate,CVV); 
	 return output; 
	}
	
	//updatePayment() method
	
	@PUT
	@Path("/") 
	@Consumes(MediaType.APPLICATION_JSON) 
	@Produces(MediaType.TEXT_PLAIN) 
	public String updatePayment(String paymentData) 
	{ 
	//Convert the input string to a JSON object 
	 JsonObject payObj = new JsonParser().parse(paymentData).getAsJsonObject(); 
	//Read the values from the JSON object
	 String PaymentID = payObj.get("PaymentID").getAsString(); 
	 String Name = payObj.get("Name").getAsString(); 
	 String Email = payObj.get("Email").getAsString(); 
	 String Address = payObj.get("Address").getAsString(); 
	 String ContactNumber = payObj.get("ContactNumber").getAsString(); 
	 String CardName = payObj.get("CardName").getAsString(); 
	 String CreditCardNumber = payObj.get("CreditCardNumber").getAsString(); 
	 String ExpiryDate = payObj.get("ExpiryDate").getAsString();
	 String CVV = payObj.get("CVV").getAsString(); 
	 String output = payment.updatePayment(PaymentID,Name,Email,Address,ContactNumber,CardName,CreditCardNumber,ExpiryDate,CVV); 
	
	 return output; 
	}
	
	// deletePayment() method
	
	@DELETE
	@Path("/") 
	@Consumes(MediaType.APPLICATION_XML) 
	@Produces(MediaType.TEXT_PLAIN) 
	public String deletePayment(String paymentData) 
	{ 
	//Convert the input string to an XML document
	 Document doc = Jsoup.parse(paymentData, "", Parser.xmlParser()); 
	 
	//Read the value from the element <itemID>
	 String PaymentID = doc.select("PaymentID").text(); 
	 String output = payment.deletePayment(PaymentID); 
	
	 return output; 
	}
}