<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<head>

<title>Available Flights</title>
<style>

body { background-image: url('Fly.jpg');
	   background-position: center;
	   background-repeat: no-repeat;}
	   
table, th, td {
 border: 1px solid black;
 border-collapse: collapse;
}

th, td{
	background-color: grey;
}
</style>
</head>

<%
String SOURCE = request.getParameter("source");
String DESTINATION = request.getParameter("destination");
Class.forName("com.mysql.jdbc.Driver");
String url = "jdbc:mysql://localhost:3306/flyaway?characterEncoding=utf8";
String user = "root";
String pass = "shweta";
String sql = "select * from flights where source='" + SOURCE + "'and destination='" + DESTINATION + "'";
Connection con = DriverManager.getConnection(url, user, pass);
Statement st = con.createStatement();
ResultSet rs = st.executeQuery(sql);
%>

<a href="index.jsp"><h3><font face="Verdana">Go to Homepage</font></h3></a>
<h1><font face="Verdana">Available Flights :</font></h1>
<table border="2">
	<tr>
		<th>Name</th>
		<th>Airline</th>
		<th>Way</th>
		<th>Price</th>
		<th>Source</th>
		<th>Destination</th>
		<th>Hours</th>
	</tr>
	<%
	while (rs.next()) {
	%>
	<tr>
		<td><%=rs.getString(1)%></td>
		<td><%=rs.getString(2)%></td>
		<td><%=rs.getString(3)%></td>
		<td><%=rs.getString(4)%></td>
		<td><%=rs.getString(5)%></td>
		<td><%=rs.getString(6)%></td>
		<td><%=rs.getString(7)%></td>
	</tr>
	<%
	}
	%>
</table>
</br>
<br>
<br>	
<form action="customerdetails.jsp" method="post">
<b><font face="Verdana">No of Persons:</font></b>
<input type="number" name="no of persons" required></br></br> 
<input type="submit" value="Book Ticket"><br><br>
</form>

<a href="UserLogin.jsp"><h3><font face="Verdana">Login as a user</font></h3></a>
<a href="NewRegistration.jsp"><h3><font face="Verdana">Sign up</font></h3></a>

