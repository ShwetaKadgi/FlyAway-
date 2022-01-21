<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="java.sql.DriverManager, java.sql.Connection, java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title><font face="Verdana">Insert title here</font></title>
<style>

body { background-image: url('Fly.jpg');
	   background-position: center;
	   background-repeat: no-repeat;}

</style>
</head>
<body>
	<a href="index.jsp"><h3><font face="Verdana">Go to Homepage</font></h3></a>
	<h1><font face="Verdana">Select Route:</font></h1>
	<form action="showdetails.jsp" method="post">
	<datalist id="source">
		<%
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/flyaway?characterEncoding=utf8";
		String user = "root";
		String pass = "shweta";
		String sql = "select name from places order by name";
		Connection con = DriverManager.getConnection(url, user, pass);
		ResultSet rs = con.createStatement().executeQuery(sql);
		while (rs.next()) {
			String source = rs.getString("name");
		%>
		<option value="<%=source%>" />
		<%
		}
		%>
	</datalist>
	<p>
		<font face="Verdana">Source:</font> <input type="text" name="source" list="source" required/>
	</p>
		<datalist id="destination">
		<%
		Class.forName("com.mysql.jdbc.Driver");
		String url1 = "jdbc:mysql://localhost:3306/flyaway?characterEncoding=utf8";
		String user1 = "root";
		String pass1 = "shweta";
		String sql1 = "select name from places order by name";
		Connection con1 = DriverManager.getConnection(url1, user1, pass1);
		ResultSet rs1 = con.createStatement().executeQuery(sql1);
		while (rs1.next()) {
			String destination = rs1.getString("name");
		%>
		<option value="<%=destination%>" />
		<%
		}
		rs.close();
		con.close();
		%>
	</datalist>
	<p>
		<font face="Verdana">Destination:</font> <input type="text" name ="destination" list="destination" required/>
		<h2><font face="Verdana">Enter your details</font></h2>
		<%
		
		int count = Integer.parseInt(request.getParameter("no of persons"));
		for (int i = 1; i <= count; i++) {
		%>
		<font face="Verdana">Passenger Name</font> <%=i %> : <input type="text" name="fullname" required> </br> </br> 
		<font face="Verdana">Aadhar UID</font> <%=i %> : <input type="number" name="uid" required></br> </br>
		<font face="Verdana">Phone Number</font> <%=i %> : <input type="number" name="phone" required> </br> </br> 
		<font face="Verdana">Age</font> <%=i %> : <input type="number" name="age" required></br></br>
		<hr></br>
		<%
		}
		%>
		<input type="submit" value="Book Ticket"></br></br>
	</form>
	
</body>
</html>