<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register as a new user</title>
</head>
<body>
	<a href="index.jsp"><h3><font face="Verdana">Go to Homepage</font></h3></a>
	<form action="UserRegiSuccess.jsp" method="post">
		<font face="Verdana"><b>Firstname:</b></font> 
		<input type="text" name="firstname"></br><br>
		<font face="Verdana"><b>Lastname:</b></font>
		<input type="text" name="lastname"><br><br>
		<font face="Verdana"><b>Email:</b></font>
		<input type="text" name="email"><br><br>
		<font face="Verdana"><b>Password:</b></font>
		<input type="password" name="password"><br><br>
		<input type="submit" value="Register"><br>	
	</form>

</body>
</html>