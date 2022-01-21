<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Change password</title>

<style>

body { background-image: url('Fly.jpg');
	   background-repeat: no-repeat;
	   float: right;}


</style>

</head>
<body>
<a href="index.jsp"><h3><font face="Verdana">Go to Homepage</font></h3></a>
<form action="changepassword.jsp" method="post">
<font face="Verdana"><b>Enter existing password</b></font> 
<input type="password" name="existing password"></br></br><br><br>
<font face="Verdana"><b>Enter new password</b></font> 
<input type="password" name="new password"></br></br><br><br>
<font face="Verdana"><b>Confirm password</b></font> 
<input type="password" name="confirm password"></br></br><br><br>
<input type="submit" value="change">
</form>
</body>
</html>