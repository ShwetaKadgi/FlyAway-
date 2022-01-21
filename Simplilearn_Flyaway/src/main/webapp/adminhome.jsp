<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>

body { background-image: url('Fly.jpg');
	   background-position: center;
	   background-repeat: no-repeat;}
</style>

</head>
<body>
		<a href="index.jsp"><h3><font face="Verdana">Go to Homepage</font></h3></a>
		<form action="placeslist.jsp" method="post">
			<h2>
				<input type="submit" value="Places List">
			</h2>
		</form>
		<form action="airlineslist.jsp" method="post">
			<h2>
				<input type="submit" value="Airlines List">
			</h2>
		</form>
		<form action="flightslist.jsp" method="post">
			<h2>
				<input type="submit" value="Flights List">
			</h2>
		</form>
		<form action="ShowUsers.jsp" method="post">
			<h2>
				<input type="submit" value="Show registered users">
			</h2>
		
		
		</form>
		<form action="passdata.jsp" method="post">
			<h2>
				<input type="submit" value="Change Password">
			</h2>
		</form>
</body>
</html>