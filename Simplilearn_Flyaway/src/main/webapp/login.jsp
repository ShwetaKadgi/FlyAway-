<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login page for administrator</title>
<style>
	body { background-image: url('Fly.jpg');
	   	   background-position: center;
	   	   background-repeat: no-repeat;}
</style>
</head>
<body>
	<a href="index.jsp"><h3><font face="Verdana">Go to Homepage</font></h3></a>
	<form action="validate.jsp" method="post">
		<font size="10" face="Verdana"><b>Admin Login</b></font><br><br>
		<font face="Verdana"><b>Username:</b></font>
		<input type="text" name="username"></br></br>
		<font face="Verdana"><b>Password:</b></font>
		<input type="password" name="password"></br></br> 
		<input type="submit" value="Login">
	</form>
</body>
</html>