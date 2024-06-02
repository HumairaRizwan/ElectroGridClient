<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HOME</title>
<script src="JavaScript.js"></script>
<script src="home.js"></script>
<link rel="stylesheet" type="text/css" href="Styles.css">

<link rel="stylesheet" type="text/css" href="home.css">


	
		
<style>

	#menu3 {
		 margin-top: 94px;
	 	width: 40%;
	


	}

	ul.menu3 {
  		list-style-type: none;
  		margin: 30px;
  		padding: 10px 0px 100px 0px;
  		overflow: hidden;
  		background-color: #333;
  		border:2px solid white;
	}


	#menu3 li a   {
		/* When you have li and a together this will work*/
  		display: block;
  		color: white;
  		text-align: center;
  		padding: 14px 16px;
  		text-decoration: none;
	}

	/* Change the link color to white on hover 
	When you move the curser to a menu item it will highlighted with pink*/
	#menu3  li a:hover {
  		background-color: #cece00;
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


	<div>
		<div class="slideshow-container">
			<div id="SSimg">
				<div class="mySlides fade">
					<img src="Images/car9.jpg">
				</div>

				<div class="mySlides fade">
	  				<img src="Images/car1.jpg">
				</div>

				<div class="mySlides fade">
	 			 	<img src="Images/car7.jpg">
				</div>
	
				<div class="mySlides fade">
	  				<img src="Images/car4.jpg">  
				</div>
	
				<div class="mySlides fade">
	 				 <img src="Images/car6.jpg">
				</div>
	
				<div class="mySlides fade">
	  				<img src="Images/car8.jpg">
				</div>
			</div>
		</div>
	</div>
	<br>
	
	<div style="text-align:center">
	  <span class="dot"></span> 
	  <span class="dot"></span> 
	  <span class="dot"></span>
	  <span class="dot"></span>
	  <span class="dot"></span>
	  <span class="dot"></span>
	</div>
	

	<center>
	<div id="menu3">
		<fieldset>
			<ul class="menu3">
				<li class="menu4"><a href="register.jsp">Register</a></li>
				<li class="menu4"><a href="Service.jsp">Service Request Form</a></li>
				<li class="menu4"><a href="reqhis.jsp">Pending Requests</a></li>
				<li class="menu4"><a href="retrieve.jsp">Service requests</a></li>
				<li class="menu4"><a href="Payment Plans.html">Payment plans</a></li>
		
				<li class="menu4"><a href="ContactUs.html">Contact</a></li>
				<li class="menu4"><a href="About Us.html">About us</a></li>
				<li class="menu4"><a href="FAQ.jsp">Inquiry</a></li>
				<li class="menu4"><a href="careers.jsp">Careers</a></li>
				<li class="menu4"><a href="login.jsp">LogOut</a></li>
			</ul>
			</fieldset>
		</div>
	</center>

  
	<h2 class="Htxt">Recent</h2>
	
	<div id="Lccard">
	
	<div class ="Lcard">
		<div class= "Lcard-image"></div>
			<div class="Lcard-text">
				<h4>Manage Payslips</h4>
				<p>Purchase a land for your dream home from urban and sub urban areas of Colombo District. Lands starting from 85,000 LKR onwards. We have a detailed land database containing over hundreds of land blocks spread over 60 locations in Colombo District for you to choose from.</p>
				<button href="Land.html">Show more</button>
			</div>

	</div>
	<div class ="Lcard">
		<div class= "Lcard-image1"></div>
		<div class="Lcard-text">
				<h4>Manage Payslips</h4>
				<p>Purchase a land for your dream home from urban and sub urban areas of Colombo District. Lands starting from 85,000 LKR onwards. We have a detailed land database containing over hundreds of land blocks spread over 60 locations in Colombo District for you to choose from.</p>
				<button href="Land.html">Show more</button>
			</div>		
	</div>
	<div class ="Lcard">
		<div class= "Lcard-image2"></div>
		<div class="Lcard-text">
				<h4>Manage Payslips</h4>
				<p>Purchase a land for your dream home from urban and sub urban areas of Colombo District. Lands starting from 85,000 LKR onwards. We have a detailed land database containing over hundreds of land blocks spread over 60 locations in Colombo District for you to choose from.</p>
				<button href="Land.html">Show more</button>
			</div>
			
	</div>
	
	</div>
	


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

	<script>
		var slideIndex = 0;
		showSlides();
	</script>

</html>