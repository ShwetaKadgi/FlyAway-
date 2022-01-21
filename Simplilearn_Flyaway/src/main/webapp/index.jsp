<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager, java.sql.Connection, java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>

body { background-image: url('Fly.jpg');
	   background-position: center;
	   background-repeat: no-repeat;}
</style>
</head>
	<title>FlyAway</title>
<body>
	<font size="12" face="Verdana"><b>FlyAway- Your ticket to your destination!</b></font><br><br><br>
	<form action="search.jsp" method="post">
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
	<br>
		<b><font face="Verdana">Source:</font></b> <input type="text" name="source" list="source" required/>
	</br>
	</br>
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
		<b><font face="Verdana">Destination:</font></b> <input type="text" name ="destination" list="destination" required/>
	</p></br>
	<b><font face="Verdana">Travel Date:</font></b>
		<input type="date" id="traveldate" name="traveldate" required> </br></br>
	<input type="submit" value="Show available flights"></br></br>
	</form>
	<a href="login.jsp"><h3><font face="Verdana">Login as an admin</font></h3></a>
	<a href="NewRegistration.jsp"><h3><font face="Verdana">Sign up</font></h3></a>
	</body>
</html>
