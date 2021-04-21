package com;

import model.Funders;

//For REST Service
import javax.ws.rs.*; 
import javax.ws.rs.core.MediaType; 

//For JSON
import com.google.gson.*; 

//For XML
import org.jsoup.*; 
import org.jsoup.parser.*; 
import org.jsoup.nodes.Document; 


@Path("/funding")
public class FundingService {

	Funders fundingObj = new Funders(); 
	@GET
	@Path("/") 
	@Produces(MediaType.TEXT_HTML) 
	
	public String readItems() 
	 { 
		return fundingObj.readDonations();
	 }

	@POST
	@Path("/")
	@Consumes(MediaType.APPLICATION_FORM_URLENCODED)
	@Produces(MediaType.TEXT_PLAIN)
	
	public String insertDonations(@FormParam("name") String name, @FormParam("email") String email, @FormParam("amount") String amount, @FormParam("cardNo") String cardNo, @FormParam("cvv") String cvv, @FormParam("comments") String comments)
	{
		String output = fundingObj.insertDonations(name, email, amount, cardNo, cvv, comments);
		return output;
	}

	
	@PUT
	@Path("/")
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.TEXT_PLAIN)
	
	public String updateDonation(String donationData) 
	{
		// Convert the input string to a JSON object
		JsonObject fundObject = new JsonParser().parse(donationData).getAsJsonObject();

		// Read the values from the JSON object
		String innovID = fundObject.get("innovID").getAsString();
		String name = fundObject.get("name").getAsString();
		String email = fundObject.get("email").getAsString();
		String amount = fundObject.get("amount").getAsString();
		String cardNo = fundObject.get("cardNo").getAsString();
		String cvv = fundObject.get("cvv").getAsString();
		String comments = fundObject.get("comments").getAsString();
		String output = fundingObj.updateDonation(innovID, name, email, amount, cardNo, cvv, comments);
		return output;
	}

	
	@DELETE
	@Path("/")
	@Consumes(MediaType.APPLICATION_XML)
	@Produces(MediaType.TEXT_PLAIN)
	public String deleteDonation(String donationData) 
	{
		// Convert the input string to an XML document
		Document doc = Jsoup.parse(donationData, "", Parser.xmlParser());

		// Read the value from the element <innovationID>
		String innovID = doc.select("innovID").text();
		String output = fundingObj.deleteDonation(innovID);
		return output;
	}
	
}
