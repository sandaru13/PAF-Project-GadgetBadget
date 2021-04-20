package model;

import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Funders {

	private Connection connect() 
	 { 
		Connection con = null; 
			 try
			 { 
				 Class.forName("com.mysql.jdbc.Driver"); 
			 
				 //Provide the correct details: DBServer/DBName, userName, password 
				 con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/paf_db?useTimezone=true&serverTimezone=UTC", "root", "mysql80");
			 } 
			 catch (Exception e) 
			 {
				 e.printStackTrace();
			 } 
		 return con; 
	 } 
	
	
	public String insertDonations(String name, String email, String amount, String cardNo, String cvv, String comments) 
	 { 
		String output = ""; 
		
			try
			{ 
				 Connection con = connect(); 
				 if (con == null) 
				 {
					 return "Error while connecting to the database for inserting."; 
					 } 
				 // create a prepared statement
				 String query = " insert into donation (`innovID`,`name`,`email`,`amount`,`cardNo`,`cvv`,`comments`)" + " values (?, ?, ?, ?, ?, ?)"; 
				 PreparedStatement preparedStmt = con.prepareStatement(query); 
				 // binding values
				 preparedStmt.setInt(1, 0); 
				 preparedStmt.setString(2, name); 
				 preparedStmt.setString(3, email); 
				 preparedStmt.setInt(4, Integer.parseInt(amount)); 
				 preparedStmt.setInt(5, Integer.parseInt(cardNo));
				 preparedStmt.setInt(6, Integer.parseInt(cvv));
				 preparedStmt.setString(7, comments);
			
				 
				 preparedStmt.execute(); 
				 con.close(); 
				 output = "Inserted successfully"; 
			 } 
			 catch (Exception e) 
			 { 
				 output = "Error while inserting the donation."; 
				 System.err.println(e.getMessage()); 
			 } 
		return output; 
	 } 
	
	
	public String readDonations() 
	 { 
		String output = ""; 
			 try
			 { 
				 Connection con = connect(); 
					 if (con == null) 
					 {
					 return "Error while connecting to the database for reading."; 
					 } 
				
					 // Prepare the html table to be displayed
				 output = "<table border='1'><tr>" + 
						 "<th>Name</th>" + 
						 "<th>Email</th>" + 
						 "<th>Donation Amount</th>" +
						 "<th>Card Number</th>" + 
						 "<th>CVV</th>" + 
						 "<th>Comments</th>" + 
						 "<th>Update</th><th>Remove</th></tr>"; 
				 
				 String query = "select * from donation"; 
				 Statement stmt = (Statement)con.createStatement(); 
				 ResultSet rs = ((java.sql.Statement)stmt).executeQuery(query); 
				 // iterate through the rows in the result set
					 
				 while (rs.next()) 
					 { 
					 String innovID = Integer.toString(rs.getInt("innovID")); 
					 String name = rs.getString("name"); 
					 String email = rs.getString("email"); 
					 String amount = Integer.toString(rs.getInt("amount")); 
					 String cardNo = Integer.toString(rs.getInt("cardNo")); 
					 String cvv = Integer.toString(rs.getInt("cvv")); 
					 String comments = rs.getString("comments");
					 
					 // Add into the html table
					 output += "<tr><td>" + name + "</td>"; 
					 output += "<td>" + email + "</td>";
					 output += "<td>" + amount + "</td>"; 
					 output += "<tr><td>" + cardNo + "</td>"; 
					 output += "<tr><td>" + cvv + "</td>";
					 output += "<tr><td>" + comments + "</td>"; 
				
					 // buttons
					 output += "<td><input name='btnUpdate' type='button' value='Update' class='btn btn-secondary'></td>"
							 	+ "<td><form method='post' action='donation.jsp'>"
							    + "<input name='btnRemove' type='submit' value='Remove' class='btn btn-danger'>"
							    + "<input name='itemID' type='hidden' value='" + innovID + "'>" + "</form></td></tr>"; 
					 } 
				 con.close(); 
				 // Complete the html table
				 output += "</table>"; 
				 } 
				 
			 catch (Exception e) 
			 { 
				 output = "Error while reading the donation."; 
				 System.err.println(e.getMessage()); 
				 } 
			 return output; 
	 } 
	
	
	public String updateDonation(String ID, String name, String email, String amount, String cardNo, String cvv, String comments) 
	
	{ 
		 String output = ""; 
				 try
				 { 
					 Connection con = connect(); 
						 if (con == null) 
						 {
							 return "Error while connecting to the database for updating.";
							 
						 } 
						 // create a prepared statement
						 String query = "UPDATE donation SET name=?,email=?,amount=?,cardNo=?,cvv=?,comments=? WHERE innovID=?"; 
						 PreparedStatement preparedStmt = con.prepareStatement(query); 
						 // binding values
						 preparedStmt.setString(1, name); 
						 preparedStmt.setString(2, email);
						 preparedStmt.setString(3, amount); 
						 preparedStmt.setString(4, cardNo);
						 preparedStmt.setString(5, cvv); 
						 preparedStmt.setString(6, comments); 
						 preparedStmt.setInt(7, Integer.parseInt(ID)); 
						
						 // execute the statement
						 preparedStmt.execute(); 
						 con.close(); 
						 output = "Updated successfully"; 
				 } 
				 catch (Exception e) 
				 { 
					 output = "Error while updating the donation."; 
					 System.err.println(e.getMessage()); 
				 } 
			 return output; 
			 } 
		
	
	public String deleteDonation(String innovID) 
		 { 
			String output = ""; 
				 
			try
				 { 
					 Connection con = connect(); 
						 if (con == null) 
						 {
							 return "Error while connecting to the database for deleting."; 
							 
						 } 
						
						 // create a prepared statement
						 String query = "delete from donation where innovID=?"; 
						 PreparedStatement preparedStmt = con.prepareStatement(query); 
						
						 // binding values
						 preparedStmt.setInt(1, Integer.parseInt(innovID)); 
						
						 // execute the statement
						 preparedStmt.execute(); 
						 con.close(); 
						 output = "Deleted successfully"; 
				 } 
		 
			catch (Exception e) 
			 { 
					output = "Error while deleting the donation."; 
					System.err.println(e.getMessage()); 
			 } 
		 return output; 
		 } 
	
}
