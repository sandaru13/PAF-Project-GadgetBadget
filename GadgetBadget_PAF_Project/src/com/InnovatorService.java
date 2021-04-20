package com;

import model.Innovator;

import java.util.Date;

//For REST Service
import javax.ws.rs.*; 
import javax.ws.rs.core.MediaType;

//For JSON
import com.google.gson.*;

//For XML
import org.jsoup.*; 
import org.jsoup.parser.*; 
import org.jsoup.nodes.Document;

@Path("/Innovator") 
public class InnovatorService {
	
	Innovator innvObj = new Innovator(); 
	
	@GET
	@Path("/") 
	@Produces(MediaType.TEXT_HTML) 
	public String readItems() 
	 { 
		return innvObj.readItems();
	 } 
	
	@POST
	@Path("/form1") 
	@Consumes(MediaType.APPLICATION_FORM_URLENCODED) 
	@Produces(MediaType.TEXT_PLAIN)
	
	public String insertItem( @FormParam("campTitle") String Title, @FormParam("category") String Category,  @FormParam("projectDetails") String Description ,
			@FormParam("manage") String ManageBy,  @FormParam("minGoal") float Amount, @FormParam("deadline") Date DeadLine) 
	{ 
	 String output = innvObj.insertItem(Title, Category,Description,ManageBy,Amount,DeadLine); 
	return output; 
	}

	
}
