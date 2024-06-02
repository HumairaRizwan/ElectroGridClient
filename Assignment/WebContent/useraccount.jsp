<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="JavaScript.js"></script>

<link rel="stylesheet" type="text/css" href="Styles.css">
<link rel="stylesheet" type="text/css" href="User Profile.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>user profile</title>


		
	
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
				<input class="searchTxt" type="text"  name="search" >
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
		
		<!-- ---------end header------------- -->

	<div id="formStyle4" align="center">	
				
	<form action="#" >
				
 <fieldset>
				<center>
					<div id="profilepic">
						<img src="Images/user.png" alt="User Profile Logo">
						
						
					</div>
				</center>
			
<fieldset>
		         <legend>User Profile</legend><br>
	
	<c:forEach var="cus" items="${cusDetails}">
	
	<c:set var="id" value="${cus.id}"/>
	<c:set var="name" value="${cus.name}"/>
	<c:set var="email" value="${cus.email}"/>
	<c:set var="phone" value="${cus.phone}"/>
	<c:set var="username" value="${cus.userName}"/>
	<c:set var="password" value="${cus.password}"/>
	
	<div class="row" align="left">
		<div style="width:20%" > 
			<label for="id" class="m" >User ID</label>
		</div>
		<div style="width:2%">
			<label>:</label>
		</div>
		<div style="width:28%">
			<label for="id" id="Uid">${cus.id}</label>
		</div>
	</div>

	<div class="row" align="left">
		<div style="width:20%">
			<label for="NIC" class="m">Name</label>
		</div>
		<div style="width:2%">
			<label>:</label>
		</div>
		<div style="width:78%">
			<label for="NIC" id="nic">${cus.name}</label>
		</div>
	</div>

	<div class="row" align="left">
		<div style="width:20%">
			<label for="Address" class="m">Email</label>
		</div>
		<div style="width:2%">
			<label>:</label>
		</div>
		<div style="width:78%">
			<label for="Address" id="address">${cus.email}</label>
		</div>
		</div>

	<div class="row" align="left">
		<div style="width:20%">
			<label for="phone" class="m">Mobile</label>
		</div>
		<div style="width:2%">
			<label>:</label>
		</div>
		<div style="width:78%">
			<label for="phone" id="phone">${cus.phone}</label>
		</div>
	</div>

							

	<div class="row" align="left">
		<div style="width:20%">
			<label for="gender" class="m">Username</label>
		</div>
		<div style="width:2%">
			<label>:</label>
		</div> 
		<div style="width:78%">
			<label for="gender" id="gender">${cus.userName}</label>
		</div>
	</div>
		</c:forEach>
							
		<c:url value="updateCustomer.jsp" var="cusupdate">
		<c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="uname" value="${username}"/>
		<c:param name="pass" value="${password}"/>
	</c:url>
		<a href="${cusupdate}">
		<input type="button" class="Btn2" type="submit" id="updateBtn" name="btn2" disabled value="update profile" >
		</a>
		<!--<button value="Logout" id="logoutBtn" type="submit" class="Btn1" onclick="logout()">Logout</button>-->
				
				
	
	<c:url value="deletecustomer.jsp" var="cusdelete">
		<c:param name="id" value="${id}" />
		<c:param name="name" value="${name}" />
		<c:param name="email" value="${email}" />
		<c:param name="phone" value="${phone}"/>
		<c:param name="uname" value="${username}" />
		<c:param name="pass" value="${password}" />
	</c:url>
	<a href="${cusdelete}">
	<input type="button" class="Btn1" name="delete" value="Delete My Account">
	</a>
							
  </fieldset>
 
 </fieldset>
 
  </form> 
  
  </div> 

    			
				
				

<!------------------------- footer--------------------------------------- -->	
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