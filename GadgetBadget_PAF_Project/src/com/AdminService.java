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
}
