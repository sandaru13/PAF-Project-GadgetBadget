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
	
	public String insertInnv( @FormParam("campTitle") String campTitle, @FormParam("category") String category, 
			@FormParam("projectDetails") String projectDetails,
			@FormParam("manage") String manage,@FormParam("dvReward") float dvReward , @FormParam("minGoal") float minGoal, 
			@FormParam("deadLine") String deadLine)
	{ 
	String output = innvObj.insertInnvProjects(campTitle, category,projectDetails,manage,dvReward,minGoal,deadLine); 
	return output; 
	}
	
	
	//update project details
	
	@PUT
	@Path("/updateInnv") 
	@Consumes(MediaType.APPLICATION_JSON) 
	@Produces(MediaType.TEXT_PLAIN) 
	public String updateInnv(String form1Data) 
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
	 
	 String out = innvObj.updateInnvDet( Title, Category, Description, ManageBy, Share, Amount,Deadline, pId);
	 return out;
	}
	
	//delete project details
	
	@DELETE
	@Path("/deleteInnv") 
	@Consumes(MediaType.APPLICATION_XML) 
	@Produces(MediaType.TEXT_PLAIN) 
	public String deleteInnv(String form1Data) 
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
	 
	 String out = innvObj.verificationTick(symbol,pId);
	 return out;
	}
	
	//innovator financial details section --------
	
	//read financial details
	
	@GET
	@Path("/readInnvFin") 
	@Produces(MediaType.TEXT_HTML) 
	public String readProFin() 
	 { 
		return innvObj.readProFinDet();
	 } 
		
		//insert financial details
	@POST
	@Path("/form2") 
	@Consumes(MediaType.APPLICATION_FORM_URLENCODED) 
	@Produces(MediaType.TEXT_PLAIN)
	
	public String insertFinDetails( @FormParam("nationality") String nationality, @FormParam("getPass") String getPass,  @FormParam("getbank") String getbank ,
			@FormParam("bankNumber") Integer bankNumber,@FormParam("address") String address, @FormParam("contacNumber") Integer contacNumber,
			@FormParam("foreignKey") Integer foreignKey ) 
	{ 
	String output = innvObj.insertFinDet(nationality,getPass, getbank, bankNumber, address, contacNumber,foreignKey); 
	return output; 
	}
	
	//update financial details
	
	@PUT
	@Path("/updateFin") 
	@Consumes(MediaType.APPLICATION_JSON) 
	@Produces(MediaType.TEXT_PLAIN) 
	public String updatFinDet(String form2Data) 
	{ 
		
	//Convert form data  to a JSON object 
		
	 JsonObject innvObj3 = new JsonParser().parse(form2Data).getAsJsonObject(); 
	 
	//Read the values from the JSON object
	 
	 String Nationality = innvObj3.get("Nationality").getAsString(); 
	 String Passport_Id = innvObj3.get("Passport_Id").getAsString(); 
	 String BankName = innvObj3.get("BankName").getAsString();
	 String AccountNo = innvObj3.get("AccountNo").getAsString(); 
	 String Address = innvObj3.get("Address").getAsString();
	 String Contact = innvObj3.get("Contact").getAsString(); 
	 String Id = innvObj3.get("Id").getAsString(); 
	 
	 String out = innvObj.updateInnvFinDet( Nationality, Passport_Id, BankName, AccountNo, Address, Contact,Id);
	 return out;
	}
	
	//delete financial details
	
	@DELETE
	@Path("/deleteInnvFin") 
	@Consumes(MediaType.APPLICATION_XML) 
	@Produces(MediaType.TEXT_PLAIN) 
	public String deleteInnvFin(String form3Data) 
	{ 
	//Convert to XML document
	 Document docum = Jsoup.parse(form3Data, "", Parser.xmlParser()); 
	 
	 String Id = docum.select("Id").text(); 
	 String output = innvObj.deleteInnvFinDet(Id); 
	
	 return output; 
	}
	
}
