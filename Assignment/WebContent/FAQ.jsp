<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Inquiry</title>
<script src="JavaScript.js"></script>
<link rel="stylesheet" type="text/css" href="Styles.css">

	
	
<style>

#FAQsBody{
	padding:20px 20px;
	width:100%;
	display:flex;
	justify-content:center;
	
	
}

.FAQsForm{
	padding:20px 20px;
	background-color: rgba(255, 255, 255,0.4);
	font-family:Verdana;
	color:black;
	box-shadow:1px 1px 2px black, 0 0 25px black, 0 0 5px black;
	outline: none;
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
		<!-- -------------------end header -->
		
<br><br>
<div id="FAQsBody">

	<div style="width:50%">
		<div class="FAQsForm">
		<h1>FAQs</h1> <br><br>
	 <h3 class="text-center">HOW TO SEND AN INQUIRY</h3>
           
                <p>As with most business emails, strive to be clear, polite, and concise in your job inquiry email. Your future employer should be able to understand the purpose of the email in the subject line and in the first sentence. Make it clear who you are and which position you're applying for.</p><br>
            
                <br>
             <h3 class="text-center">IF MY DATA IS SECURE</h3>
            
                <p>As with most business emails, strive to be clear, polite, and concise in your job inquiry email. Your future employer should be able to understand the purpose of the email in the subject line and in the first sentence. Make it clear who you are and which position you're applying for.</p><br>
                
            <br>
			
            <h3 class="text-center">WHAT HAPPENED TO GOOGLE+?</h3>
            
                <p>In December 2018, we announced our decision to shut down Google+ for consumers in April 2019. Other Google products (such as Gmail, Google Photos, Google Drive and YouTube) were not shut down as part of the consumer Google+ shutdown and you can continue using these products. The Google Account that you use to sign in to these services will remain. Please note that photos and videos already backed up in Google Photos will not be deleted.</p><br>
                <br>
                   </div>
        </div>

	<div style="width:45%">
		
		
		

		<h2>  </h2>

		<div class="fiex">
			<div id="formStyle1">
				<form>
				<fieldset>
				<legend>Inquiry</legend>
					<label for="name">Name</label>
					<input type="text" id="name" >

					<label for="Telephone">Telephone</label>
					<input type="text" id="Telephone" >

					<label for="email">email</label>
					<input type="text" id="email" >		

					<label for="Subject">Subject</label>
					<input type="text" id="Subject" >

					<label for="Message">Message</label>
					<input type="text" id="Message" >
					
					<button class="Btn1" onclick="round()">Submit</button>
				</fieldset>
				</form>
			</div>
		</div>
	</div>
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