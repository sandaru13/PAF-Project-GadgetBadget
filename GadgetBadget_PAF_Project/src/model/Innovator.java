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
	 
	 // Add into the html table
	 output += "<tr><td>" + proID + "</td>"; 
	 output += "<td>" + projTitle + "</td>"; 
	 output += "<td>" +  proCat + "</td>"; 
	 output += "<td>" + proDesc + "</td>"; 
	 output += "<td>" + proManage + "</td>";
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
	public String insertItem(String Title, String Catogery, String Description, String ManageBy,float Amount,Date DeadLine) 
	 { 
	 String output = ""; 
	 try
	 { 
	 Connection con = connect(); 
	 if (con == null) 
	 {return "Error while connecting to the database for inserting."; } 
	 // create a prepared statement
	 String query = " insert into innovator_projects('pId','Title','Category','Description','ManageBy','Amount','SharePrecentage','CreateDate','DeadLine','Verification')"
				+ " values (?, ?, ?, ?, ?)";
	 PreparedStatement preparedStmt = con.prepareStatement(query); 
	 // binding values
	 preparedStmt.setInt(1, 0); 
	 preparedStmt.setString(2, Title); 
	 preparedStmt.setString(3, Catogery); 
	 preparedStmt.setString(4, Description); 
	 preparedStmt.setString(5, ManageBy); 
	 preparedStmt.setFloat(6, Amount);
	 preparedStmt.setFloat(7, 0); 
	 preparedStmt.setDate(8, (java.sql.Date) date); 
	 preparedStmt.setDate(9, (java.sql.Date) DeadLine); 
	 preparedStmt.setBoolean(10, false);
	// execute the statement
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
	
	
}
