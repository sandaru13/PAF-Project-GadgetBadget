package model;

import java.sql.*;

public class Funders {

	private Connection connect() 
	 { 
		Connection con = null; 
			 try
			 { 
				 Class.forName("com.mysql.jdbc.Driver"); 
			 
				 //Provide the correct details: DBServer/DBName, username, password 
				 con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/test", "root", ""); 
			 } 
			 catch (Exception e) 
			 {
				 e.printStackTrace();
			 } 
		 return con; 
	 } 
	
	
	public String insertDonation(String name, String email, String phone, String streetAddress, String city, String amount) 
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
				 String query = " insert into donation (`itemID`,`name`,`email`,`phone`,`streetAddress`, 'city', 'amount')" + " values (?, ?, ?, ?, ?, ?)"; 
				 PreparedStatement preparedStmt = con.prepareStatement(query); 
				 // binding values
				 preparedStmt.setInt(1, 0); 
				 preparedStmt.setString(2, name); 
				 preparedStmt.setString(3, email); 
				 preparedStmt.setString(4, phone);
				 preparedStmt.setString(5, streetAddress);
				 preparedStmt.setString(6, city);
				 preparedStmt.setDouble(7, Double.parseDouble(amount)); 
			
				 
				 preparedStmt.execute(); 
				 con.close(); 
				 output = "Inserted successfully"; 
			 } 
			 catch (Exception e) 
			 { 
				 output = "Error while inserting the item."; 
				 System.err.println(e.getMessage()); 
			 } 
		return output; 
	 } 
	public String readItems() 
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
						 "<th>Name</th><th>Email</th>" +
						 "<th>Phone Number</th>" + 
						 "<th>Street Address</th>" +
						 "<th>City</th>" +
						 "<th>Donation Amount</th>" +
						 "<th>Update</th><th>Remove</th></tr>"; 
				 
				 String query = "select * from donation"; 
				 Statement stmt = con.createStatement(); 
				 ResultSet rs = stmt.executeQuery(query); 
				 // iterate through the rows in the result set
					 
				 while (rs.next()) 
					 { 
					 String itemID = Integer.toString(rs.getInt("itemID")); 
					 String name = rs.getString("name"); 
					 String email = rs.getString("email"); 
					 String phone = rs.getString("phone"); 
					 String streetAddress = rs.getString("streetAddress"); 
					 String city = rs.getString("city"); 
					 String amount = Double.toString(rs.getDouble("amount")); 
					 
					 // Add into the html table
					 output += "<tr><td>" + name + "</td>"; 
					 output += "<td>" + email + "</td>";
					 output += "<td>" + phone + "</td>";
					 output += "<td>" + streetAddress + "</td>"; 
					 output += "<td>" + city + "</td>"; 
					 output += "<td>" + amount + "</td>"; 
				
					 // buttons
					 output += "<td><input name='btnUpdate' type='button' value='Update' class='btn btn-secondary'></td>"
							 	+ "<td><form method='post' action='items.jsp'>"
							    + "<input name='btnRemove' type='submit' value='Remove' class='btn btn-danger'>"
							    + "<input name='itemID' type='hidden' value='" + itemID + "'>" + "</form></td></tr>"; 
					 } 
				 con.close(); 
				 // Complete the html table
				 output += "</table>"; 
				 } 
				 
			 catch (Exception e) 
			 { 
				 output = "Error while reading the items."; 
				 System.err.println(e.getMessage()); 
				 } 
			 return output; 
	 } 
	
}
