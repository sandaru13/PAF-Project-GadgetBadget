package model;

import java.sql.*;


public class Admin {
	
	private Connection connect() { 
		
		Connection con = null; 
		try{ 
			Class.forName("com.mysql.jdbc.Driver"); 
	 
			//Provide the correct details: DBServer/DBName, username, password 
			con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/gadget-badget?serverTimezone=UTC", "root", ""); 
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return con; 
	}
	
	public String readFinishedProjects() { 
		
		String output = ""; 
		
		try { 
			Connection con = connect(); 
			
			if (con == null) {
				return "Error while connecting to the database for reading."; } 
	 
				// Prepare the html table to be displayed
				output = "<table border='1'><tr><th>Id</th><th>Title</th><th>Category</th><th>Description</th><th>Price</th><th>Action</th>"; 
				String query = "select * from finished_projects"; 
				Statement stmt = con.createStatement(); 
				ResultSet rs = stmt.executeQuery(query); 
	 
				// iterate through the rows in the result set
	 
				while (rs.next()) { 
					String pID = Integer.toString(rs.getInt("pId")); 
					String Title = rs.getString("Title"); 
					String Category = rs.getString("Category"); 
					String Description = rs.getString("Description"); 
					String Price = Double.toString(rs.getDouble("Price")); 
					
					
					// Add into the html table
					output += "<tr><td>" + pID + "</td>"; 
					output += "<td>" + Title + "</td>"; 
					output += "<td>" + Category + "</td>"; 
					output += "<td>" + Description + "</td>";
					output += "<td>" + Price + "</td>"; 
					
					// buttons
					output += "<td><form method='post' action='#'>" + "<input name='btnRemove' type='submit' value='Remove' class='btn btn-danger'>" + "<input name='finishedPID' type='hidden' value='" + pID + "'>" + "</form></td></tr>"; 
				} 
	 
				con.close(); 
				// Complete the html table
				output += "</table>"; 
		} catch (Exception e) { 
			output = "Error while reading the items."; 
			System.err.println(e.getMessage()); 
		} 
		return output; 
	}
	
	public String readOngoingProjects() { 
		
		String output = ""; 
		
		try { 
			Connection con = connect(); 
			
			if (con == null) {
				return "Error while connecting to the database for reading."; } 
	 
				// Prepare the html table to be displayed
				output = "<table border='1'><tr><th>Id</th><th>Title</th><th>Category</th><th>Description</th><th>Total Donations</th><th>Created Date</th><th>End Date</th><th>Action</th>"; 
				String query = "select * from ongoing_projects"; 
				Statement stmt = con.createStatement(); 
				ResultSet rs = stmt.executeQuery(query); 
	 
				// iterate through the rows in the result set
	 
				while (rs.next()) { 
					String pID = Integer.toString(rs.getInt("pId")); 
					String Title = rs.getString("Title"); 
					String Category = rs.getString("Category"); 
					String Description = rs.getString("Description"); 
					String TotDonations = Double.toString(rs.getDouble("TotDonations"));
					String CreatedDate = rs.getString("CreatedDate");
					String Deadline = rs.getString("Deadline");
					
					// Add into the html table
					output += "<tr><td>" + pID + "</td>"; 
					output += "<td>" + Title + "</td>"; 
					output += "<td>" + Category + "</td>"; 
					output += "<td>" + Description + "</td>";
					output += "<td>" + TotDonations + "</td>"; 
					output += "<td>" + CreatedDate + "</td>";
					output += "<td>" + Deadline + "</td>";
					
					// buttons
					output += "<td><form method='post' action='#'>" + "<input name='btnRemove' type='submit' value='Remove' class='btn btn-danger'>" + "<input name='ongoingPID' type='hidden' value='" + pID + "'>" + "</form></td></tr>"; 
				} 
	 
				con.close(); 
				// Complete the html table
				output += "</table>"; 
		} catch (Exception e) { 
			output = "Error while reading the items."; 
			System.err.println(e.getMessage()); 
		} 
		return output; 
	}
	
	public String readDonation() { 
		
		String output = ""; 
		
		try { 
			Connection con = connect(); 
			
			if (con == null) {
				return "Error while connecting to the database for reading."; } 
	 
				// Prepare the html table to be displayed
				output = "<table border='1'><tr><th>Id</th><th>Project ID</th><th>Donated Amount</th><th>Donation Date</th><th>Action</th>"; 
				String query = "select * from donation"; 
				Statement stmt = con.createStatement(); 
				ResultSet rs = stmt.executeQuery(query); 
	 
				// iterate through the rows in the result set
	 
				while (rs.next()) { 
					String dID = Integer.toString(rs.getInt("dId"));
					String pID = Integer.toString(rs.getInt("pId")); 
					String DonateAmount = Double.toString(rs.getDouble("DonateAmount"));
					String DonationDate = rs.getString("DonationDate");
					
					// Add into the html table
					output += "<tr><td>" + dID + "</td>"; 
					output += "<td>" + pID + "</td>"; 
					output += "<td>" + DonateAmount + "</td>"; 
					output += "<td>" + DonationDate + "</td>";
					
					// buttons
					output += "<td><form method='post' action='#'>" + "<input name='btnRemove' type='submit' value='Remove' class='btn btn-danger'>" + "<input name='donationID' type='hidden' value='" + dID + "'>" + "</form></td></tr>"; 
				} 
	 
				con.close(); 
				// Complete the html table
				output += "</table>"; 
		} catch (Exception e) { 
			output = "Error while reading the items."; 
			System.err.println(e.getMessage()); 
		} 
		return output; 
	}
	
	public String readPurchase() { 
		
		String output = ""; 
		
		try { 
			Connection con = connect(); 
			
			if (con == null) {
				return "Error while connecting to the database for reading."; } 
	 
				// Prepare the html table to be displayed
				output = "<table border='1'><tr><th>Id</th><th>Project ID</th><th>Buyer Account ID</th><th>Price</th><th>Action</th>"; 
				String query = "select * from purchase"; 
				Statement stmt = con.createStatement(); 
				ResultSet rs = stmt.executeQuery(query); 
	 
				// iterate through the rows in the result set
	 
				while (rs.next()) { 
					String bID = Integer.toString(rs.getInt("bId"));
					String pID = Integer.toString(rs.getInt("pId"));
					String bAccId = Integer.toString(rs.getInt("bAccId"));
					String price = Double.toString(rs.getDouble("Amount"));				
					
					// Add into the html table
					output += "<tr><td>" + bID + "</td>"; 
					output += "<td>" + pID + "</td>"; 
					output += "<td>" + bAccId + "</td>"; 
					output += "<td>" + price + "</td>";
					
					// buttons
					output += "<td><form method='post' action='#'>" + "<input name='btnRemove' type='submit' value='Remove' class='btn btn-danger'>" + "<input name='purchaseID' type='hidden' value='" + bID + "'>" + "</form></td></tr>"; 
				} 
	 
				con.close(); 
				// Complete the html table
				output += "</table>"; 
		} catch (Exception e) { 
			output = "Error while reading the items."; 
			System.err.println(e.getMessage()); 
		} 
		return output; 
	}

	public String readInnovatorAccount() { 
		
		String output = ""; 
		
		try { 
			Connection con = connect(); 
			
			if (con == null) {
				return "Error while connecting to the database for reading."; } 
	 
				// Prepare the html table to be displayed
				output = "<table border='1'><tr><th>Innovator Id</th><th>First Name</th><th>Last Name</th><th>Email</th><th>Password</th><th>Action</th>"; 
				String query = "select * from innovators"; 
				Statement stmt = con.createStatement(); 
				ResultSet rs = stmt.executeQuery(query); 
	 
				// iterate through the rows in the result set
	 
				while (rs.next()) { 
					String innID = Integer.toString(rs.getInt("innId"));
					String fname = rs.getString("fname");
					String lname = rs.getString("lname");
					String email = rs.getString("email");
					String password = rs.getString("password");
					
					// Add into the html table
					output += "<tr><td>" + innID + "</td>"; 
					output += "<td>" + fname + "</td>"; 
					output += "<td>" + lname + "</td>"; 
					output += "<td>" + email + "</td>";
					output += "<td>" + password + "</td>";
					
					// buttons
					output += "<td><form method='post' action='#'>" + "<input name='btnRemove' type='submit' value='Remove' class='btn btn-danger'>" + "<input name='innovatorID' type='hidden' value='" + innID + "'>" + "</form></td></tr>"; 
				} 
	 
				con.close(); 
				// Complete the html table
				output += "</table>"; 
		} catch (Exception e) { 
			output = "Error while reading the items."; 
			System.err.println(e.getMessage()); 
		} 
		return output; 
	}
	
	public String readBuyerAccount() { 
		
		String output = ""; 
		
		try { 
			Connection con = connect(); 
			
			if (con == null) {
				return "Error while connecting to the database for reading."; } 
	 
				// Prepare the html table to be displayed
				output = "<table border='1'><tr><th>Innovator Id</th><th>First Name</th><th>Last Name</th><th>Email</th><th>Password</th><th>Action</th>"; 
				String query = "select * from buyers"; 
				Statement stmt = con.createStatement(); 
				ResultSet rs = stmt.executeQuery(query); 
	 
				// iterate through the rows in the result set
	 
				while (rs.next()) { 
					String buyerID = Integer.toString(rs.getInt("buyerId"));
					String fname = rs.getString("fname");
					String lname = rs.getString("lname");
					String email = rs.getString("email");
					String password = rs.getString("password");
					
					// Add into the html table
					output += "<tr><td>" + buyerID + "</td>"; 
					output += "<td>" + fname + "</td>"; 
					output += "<td>" + lname + "</td>"; 
					output += "<td>" + email + "</td>";
					output += "<td>" + password + "</td>";
					
					// buttons
					output += "<td><form method='post' action='#'>" + "<input name='btnRemove' type='submit' value='Remove' class='btn btn-danger'>" + "<input name='buyerID' type='hidden' value='" + buyerID + "'>" + "</form></td></tr>"; 
				} 
	 
				con.close(); 
				// Complete the html table
				output += "</table>"; 
		} catch (Exception e) { 
			output = "Error while reading the items."; 
			System.err.println(e.getMessage()); 
		} 
		return output; 
	}
	
	public String insertAccount(String type, String fname, String lname, String email, String password) { 
		
		String output = ""; 
		
		try { 
			Connection con = connect(); 
			
			if (con == null) {
				return "Error while connecting to the database for inserting."; } 
				
				// create a prepared statement
				String query;
			
				if (type == "Innovator") {
					 query = " insert into innovators (`innId`,`fname`,`lname`,`email`,`password`)" + " values (?, ?, ?, ?, ?)"; 
					 PreparedStatement preparedStmt = con.prepareStatement(query);
					 
					// binding values
					preparedStmt.setInt(1, 0); 
					preparedStmt.setString(2, fname); 
					preparedStmt.setString(3, lname); 
					preparedStmt.setString(4, email); 
					preparedStmt.setString(5, password); 
					// execute the statement
					preparedStmt.execute(); 
				}
				
				else if(type == "Buyer" ) {
					query = " insert into buyers (`buyerId`,`fname`,`lname`,`email`,`password`)" + " values (?, ?, ?, ?, ?)";
					PreparedStatement preparedStmt = con.prepareStatement(query);
					
					// binding values
					preparedStmt.setInt(1, 1); 
					preparedStmt.setString(2, fname); 
					preparedStmt.setString(3, lname); 
					preparedStmt.setString(4, email); 
					preparedStmt.setString(5, password); 
					// execute the statement
					preparedStmt.execute(); 
				}
				
				con.close(); 
				output = "Inserted successfully"; 
		} catch (Exception e) { 
			output = "Error while inserting the item."; 
			System.err.println(e.getMessage()); 
		}
		return output; 
	}  
}
