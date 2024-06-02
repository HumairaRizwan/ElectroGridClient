<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet" type="text/css" href="Styles.css">
<link rel="stylesheet" type="text/css" href="User Profile.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>login</title>

</head>
<body>

<div id="formStyle3">
		<center>

	
      <form action="log" method="post">
     
       <fieldset>
      		<div  class="Plogo1">
					<img src="Images/user.png" alt="User Profile Logo">
			</div><br><br>
				
			<label for="Username">User Name</label><br><br>
			 <input type="text" name="uid" ><br><br>		
			<label for="Username">Password</label><br><br>
			 <input type="password" name="pass"><br><br>
	
			<input type="submit" class="Btn3" name="submit" value="Sign In">
			<a href="register.jsp">
			<button type="button" class="Btn3" name="submit" value="Create New Account">Create New Account</button></a>
			
		</fieldset>
		</form>
	
		
		</center>
		</div>

</body>
</html>