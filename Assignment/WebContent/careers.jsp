<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>careers</title>
<script src="JavaScript.js"></script>
<link rel="stylesheet" type="text/css" href="Styles.css">



</head>
<body>


<div>
	<div id="mainHeader">
			
			<div  class="logo">
				<a href="home.jsp">
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
				<li class="menu1"><a href="Service.jsp">Services</a></li>
				<li class="menu1"><a href="retrieve.jsp">News</a></li>
				
				
				<li class="menu2"><a href="login.jsp">LogOut</a></li>
				<li class="menu2"><a href="Contact.jsp">Contact</a></li>
				<li class="menu2"><a href="about.jsp">About</a></li>
				
			</ul>
		</div>
		
	
	</div>
	<!-- --------------------end header -->

<div class="CareersBody">
	<div style="width:70%">
	<div id="formStyle1">
		<form action="#">
			<fieldset>
                <legend>Send Us Your CV</legend><br>
				<div class="col-50">
					<label for="options">Job:</label>
								<select name="District" id="District">
									<option value="" disabled selected>-- Select --</option>
									<option value="Ampara">Agent Manager</option>
								</select>
				
					<label for="Address">Name:</label>
                    <input type="text" name="Address" id="Address" >
					
					<label for="city">Email:</label>
					<input type="text" name="City" id="City" >
                    
					
					<label for="Number of perches">Mobile:</label>
					<input type="text" name="Number of perches" id="Numberofperches" >
					
					<label for="message">Message:</label>
                    <input type ="text" name="message" id="message" >
								
					<label for="Attach Pictures">Attach CV:</label>
					<input type="file" id="Pictures" name="Pictures">
  
                    
				</div>
			
					
					<br><input type="checkbox" id="checkBox1" onclick="enableButton1()"></input>  <i>I confirm that the above information is true.</i>
					
					<button value="submit" id="send" type="submit" class="Btn1" onclick="" >Send</button>
				</fieldset>
		</form>
			
	</div>
	</div>
	<div style="width:30%" >
	<div id="formStyle2">
		<form>
			<fieldset>
                <center><h1 class="style2">CURRENT VACANCIES</h1></center><br><br>
				
				<ul>
				
				<li><h2>Agent Manager</h2></li>
				</ul>

				<img src="Images/Emp.png" style="width:100%;">
			</fieldset>
		</form>
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
</html>