<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<script src="JavaScript.js"></script>
<script src="register.js"></script>
<link rel="stylesheet" type="text/css" href="Styles.css">
<link rel="stylesheet" type="text/css" href="register.css">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Service</title>
	<div>
	<header id="mainHeader">
			
			<div  class="logo">
				<a href="Home.html">
				<img src="Images/autopal.png" alt="Lanka Lands Logo">
				</a>
			</div>
			
			<div class="SearchPadding">  
				<form action="" class="searchForm">
				<input class="searchTxt" type="text" placeholder="Search.." name="search" >
				<button type="submit" class="searchBT">Search</button>
				</form>
			</div>
			
			<div  class="Plogo">
				<a href="login.jsp">
				<img src="Images/user.png" alt="User Profile Logo">
				</a>
			</div>
			
		
	</header>
	
		<nav id="menu">
			<ul class="menu">
				<li class="menu1"><a href="home.jsp">Home</a></li>
				<li class="menu1"><a href="retrieve.jsp">Services</a></li>
				<li class="menu1"><a href="retrieve.jsp">News</a></li>
				
				
				<li class="menu2"><a href="login.jsp">LogOut</a></li>
				<li class="menu2"><a href="Contact.jsp">Contact</a></li>
				<li class="menu2"><a href="about.jsp">About</a></li>
				
			</ul>
		</nav>
		</div>
</head>
<body>
<br><br>
<center>  	
<div class="RegisterBody">

	<div id="formStyle1">
		<form action="insert" target="_self" method="post">
		<fieldset>
		
			<legend>Service Request Form</legend><br><br>
			
			<label for="uname">Username</label>
  			<input type="text" id="uname" name="uname" placeholder="enter your username" required>

			<label for="select1" class=" form-control-label">Service Type</label>
			<select name="select1" id="select1" class="form-control">
                 <option value="0">Service Type</option>
                 <option value="1">Full Service</option>
                 <option value="2">Annual Service</option>
                 <option value="3">Breakdown</option>
                  <option value="4">Accident Repair</option>
            </select>

            <label for="select2" class=" form-control-label">Vehicle Category</label>
            <select name="select2" id="selec2t" class="form-control">
                <option value="0">select</option>
                <option value="1">Car</option>
                <option value="2">Van</option>
                <option value="3">Three wheeler</option>
            </select>

            <label for="text-input" >Vehicle Number</label>
            <input type="text" id="text-input" name="text-input" placeholder="Text" class="form-control">

			<label for="model">Vehicle Model</label>
  			<input type="text" id="model" name="model" placeholder="enter your vehicle model" required>
			
  			<!--<label for="vbrand">Vehicle Brand</label>
  			<input type="text" id="vbrand" name="vbrand" placeholder="enter your vehicle brand" required>
			-->
			<label for="Address">Problem Description</label>
			<textarea id="des" name="des" rows="10" columns="50" required></textarea>
			
			<label for="ChooseYourDOB">Service Date</label>
			<input type ="date" name ="day" required>

			<label for="ChooseYour">Service Time </label><br><br><br>
			<input type ="time" name ="time" required>

			<br><br>
			<label for="select3">Delivery Type</label>
 			<select name="select3" id="select3" class="form-control">
                <option value="0">select</option>
                <option value="1">Pickup Service</option>
                <option value="2">Drop Service</option>
            </select> 

            <label for="Address">Pickup Address</label>
			<textarea id="addr" name="addr" rows="10" columns="50" required></textarea>
			 
			<br><br>
			
			 
			<input type="checkbox" id="policy" name="policy" required onclick ="enableButton()"> Accept privacy policy terms 
			<br><br>
			<input class="Btn1" type="submit" id="btn2" name="btn2" disabled value="submit" ><br>
	</fieldset>
		</form>
        </div>
		
</div>
</center> 

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