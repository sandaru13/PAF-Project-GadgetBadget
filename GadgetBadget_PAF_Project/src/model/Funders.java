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
				 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/paf_db", "root", "");
			 } 
			 catch (Exception e) 
			 {
				 e.printStackTrace();
			 } 
		 return con; 
	 } 
	
	
	public String insertDonations(String yourname, String emailAdrs, String damount, String cardNum, String exp, String cvvNo, String yourComment) 
	 { 
		Connection con = connect();
		String output = ""; 
		
			try
			{ 
				 if (con == null) 
				 {
					 return "Error with the connection of the database in inserting!"; 
					 } 
				 // create a prepared statement
				 String query = " insert into donation (`innovID`,`name`,`email`,`amount`,`cardNo`,`expd`, `cvv`,`comments`)" + " values (?, ?, ?, ?, ?, ?, ?,?)"; 
				 PreparedStatement preparedStmt = con.prepareStatement(query); 
				 // binding values
				 preparedStmt.setInt(1, 0); 
				 preparedStmt.setString(2, yourname); 
				 preparedStmt.setString(3, emailAdrs); 
				 preparedStmt.setInt(4, Integer.parseInt(damount)); 
				 preparedStmt.setLong(5, Long.parseLong(cardNum));
				 preparedStmt.setString(6, exp);
				 preparedStmt.setInt(7, Integer.parseInt(cvvNo));
				 preparedStmt.setString(8, yourComment);
			
				 
				 preparedStmt.execute(); 
				 con.close(); 
				 System.out.println(query);
				 output = "Thank You!"
				 		+ " We have successfully received your donation."; 
			 } 
			 catch (Exception e) 
			 { 
				 output = "Error in the data insertion!"; 
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
					 return "Error with the connection of the database in reading!"; 
					 } 
				
					 // Prepare the html table to be displayed
				 output = "<table border='1'><tr><th>Name</th><th>Email</th>"+
						 "<th>Donation Amount</th>"+
						 "<th>Card Number</th>"+
						  "<th>Exp Date on card</th>"+
						  "<th>CVV</th>" +
						 "<th>Comments</th>"+
						  "<th>Update</th><th>Remove</th></tr>"; 
				  
				 
				 String query = "select * from donation"; 
				 Statement stmt = (Statement) con.createStatement(); 
				 ResultSet rs = ((java.sql.Statement) stmt).executeQuery(query); 
				 // iterate through the rows in the result set
					 
				 while (rs.next()) 
					 { 
					 String innovID = Integer.toString(rs.getInt("innovID")); 
					 String name = rs.getString("name"); 
					 String email = rs.getString("email"); 
					 String amount = Integer.toString(rs.getInt("amount")); 
					 String cardNo = Long.toString(rs.getLong("cardNo")); 
					 String expd = rs.getString("expd");
					 String cvv = Integer.toString(rs.getInt("cvv")); 
					 String comments = rs.getString("comments");
					 
					 // Add into the html table
					 output += "<tr><td>" + name + "</td>"; 
					 output += "<td>" + email + "</td>";
					 output += "<td>" + amount + "</td>"; 
					 output += "<td>" + cardNo + "</td>"; 
					 output += "<td>" + expd + "</td>";
					 output += "<td>" + cvv + "</td>";
					 output += "<td>" + comments + "</td>"; 
				
					 // buttons
					 output +="<td><input name='btnUpdate' type='button' value='Update' class='btn btn-secondary'></td>"
							 + "<td><form method='post' action= 'updateDonation.jsp'>"
							 + "<input name='btnRemove' type='submit' value='Delete' class='btn btn-danger'>"
							 + "<input name='innovationID' type='hidden' value='" + innovID + "'>" 
							 + "</form></td></tr>"; 
					 } 
				 con.close(); 
				 // Complete the html table
				 output += "</table>"; 
				 } 
				 
			 catch (Exception e) 
			 { 
				 output = "Error while reading the donation details!"; 
				 System.err.println(e.getMessage()); 
				 } 
			 return output; 
	 } 
	
	
	public String updateDonation(String ID, String yourname, String emailAdrs, String damount, String cardNum, String exp, String cvvNo, String yourComment)
	
	{ 
		 String output = ""; 
				 try
				 { 
					 Connection con = connect(); 
						 if (con == null) 
						 {
							 return "Error with the connection of the database in updating!";
							 
						 } 
						 // create a prepared statement
						 String query = "UPDATE donation SET name=?,email=?,amount=?,cardNo=?,expd=?,cvv=?,comments=? WHERE innovID=?"; 
						 PreparedStatement preparedStmt = con.prepareStatement(query); 
						 // binding values
						 preparedStmt.setString(1, yourname); 
						 preparedStmt.setString(2, emailAdrs);
						 preparedStmt.setInt(3, Integer.parseInt(damount)); 
						 preparedStmt.setLong(4, Long.parseLong(cardNum));
						 preparedStmt.setString(5, exp);
						 preparedStmt.setInt(6, Integer.parseInt(cvvNo)); 
						 preparedStmt.setString(7, yourComment); 
						 preparedStmt.setInt(8, Integer.parseInt(ID)); 
						
						 // execute the statement
						 preparedStmt.execute(); 
						 con.close(); 
						 output = "Successfully updated your donation."; 
				 } 
				 catch (Exception e) 
				 { 
					 output = "Error in the data updation!."; 
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
							 return "Error with the connection of the database in deleting!"; 
							 
						 } 
						
						 // create a prepared statement
						 String query = "delete from donation where innovID=?"; 
						 PreparedStatement preparedStmt = con.prepareStatement(query); 
						
						 // binding values
						 preparedStmt.setInt(1, Integer.parseInt(innovID)); 
						
						 // execute the statement
						 preparedStmt.execute(); 
						 con.close(); 
						 output = "Your donation has been Deleted."; 
				 } 
		 
			catch (Exception e) 
			 { 
					output = "Error while deleting your donation!"; 
					System.err.println(e.getMessage()); 
			 } 
		 return output; 
		 } 


	
}
