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
	
}
