package com.request;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class RequestDBUtil {
	

	private static boolean isSuccess;
	private static ResultSet rs = null;
	
	public static boolean insertRequest(String Username,String serviceType,String vehicleCat,String vehicleNo,String vehiclemod,String description, String serviceDate,String serviceTime,String deliveryType,String address) {
		boolean isSuccess = false;
		
		//create database connection
		
				String url = "jdbc:mysql://localhost:3306/autopal";
				String user = "root";
				String pass = "humaira18";
				
				try {
					Class.forName("com.mysql.jdbc.Driver");
					Connection con = DriverManager.getConnection(url,user,pass);
					Statement stmt = con.createStatement();
					
					String sql = "insert into request values (0,'"+Username+"','"+serviceType+"','"+vehicleCat+"','"+vehicleNo+"','"+vehiclemod+"','"+description+"','"+serviceDate+"','"+serviceTime+"','"+deliveryType+"','"+address+"')";
		    		int rs = stmt.executeUpdate(sql);
		    		

		    		if(rs > 0) {
		    			isSuccess = true;
		    		} else {
		    			isSuccess = false;
		    		}
				}
				 catch (Exception e) {
						e.printStackTrace();
					}
				
		return isSuccess;
	}
	
	public static List<Request> getRequestDetails(){
		
		
		
		List<Request> request = new ArrayList<>();
		
		//create database connection
		
		String url = "jdbc:mysql://localhost:3306/autopal";
		String user = "root";
		String pass = "humaira18";
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,user,pass);
			Statement stmt = con.createStatement();
			
			String sql = "select * from request";
			ResultSet rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				
				 	int id= rs.getInt(1);
				    String servicetype= rs.getString(2);
				    String vehicleCat = rs.getString(3);
				    String vehicleNo= rs.getString(4);
				    String vehicleModel= rs.getString(5);
				    String vehicleBrand= rs.getString(6);
					String problem = rs.getString(7);
				    String serviceDate= rs.getString(8);
				    String serviceTime= rs.getString(9);
				    String deliveryType = rs.getString(10);
				    String paddress = rs.getString(11);
				
					
					Request req = new Request(id, servicetype,vehicleCat,vehicleNo,vehicleModel,vehicleBrand, problem,serviceDate,serviceTime,deliveryType, paddress);
					
				request.add(req);
			}
			
		}
		 catch (Exception e) {
				e.printStackTrace();
			}
		
		
		return request;
	}
	
	   
    public static boolean validate(String userName){
		
		//create database connection
		
		String url = "jdbc:mysql://localhost:3306/autopal";
		String user = "root";
		String pass = "humaira18";
		
		//validate
		
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,user,pass);
			
			Statement stmt = con.createStatement();
			
			String sql = "select * from request where userName='"+userName+"'";
			
			rs = stmt.executeQuery(sql);
			if (rs.next()) {
				
			
				isSuccess = true;
			} else {
				isSuccess = false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
		
		
	}
    

	
public static List<Request> getRequest(String userName) {
		
		ArrayList<Request> request = new ArrayList<>();
		
		//create database connection
		
				String url = "jdbc:mysql://localhost:3306/autopal";
				String user = "root";
				String pass = "humaira18";
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,user,pass);
			
			Statement stmt = con.createStatement();
			String sql = "select * from request where userName='"+userName+"'";
			ResultSet rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				int id= rs.getInt(1);
				 String username= rs.getString(2);
			    String servicetype= rs.getString(3);
			    String vehicleCat = rs.getString(4);
			    String vehicleNo= rs.getString(5);
			    String vehicleModel= rs.getString(6);
				String problem = rs.getString(7);
			    String serviceDate= rs.getString(8);
			    String serviceTime= rs.getString(9);
			    String deliveryType = rs.getString(10);
			    String paddress = rs.getString(11);
			    Request req = new Request(id,username, servicetype,vehicleCat,vehicleNo,vehicleModel, problem,serviceDate,serviceTime,deliveryType, paddress);
				
				request.add(req);
			}
			
		} catch (Exception e) {
			
		}
		
		return request;	
	}


	public static boolean updaterequest(String sid,String username, String serviceType, String vehicleCat, String vehicleNo, String vehicleMod, String problem,String sDate,String stime,String deliveryType,String address ) {
	
	
		//create database connection
	
			String url = "jdbc:mysql://localhost:3306/autopal";
			String user = "root";
			String pass = "humaira18";
			
		 	
			
			try {
		
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection(url,user,pass);
				Statement stmt = con.createStatement();
				String sql = "update request set Username='"+username+"',serviceType='"+serviceType+"',vehicleCategory='"+vehicleCat+"',vehicleNo='"+vehicleNo+"',vehicleModel='"+vehicleMod+"',problem='"+problem+"',serviceDate='"+sDate+"',serviceTime='"+stime+"',deliveryType='"+deliveryType+"',address='"+address+"'"
				+ "where requestID='"+sid+"'";
				int rs = stmt.executeUpdate(sql);
		
				if(rs > 0) {
					isSuccess = true;
				}
				else {
					isSuccess = false;
				}
		
			}
			catch(Exception e) {
				e.printStackTrace();
			}
	
				return isSuccess;
	}
	
	  public static List<Request> getRequestDetails(String Id) {
	    	
	    	int convertedID = Integer.parseInt(Id);
	    	
	    	ArrayList<Request> req = new ArrayList<>();
	    	
			//create database connection
			
			String url = "jdbc:mysql://localhost:3306/autopal";
			String user = "root";
			String pass = "humaira18";
	    	
	    	try {
	    		
	    		Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection(url,user,pass);
				Statement stmt = con.createStatement();
	    		String sql = "select * from request where requestID='"+convertedID+"'";
	    		 rs = stmt.executeQuery(sql);
	    		
	    		while(rs.next()) {
	    			int id= rs.getInt(1);
					String username= rs.getString(2);
				    String servicetype= rs.getString(3);
				    String vehicleCat = rs.getString(4);
				    String vehicleNo= rs.getString(5);
				    String vehicleModel= rs.getString(6);
					String problem = rs.getString(7);
				    String serviceDate= rs.getString(8);
				    String serviceTime= rs.getString(9);
				    String deliveryType = rs.getString(10);
				    String paddress = rs.getString(11);
	    			
	    			Request r = new Request(id,username, servicetype,vehicleCat,vehicleNo,vehicleModel, problem,serviceDate,serviceTime,deliveryType, paddress);
	    			req.add(r);
	    		}
	    		
	    	}
	    	catch(Exception e) {
	    		e.printStackTrace();
	    	}	
	    	return req;	
	    }
	  
	   
	    public static boolean deleteRequest(String id) {
	    	

			//create database connection
			
			String url = "jdbc:mysql://localhost:3306/autopal";
			String user = "root";
			String pass = "humaira18";
	    	
	    	int convId = Integer.parseInt(id);
	    	
	    	try {
	    		
	    		Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection(url,user,pass);
				Statement stmt = con.createStatement();
	    		String sql = "delete from request where requestID='"+convId+"'";
	    		int r = stmt.executeUpdate(sql);
	    		
	    		if (r > 0) {
	    			isSuccess = true;
	    		}
	    		else {
	    			isSuccess = false;
	    		}
	    		
	    	}
	    	catch (Exception e) {
	    		e.printStackTrace();
	    	}
	    	
	    	return isSuccess;
	    }
	

}
