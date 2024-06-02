package com.request;

public class Request {
	
	private int serviceID;
	private String  userName;
    private String servicetype;
    private String vehicleCat;
    private String vehicleNo;
    private String vehicleModel;
	private String issue;
    private String serviceDate;
    private String serviceTime;
    private String deliveryType;
    private String paddress;
    
    

	
	

	public Request(int serviceID, String userName, String servicetype, String vehicleCat, String vehicleNo,
			String vehicleModel, String issue, String serviceDate, String serviceTime, String deliveryType,
			String paddress) {
		super();
		this.serviceID = serviceID;
		this.userName = userName;
		this.servicetype = servicetype;
		this.vehicleCat = vehicleCat;
		this.vehicleNo = vehicleNo;
		this.vehicleModel = vehicleModel;
		this.issue = issue;
		this.serviceDate = serviceDate;
		this.serviceTime = serviceTime;
		this.deliveryType = deliveryType;
		this.paddress = paddress;
	}






	public int getServiceID() {
		return serviceID;
	}






	public String getUserName() {
		return userName;
	}






	public String getServicetype() {
		return servicetype;
	}






	public String getVehicleCat() {
		return vehicleCat;
	}






	public String getVehicleNo() {
		return vehicleNo;
	}






	public String getVehicleModel() {
		return vehicleModel;
	}






	public String getIssue() {
		return issue;
	}






	public String getServiceDate() {
		return serviceDate;
	}






	public String getServiceTime() {
		return serviceTime;
	}






	public String getDeliveryType() {
		return deliveryType;
	}






	public String getPaddress() {
		return paddress;
	}
	
	
	
    
    

}
