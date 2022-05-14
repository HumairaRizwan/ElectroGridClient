package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class conRequest {
	
	//A common method to connect to the DB
	private Connection connect()
	{
		 Connection con = null;
		 try
		 {
			 Class.forName("com.mysql.cj.jdbc.Driver");
	
			 //Provide the correct details: DBServer/DBName, username, password
			 con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3307/paf", "root", "");
		 }
		 catch (Exception e)
		 {
			 e.printStackTrace();
		 }
			 return con;
	}
	
	public String readConnections()
	{
		String output = "";
		try
		{
			Connection con = connect();
			if (con == null)
				 return "Error while connecting to the database for reading.";
			 // Prepare the html table to be displayed
			 output = "<table border='1'><tr><th>Customer Name</th>" + "<th>Connection Type</th>" + "<th>Request Load</th>" + "<th>Contract Demand</th>" + "<th>Address</th>" + "<th>Email</th>" + "<th>Update</th><th>Remove</th></tr>";
		
			 String query = "select * from connections";
			 Statement stmt = con.createStatement();
			 ResultSet rs = stmt.executeQuery(query);
			 // iterate through the rows in the result set
			 while (rs.next())
			 {
				 String connectionID = Integer.toString(rs.getInt("connectionID"));
				 String customerName = rs.getString("customerName");
				 String connectionType = rs.getString("connectionType");
				 String requestLoad = rs.getString("requestLoad");
				 String contractDemand = rs.getString("contractDemand");
				 String address = rs.getString("address");
				 String email = rs.getString("email");
				 
				 // Add into the html table
				 output += "<tr><td><input id='hidItemIDUpdate' name='hidItemIDUpdate'type='hidden' value='" + connectionID+ "'>" + customerName + "</td>";
				 output += "<td>" + connectionType + "</td>";
				 output += "<td>" + requestLoad + "</td>";
				 output += "<td>" + contractDemand + "</td>";
				 output += "<td>" + address + "</td>";
				 output += "<td>" + email + "</td>";
				 
				 // buttons
				 output +="<td><input name='btnUpdate'type='button' value='Update'class='btnUpdate btn btn-secondary'data-connectionid='"+ connectionID + "'></td>"
				        + "<td><input name='btnRemove'type='button' value='Remove'class='btnRemove btn btn-danger'data-connectionid='"+ connectionID + "'></td></tr>";
			 }
			 	con.close();
			 	
			 	// Complete the html table
			 	output += "</table>";
	 	}
	 	catch (Exception e)
	 	{
	 		output = "Error while reading the connection.";
	 		System.err.println(e.getMessage());
	 	}
	 	return output;
     }
	
	
	public String insertConnection(String customerName, String connectionType, String requestLoad,String contractDemand, String address, String email)
	{
		String output = "";
		try
		{
			 Connection con = connect();
			 if (con == null)
				 return "Error while connecting to the database for inserting."; 
			 // create a prepared statement
			 String query = "insert into connections(connectionID,customerName,connectionType,requestLoad,contractDemand,address,email)values(?,?,?,?,?,?,?)";
			 PreparedStatement preparedStmt = con.prepareStatement(query);
			 // binding values
			 preparedStmt.setInt(1, 0);
			 preparedStmt.setString(2, customerName);
			 preparedStmt.setString(3, connectionType);
			 preparedStmt.setString(4, requestLoad);
			 preparedStmt.setString(5, contractDemand);
			 preparedStmt.setString(6, address);
			 preparedStmt.setString(7, email);
			 
			 // execute the statement
			 
			 preparedStmt.execute();
			 con.close();
			 String newConnection = readConnections();
			 output = "{\"status\":\"success\", \"data\": \"" +newConnection + "\"}";
		}
		catch (Exception e)
		{
			output = "{\"status\":\"error\", \"data\":\"Error while inserting the connection.\"}";
			 System.err.println(e.getMessage());
		}
		return output;
	}
	
	
	public String updateConnection(String ID, String customerName, String connectionType, String requestLoad,String contractDemand,String address, String email)
	{
		 String output = "";
		 try
		 {
			 Connection con = connect();
			 if (con == null)
				 return "Error while connecting to the database for updating."; 
			 // create a prepared statement
			 String query = "UPDATE connections SET customerName=?,connectionType=?,requestLoad=?,contractDemand=?,address=?,email=? WHERE connectionID=?";
			 PreparedStatement preparedStmt = con.prepareStatement(query);
			 // binding values
			 preparedStmt.setString(1, customerName);
			 preparedStmt.setString(2, connectionType);
			 preparedStmt.setString(3, requestLoad);
			 preparedStmt.setString(4, contractDemand);
			 preparedStmt.setString(5, address);
			 preparedStmt.setString(6, email);
			 preparedStmt.setInt(7, Integer.parseInt(ID));
			 // execute the statement
			 preparedStmt.execute();
			 con.close();
			 String newConnection = readConnections();
			 output = "{\"status\":\"success\", \"data\": \"" +
			 newConnection + "\"}";
		 }
		 catch (Exception e)
		 {
			 output = "{\"status\":\"error\", \"data\": \"Error while updating the connection.\"}";
			 System.err.println(e.getMessage());
		 }
		 return output;
	}
	
	public String deleteConnection(String connectionID)
	{
		 String output = "";
		 try
		 {
			 Connection con = connect();
			 if (con == null)
			 {return "Error while connecting to the database for deleting."; }
			 
			 // create a prepared statement
			 String query = "delete from connections where connectionID=?";
			 PreparedStatement preparedStmt = con.prepareStatement(query);
			 
			 // binding values
			 preparedStmt.setInt(1, Integer.parseInt(connectionID));
			 
			 // execute the statement
			 preparedStmt.execute();
			 con.close();
			 String newConnection = readConnections();
			 output = "{\"status\":\"success\", \"data\": \"" 
			 +newConnection + "\"}";
		 }
		 catch (Exception e)
		 {
			 output = "{\"status\":\"error\", \"data\": \"Error while deleting the connection.\"}";
			 System.err.println(e.getMessage());
		 }
		 return output;
	}
		


}
