<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>pending</title>
<script src="JavaScript.js"></script>
<link rel="stylesheet" type="text/css" href="Styles.css">

	
		
<style>

	th{
		color:white;
		text-align:center;
		padding:5px;
		background-color:black;
	}
	td{
		border:none;
		text-align:center;
		padding:5px;
	}
	table{
		width:60%;
		background-color:#eee;
		
	
	}


</style>
</head>
<body>


	<div id="mainHeader">
			
			<div  class="logo">
				<a href="Home.html">
				<img src="Images/autopal.png" alt="Lanka Lands Logo">
				</a>
			</div>
			
			<div class="SearchPadding">  
				<form action="" class="searchForm">
				<input class="searchTxt" type="text" name="search" >
				<button type="submit" class="searchBT">Search</button>
				</form>
			</div>
			
			<div  class="Plogo">
				<a href="login.jsp">
				<img src="Images/user.png" alt="User Profile Logo">
				</a>
			</div>
			
		
	</div>
	
		<div id="menu">
			<ul class="menu">
				<li class="menu1"><a href="home.jsp">Home</a></li>
				<li class="menu1"><a href="retrieve.jsp">Services</a></li>
				<li class="menu1"><a href="retrieve.jsp">News</a></li>
				
				
				<li class="menu2"><a href="login.jsp">LogOut</a></li>
				<li class="menu2"><a href="Contact.jsp">Contact</a></li>
				<li class="menu2"><a href="about.jsp">About</a></li>
				
			</ul>
		</div>
		
<br><br>
<center> <h1 class="Ttxtstyle">Pending Requests</h1>
<table border =1>

	<tr>
		<th>Service ID</th>
		<th>Service Type</th>
		<th>Vehicle category</th>
		<th>Vehicle number</th>
		<th>Vehicle model</th>
		<th>ProblemInformation</th>
		<th>Service Date</th>
		<th>Service Time</th>
		<th>Delivery Type</th>
		<th>Address</th>
		<th>Action</th>
		<th>Action</th>

	</tr>

	<c:forEach var="req" items="${reqDetails}">
	
	<c:set var="sid" value="${req.serviceID}"/>
	<c:set var="sname" value="${req.userName }"/>
	<c:set var="stype" value="${req.servicetype}"/>
	<c:set var="vehCat" value="${req.vehicleCat}"/>
	<c:set var="vehNo" value="${req.vehicleNo}"/>
	<c:set var="vehMod" value="${req.vehicleModel}"/>
	<c:set var="issue" value="${req.issue}"/>
	<c:set var="sdate" value="${req.serviceDate}"/>
	<c:set var="stime" value="${req.serviceTime}"/>
	<c:set var="deliverType" value="${req.deliveryType}"/>
	<c:set var="paddress" value="${req.paddress}"/>
	
	<tr>
	
	  <td>${req.serviceID}</td>
	  <!-- <td>${req.userName }</td>-->
	<td>${req.servicetype}</td>
	<td>${req.vehicleCat}</td>
	<td>${req.vehicleNo}</td>
	<td>${req.vehicleModel}</td>
	<td>${req.issue}</td>
	<td>${req.serviceDate}</td>
	<td>${req.serviceTime}</td>
	<td>${req.deliveryType}</td>
	<td>${req.paddress}</td>
	
	<c:url value="updateRequest.jsp" var="requpdate">
		<c:param name="sid" value="${sid}"/>
		<c:param name="sname" value="${sname}"/>
		<c:param name="stype" value="${stype}"/>
		<c:param name="vehCat" value="${vehCat}"/>
		<c:param name="vehNo" value="${vehNo}"/>
		<c:param name="vehMod" value="${vehMod}"/>
		<c:param name="issue" value="${issue}"/>
		<c:param name="sdate" value="${sdate}"/>
		<c:param name="stime" value="${stime}"/>
		<!--<c:param name="deliveryType" value="${deliverType}"/>-->
		<c:param name="paddress" value="${paddress}"/>
	</c:url>
							
	<td><a href="${requpdate}">
		<input type="button" class="Btn8" type="submit" id="updateBtn" name="btn2" value="update" >
		</a></td>
		
		<c:url value="deleterequest.jsp" var="reqdelete">
		<c:param name="sid" value="${sid}"/>
		<c:param name="sname" value="${sname}"/>
		<c:param name="stype" value="${stype}"/>
		<c:param name="vehCat" value="${vehCat}"/>
		<c:param name="vehNo" value="${vehNo}"/>
		<c:param name="vehMod" value="${vehMod}"/>
		<c:param name="issue" value="${issue}"/>
		<c:param name="sdate" value="${sdate}"/>
		<c:param name="stime" value="${stime}"/>
		<c:param name="deliveryType" value="${deliverType}"/>
		<c:param name="paddress" value="${paddress}"/>
	</c:url>
	<td><a href="${reqdelete}">
	<input type="button" class="Btn9" name="delete" value="Delete">
	</a></td>
	
	</tr>
	
	</c:forEach>
	

	
	

	</table>
</center>
	<br><br>
	


	<br><br>


<!-- footer -->	
	<div id="Footer2">
	<div>
		<ul class="style">
					<li class="Txtstyle">Quick Links<li>
					<li class="style"><a href="Home.html">Home</a></li>
					<li class="style"><a href="Payment Plans.html">About Us</a></li>
					<li class="style"><a href="About Us.html">Services</a></li>
					<li class="style"><a href="ContactUs.html">Contact</a></li>
					<li class="style"><a href="Privacy Policy.html">Privacy Policy</a></li>
					<li class="style"><a href="FAQ.jsp">FAQs</a></li>	
				</ul>
	</div>
	<div class="btpadding">
				<ul class="proFBBt">
				<li class="proFBBt">Provide Feedback</li>
				</ul>
	</div>
	<div>
		<ul class="style">
			<li class="Txtstyle2">Contact Details<li>
			<li class="style">Telephone: +94123456789</li>
			<li class="style">Email: autopal@gmail.com</li>
		</ul>	
		
		<div  class="logo">
				<a href="home.jsp">
				<img src="Images/autopal.png" alt="autopal Logo">
				</a>			
			</div>
				
		</div>
	</div>  
	
		<div id="mainFooter">
	
			
			<div class="FtopPadding">
				<p class="DateandTime" id="time"></p>
				<p class="DateandTime" id="Date"></p>
			</div>
			<div class="FtopPadding">
				<p class="copyRSing">Copyright &#169; 2021 - Autopal - All Right Reserved</p>
			</div>	
			<div>
				<ul class="SocialLogos">
					<li class="SocialLogos"><a href="www.Facebook.com"><img src="Images/FBLogo.png" alt="Facebook"></a></li>
					<li class="SocialLogos"><a href="www.instagram.com"><img src="Images/InstaLogo.png" alt="Instagram"></a></li>
					<li class="SocialLogos"><a href="www.Twitter.com"><img src="Images/TwitterLogo.png" alt="Twitter"></a></li>
					<li class="SocialLogos"><a href="www.Google+.com"><img src="Images/G+Logo.png" alt="GooglePlus"></a></li>
				
				</ul>	
			</div>
		
		
		</div>		
	

	<script>
		function clock(){
	
			var h = new Date().getHours();
			var m = new Date().getMinutes();
			var s = new Date().getSeconds();
	
			if(h==0){
				h=12;
			}
			if(h>12){
				h=h-12;
			}
			if(h<10){
				h="0"+h;
			}
			if(m<10){
				m="0"+m;
			}
			if(s<10){
				s="0"+s;
			}
	
			Dtime=document.getElementById('time').innerHTML = h + ":" + m + ":" + s;
	
	
		}
		var interval = setInterval(clock, 1000);
	</script>
	<script>
		var d = new Date().getDate();
		var m = new Date().getMonth() + 1;
		var y = new Date().getFullYear();
		document.getElementById("Date").innerHTML = d + "/" + m + "/" + y;
	</script>

		

	
</body>




</html>