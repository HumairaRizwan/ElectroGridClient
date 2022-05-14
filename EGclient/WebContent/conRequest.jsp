<%@page import="model.conRequest"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.6.0.min.js"></script>
<script src="Components/conRequest.js"></script>
<style>
	.des1{
	  border-radius: 5px;
	  background-color: green;
	  padding: 10px;
	  color: white;
	}
	.des2 {
	  border-radius: 5px;
	  background-color: #f2f2f2;
	  padding: 20px;
	}
	h3 {
	color: green;
	
	}
</style>

</head>
<body>

	<div class="container"><div class="row"><div class="col-6">
	
		<div class="des1"><h2>Connection Management </h2></div><hr><br>
	
		<form id="formItem" name="formItem">
			<h3>Connection Request Form</h3><br>
			<div class="des2">
		 		 Customer Name:
		 		<input id="customerName" name="customerName" type="text" class="form-control form-control-sm">
		 		<br> 
		 		Connection Type:
				<input id="connectionType" name="connectionType" type="text" class="form-control form-control-sm">
		 		<br> 
		 		Request Load:
		 		<input id="requestLoad" name="requestLoad" type="text" class="form-control form-control-sm">
		 		<br> 
		 		Contract Demand:
				<input id="contractDemand" name="contractDemand" type="text" class="form-control form-control-sm">
		 		<br>
		 		Address:
				<input id="address" name="address" type="text" class="form-control form-control-sm">
		 		<br>
		 		Email:
				<input id="email" name="email" type="text" class="form-control form-control-sm">
		 		<br>
		 		
		 		<input id="btnSave" name="btnSave" type="button" value="Save" class="btn btn-primary">
		 		<input type="hidden" id="hidItemIDSave" name="hidItemIDSave" value="">
	 		</div>
		</form>
		
		<div id="alertSuccess" class="alert alert-success"></div>
		<div id="alertError" class="alert alert-danger"></div>
	
		<br>
		<hr>
		<h3>Connection Requests Report</h3><br>
		
		<div id="divItemsGrid">
	 		<%
	 			conRequest conRequestObj = new conRequest();
	 			out.print(conRequestObj.readConnections());
	 		%>
		</div>
	</div> </div> </div><br>
</body>
</html>