package com;

import model.Innovator;

import java.util.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;  

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
	
	//read innovator projects details
	
	@GET
	@Path("/readInnv") 
	@Produces(MediaType.TEXT_HTML) 
	public String readItems() 
	 { 
		return innvObj.readItems();
	 } 
	
	//insert projects details
	
	@POST
	@Path("/form1") 
	@Consumes(MediaType.APPLICATION_FORM_URLENCODED) 
	@Produces(MediaType.TEXT_PLAIN)
	
	public String insertItem( @FormParam("campTitle") String campTitle, @FormParam("category") String category, 
			@FormParam("projectDetails") String projectDetails,
			@FormParam("manage") String manage,@FormParam("dvReward") float dvReward , @FormParam("minGoal") float minGoal, 
			@FormParam("deadLine") String deadLine)
	{ 
	String output = innvObj.insertItem(campTitle, category,projectDetails,manage,dvReward,minGoal,deadLine); 
	return output; 
	}
	
	
	//update project details
	
	@PUT
	@Path("/updateInnv") 
	@Consumes(MediaType.APPLICATION_JSON) 
	@Produces(MediaType.TEXT_PLAIN) 
	public String updatePayment(String form1Data) 
	{ 
		
	//Convert form data  to a JSON object 
		
	 JsonObject innvObj2 = new JsonParser().parse(form1Data).getAsJsonObject(); 
	 
	//Read the values from the JSON object
	 
	 String Title = innvObj2.get("Title").getAsString(); 
	 String Category = innvObj2.get("Category").getAsString(); 
	 String Description = innvObj2.get("Description").getAsString();
	 String ManageBy = innvObj2.get("ManageBy").getAsString(); 
	 String Share = innvObj2.get("SharePercentage").getAsString();
	 String Amount = innvObj2.get("Amount").getAsString(); 
	 String Deadline = innvObj2.get("Deadline").getAsString(); 
	 String pId = innvObj2.get("pId").getAsString(); 
	 
	 String out = innvObj.updatePayment( Title, Category, Description, ManageBy, Share, Amount,Deadline, pId);
	 return out;
	}
	
	//delete project details
	
	@DELETE
	@Path("/deleteInnv") 
	@Consumes(MediaType.APPLICATION_XML) 
	@Produces(MediaType.TEXT_PLAIN) 
	public String deletePayment(String form1Data) 
	{ 
	//Convert to XML document
	 Document docu = Jsoup.parse(form1Data, "", Parser.xmlParser()); 
	 
	 String pId = docu.select("pId").text(); 
	 String output = innvObj.deleteInnv(pId); 
	
	 return output; 
	}
	
	//update Verification symbol. Done by admin 

	@PUT
	@Path("/verifyInnv") 
	@Consumes(MediaType.APPLICATION_JSON) 
	@Produces(MediaType.TEXT_PLAIN) 
	public String veryfyInnovator(String form1Data) 
	{ 
	//Convert form data  to a JSON object 
	 JsonObject innvObj3 = new JsonParser().parse(form1Data).getAsJsonObject(); 
	//Read the values from the JSON object
	 String symbol = innvObj3.get("Verification").getAsString(); 
	 String pId = innvObj3.get("pId").getAsString(); 
	 
	 String out = innvObj.verificationTick(pId,symbol);
	 return out;
	}
	
	//innovator financial details section
	
	@GET
	@Path("/readInnvFin") 
	@Produces(MediaType.TEXT_HTML) 
	public String readItemsFin() 
	 { 
		return innvObj.readItemsFin();
	 } 
		
		//insert financial details
	@POST
	@Path("/form2") 
	@Consumes(MediaType.APPLICATION_FORM_URLENCODED) 
	@Produces(MediaType.TEXT_PLAIN)
	
	public String insertFinDetails( @FormParam("nationality") String nationality, @FormParam("getPass") String passport,  @FormParam("getbank") String bank ,
			@FormParam("bankNumber") Integer accNumber,@FormParam("address") String adddress,@FormParam("contacNumber") Integer contact) 
	{ 
	String output = innvObj.insertFinDet(nationality,passport, bank, accNumber, adddress, contact); 
	return output; 
	}
	
}
