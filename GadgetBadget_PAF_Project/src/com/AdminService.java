package com;

import model.Admin;

//For REST Service
import javax.ws.rs.*; 
import javax.ws.rs.core.MediaType; 

//For JSON
import com.google.gson.*;

//For XML
import org.jsoup.*; 
import org.jsoup.parser.*; 
import org.jsoup.nodes.Document; 

@Path("/Admin")
public class AdminService {
	
	Admin adminObj = new Admin();
	Admin adminObj2 = new Admin();
	Admin adminObj3 = new Admin();
	Admin adminObj4 = new Admin();
	Admin adminObj5 = new Admin();
	Admin adminObj6 = new Admin();
	
	@GET
	@Path("/Ongoing") 
	@Produces(MediaType.TEXT_HTML) 
	public String readOngoingProjects() { 
		return adminObj.readOngoingProjects(); 
	}
	
	@GET
	@Path("/Finished") 
	@Produces(MediaType.TEXT_HTML)
	public String readFinishedProjects() { 
		return adminObj2.readFinishedProjects(); 		
	}

	@GET
	@Path("/Donation") 
	@Produces(MediaType.TEXT_HTML)
	public String readDonation() { 
		return adminObj3.readDonation(); 	
	}
	
	@GET
	@Path("/Purchase") 
	@Produces(MediaType.TEXT_HTML)
	public String readPurchase() { 
		return adminObj4.readPurchase(); 	
	}
	
	@GET
	@Path("/InnovatorAccount") 
	@Produces(MediaType.TEXT_HTML)
	public String readInnovatorAccount() { 
		return adminObj5.readInnovatorAccount(); 	
	}
	
	@GET
	@Path("/BuyerAccount") 
	@Produces(MediaType.TEXT_HTML)
	public String readBuyerAccount() { 
		return adminObj6.readBuyerAccount(); 	
	}
	
	@POST
	@Path("/SignUp")
	@Consumes(MediaType.APPLICATION_FORM_URLENCODED) 
	@Produces(MediaType.TEXT_PLAIN)
	public String insertAccount(@FormParam("type") String type, @FormParam("signFnam") String fname, @FormParam("signLname") String lname, @FormParam("signEmail") String email, @FormParam("signPW") String password) { 
		String output = adminObj.insertAccount(type, fname, lname, email, password); 
		return output; 
	}
	
	@PUT
	@Path("/EditInnovator") 
	@Consumes(MediaType.APPLICATION_JSON) 
	@Produces(MediaType.TEXT_PLAIN) 
	public String updateInnovator(String InnovatorData) { 
	
		//Convert the input string to a JSON object 
		JsonObject adObj = new JsonParser().parse(InnovatorData).getAsJsonObject(); 
	
		//Read the values from the JSON object
		String innId = adObj.get("innId").getAsString(); 
		String fname = adObj.get("fname").getAsString(); 
		String lname = adObj.get("lname").getAsString(); 
		String email = adObj.get("email").getAsString(); 
		String password = adObj.get("password").getAsString(); 
 
		
		String output = adminObj.updateInnovator(innId, fname, lname, email, password); 
	
		return output; 
	}
	
	@PUT
	@Path("/EditBuyer") 
	@Consumes(MediaType.APPLICATION_JSON) 
	@Produces(MediaType.TEXT_PLAIN) 
	public String updateBuyer(String BuyerData) { 
	
		//Convert the input string to a JSON object 
		JsonObject adObj2 = new JsonParser().parse(BuyerData).getAsJsonObject(); 
	
		//Read the values from the JSON object
		String innId = adObj2.get("innId").getAsString(); 
		String fname = adObj2.get("fname").getAsString(); 
		String lname = adObj2.get("lname").getAsString(); 
		String email = adObj2.get("email").getAsString(); 
		String password = adObj2.get("password").getAsString(); 
 
		
		String output = adminObj2.updateBuyer(innId, fname, lname, email, password); 
	
		return output; 
	}
	
	
}
