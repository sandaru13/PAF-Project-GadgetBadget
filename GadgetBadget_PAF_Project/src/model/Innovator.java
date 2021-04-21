package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Date;


public class Innovator {
	
	Date date = new Date();
	
	private Connection connect() 
	 { 
	 Connection con = null; 
	 try
	 { 
	 Class.forName("com.mysql.jdbc.Driver"); 
	 
	 //Provide the correct details: DBServer/DBName, username, password 
	 con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/gadget_badget?serverTimezone=UTC", "root", ""); 
	 } 
	 catch (Exception e) 
	 {e.printStackTrace();} 
	 return con; 
	 } 
	
	public String readItems() 
	 {
		
	 String output = ""; 
	 
	 try
	 { 
	 Connection con = connect(); 
	 if (con == null) 
	 {
		 return "Error while connecting to the database for reading."; } 
	 
	 // Prepare the html table to be displayed
	 
	 output = "<table border='1'><tr><th>pId</th><th>Title</th>" +
	 "<th>Category</th>" + 
	 "<th>Description</th>" +
	 "<th>Managed By</th>" +
	 "<th>Remove</th></tr>"; 
	 
	 String query = "select * from innovator_projects"; 
	 Statement stmt = con.createStatement(); 
	 ResultSet rs = stmt.executeQuery(query); 
	 
	 // iterate through the rows in the result set
	 
	 while (rs.next()) { 
	 String proID = Integer.toString(rs.getInt("pId")); 
	 String projTitle = rs.getString("Title"); 
	 String proCat = rs.getString("Category"); 
	 String proDesc = rs.getString("Description"); 
	 String proManage = rs.getString("ManageBy"); 
	 Float proAmount = rs.getFloat("Amount"); 
	 Float share = rs.getFloat("SharePercentage"); //default is 0
	 Date creDate = rs.getDate("CreateDate");//current date
	 Date deadLine = rs.getDate("DeadLine");
	 Boolean verification  = rs.getBoolean("Verification");//default is FALSE
	 
	 // Add into the html table
	 output += "<tr><td>" + proID + "</td>"; 
	 output += "<td>" + projTitle + "</td>"; 
	 output += "<td>" +  proCat + "</td>"; 
	 output += "<td>" + proDesc + "</td>"; 
	 output += "<td>" + proManage + "</td>";
	 output += "<td>" + proAmount + "</td>"; 
	 output += "<td>" +  share + "</td>"; 
	 output += "<td>" + creDate + "</td>"; 
	 output += "<td>" + deadLine + "</td>";
	 output += "<td>" + verification + "</td>";
	 
	 // buttons
		output += "<td><form method='post' action='#'>"
				+ "<input name='btnRemove' "
				+ " type='submit' value='Remove'>"
				+ "<input name='itemID' type='hidden' "
				+ " value='" + proID + "'>" + "</form></td></tr>";
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
	
	//insert items
	public String insertItem(String Title, String Catogery, String Description, String ManageBy,float share,float Amount,Date DeadLine) 
	 { 
	 String output = ""; 
	 try
	 { 
	 Connection con = connect(); 
	 if (con == null) 
	 {return "Error while connecting to the database for inserting."; } 
	 // create a prepared statement
	 String query = " insert into innovator_projects('pId','Title','Category','Description','ManageBy','Amount','SharePrecentage','CreateDate','DeadLine','Verification')"
				+ " values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
	 PreparedStatement preparedStmt = con.prepareStatement(query); 
	 // binding values
	 preparedStmt.setInt(1, 0); 
	 preparedStmt.setString(2, Title); 
	 preparedStmt.setString(3, Catogery); 
	 preparedStmt.setString(4, Description); 
	 preparedStmt.setString(5, ManageBy); 
	 preparedStmt.setFloat(6, Amount);
	 preparedStmt.setFloat(7, share); 
	 preparedStmt.setDate(8, (java.sql.Date) date); 
	 preparedStmt.setDate(9, (java.sql.Date) DeadLine); 
	 preparedStmt.setBoolean(10, false);
	// execute the statement
	 preparedStmt.execute(); 
	 con.close(); 
	 output = "Inserted innovator details successfully"; 
	 } 
	 catch (Exception e) 
	 { 
	 output = "Error while inserting the innovator details"; 
	 System.err.println(e.getMessage()); 
	 } 
	 return output; 
	 } 
	
	
	//update method
	
	public String updatePayment(String Title, String Catogery, String Description, String ManageBy,String share,String Amount,Date DeadLine,String pId)
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
		 String query = "UPDATE innovator_projects SET Title=?,Catogery=?,Description=?,ManageBy=?,SharePrecentage=?, Amount=?,DeadLine=? WHERE pId=? ";
			
		 PreparedStatement preparedStmt = con.prepareStatement(query);
		 
		 // binding values
		 preparedStmt.setString(1, Title); 
		 preparedStmt.setString(2, Catogery); 
		 preparedStmt.setString(3, Description); 
		 preparedStmt.setString(4, ManageBy); 
		 preparedStmt.setFloat(5, Float.parseFloat(share)); 
		 preparedStmt.setFloat(6, Float.parseFloat(Amount)); 
		 preparedStmt.setDate(7, (java.sql.Date) DeadLine); 
		 preparedStmt.setInt(8, Integer.parseInt(pId)); 
	
		 
		 // execute the statement
		    preparedStmt.execute(); 
		    con.close(); 
		    output = "Innovator Details Updated successfully"; 
		 } 
		 
		 catch (Exception e) 
		 { 
		     output = "Error while updating the innovator details."; 
		     System.err.println(e.getMessage()); 
		 } 
		 
		 return output; 
		 }

	
		//delete method
		public String deletePayment(String PaymentID) {
			String output = "";
	
			try {
				Connection con = connect();
	
				if (con == null) {
					return "Error while connecting to the database for deleting.";
				}
	
				// create a prepared statement
				String query = "delete from innovator_projects where pId=?";
				PreparedStatement preparedStmt = con.prepareStatement(query);
	
				// binding values
				preparedStmt.setInt(1, Integer.parseInt(PaymentID));
	
				// execute the statement
				preparedStmt.execute();
				con.close();
	
				output = "Innovator details Deleted successfully";
	
			} catch (Exception e) {
				output = "Error while deleting the innovator details.";
				System.err.println(e.getMessage());
			}
	
			return output;
		}
		
		//Verification update method, done by admin //to verify change symbol to 0->1
		public String verificationTick(String pId, String symbol) {	
			
				 String output = ""; 
				 try
				 { 
				 Connection con = connect(); 
				 if (con == null) 
				 {
					 return "Error while connecting to the database for updating."; 
					 
				 } 
				 // create a prepared statement
				 String query = "UPDATE innovator_projects SET Verification=? WHERE pId=? ";
					
				 PreparedStatement preparedStmt = con.prepareStatement(query);
				 
				 // binding values
				 preparedStmt.setBoolean(1,Boolean.parseBoolean(symbol)); 
				 preparedStmt.setInt(2, Integer.parseInt(pId)); 
				 
				 
				 // execute the statement
				    preparedStmt.execute(); 
				    con.close(); 
				    output = "successfully updated verification symbol"; 
				 } 
				 
				 catch (Exception e) 
				 { 
				     output = "Error while updating the verification"; 
				     System.err.println(e.getMessage()); 
				 } 
				 
				 return output; 
				 
		}
		
		
		//Innovator Financial details Section
		
		public String readItemsFin() 
		 {
			
		 String output = ""; 
		 
		 try
		 { 
		 Connection con = connect(); 
		 if (con == null) 
		 {
			 return "Error while connecting to the database for reading."; } 
		 
		 // Prepare the html table to be displayed
		 
		 output = "<table border='1'><tr><th>pId</th><th>Id</th>" +
		 "<th>Nationality</th>" + 
		 "<th>Passport_Id</th>" +
		 "<th>BankName</th>" +
		 "<th>AccountNo</th>" +
		 "<th>Address</th>" +
		 "<th>Contact</th></tr>"; 
		 
		 String query = "select * from projects_verification"; 
		 Statement stmt = con.createStatement(); 
		 ResultSet rs = stmt.executeQuery(query); 
		 
		 // iterate through the rows in the result set
		 
		 while (rs.next()) { 
		 String iD = Integer.toString(rs.getInt("Id")); 
		 String nationality = rs.getString("Nationality"); 
		 String pass = rs.getString("Passport_Id"); 
		 String bankName = rs.getString("BankName"); 
		 Integer account = rs.getInt("AccountNo"); 
		 String address = rs.getString("Address"); 
		 Integer contact = rs.getInt("Contact"); 
		 
		 // Add into the html table
		 output += "<tr><td>" + iD + "</td>"; 
		 output += "<td>" + nationality + "</td>"; 
		 output += "<td>" +  pass + "</td>"; 
		 output += "<td>" + bankName + "</td>"; 
		 output += "<td>" + account + "</td>";
		 output += "<td>" + address + "</td>"; 
		 output += "<td>" + contact + "</td>";
		 
		 // buttons
			output += "<td><form method='post' action='#'>"
					+ "<input name='btnRemove' "
					+ " type='submit' value='Remove'>"
					+ "<input name='itemID' type='hidden' "
					+ " value='" + iD + "'>" + "</form></td></tr>";
		 } 
		 con.close(); 
		 // Complete the html table
		 output += "</table>"; 
		 } 
		 catch (Exception e) 
		 { 
		 output = "Error while reading Financial details of innovators."; 
		 System.err.println(e.getMessage()); 
		 } 
		 return output; 
		 } 
		
		
		 //Innovator financial details insert function
		
		public String insertFinDet(String nationality, String passport, String bank, Integer accNumber,String address, Integer contact) {
			
			 String output = ""; 
			 try
			 { 
			 Connection con = connect(); 
			 if (con == null) 
			 {return "Error while connecting to the database for inserting."; } 
			 // create a prepared statement
			 String query = " insert into projects_verification('Id','Nationality','Passport_Id','BankName','AccountNo','Address','Contact')"
						+ " values (?, ?, ?, ?, ?, ?, ?)";
			 PreparedStatement preparedStmt = con.prepareStatement(query); 
			 // binding values
			 preparedStmt.setInt(1, 0); 
			 preparedStmt.setString(2, nationality); 
			 preparedStmt.setString(3, passport); 
			 preparedStmt.setString(4,  bank); 
			 preparedStmt.setInt(5, accNumber); 
			 preparedStmt.setString(6, address);
			 preparedStmt.setInt(5, contact); 
			// execute the statement
			 preparedStmt.execute(); 
			 con.close(); 
			 output = "Inserted innovator financial details successfully"; 
			 } 
			 catch (Exception e) 
			 { 
			 output = "Error while inserting the innovator financial details"; 
			 System.err.println(e.getMessage()); 
			 } 
			 return output; 
			
		}
	
}
