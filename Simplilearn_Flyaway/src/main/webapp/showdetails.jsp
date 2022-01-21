<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>

<html>
<style>

body { background-image: url('Fly.jpg');
	   background-position: right;
	   background-repeat: no-repeat;}

</style>

<%
String SOURCE = request.getParameter("source");
String DESTINATION = request.getParameter("destination");
String time = "10:05 PM";
Class.forName("com.mysql.jdbc.Driver");
String url = "jdbc:mysql://localhost:3306/flyaway?characterEncoding=utf8";
String user = "root";
String pass = "shweta";
String sql = "select * from flights where source='" + SOURCE + "'and destination='" + DESTINATION + "'";
Connection con = DriverManager.getConnection(url, user, pass);
Statement st = con.createStatement();
ResultSet rs = st.executeQuery(sql);
%>
<body>
<a href="index.jsp"><h3><font face="Verdana">Go to Homepage</font></h3></a>
<h1><font face="Verdana">Your Flight Details :</font></h1>
<table border="1">
	<tr>
		<th><font face="Verdana">Flight name</font></th>
		<th><font face="Verdana">Airline</font></th>
		<th><font face="Verdana">Way</font></th>
		<th><font face="Verdana">Price</font></th>
		<th><font face="Verdana">Source</font></th>
		<th><font face="Verdana">Destination</font></th>
		<th><font face="Verdana">Time</font></th>
	</tr>
	<%
	while (rs.next()) {
	%>
	<tr>
		<td><%=rs.getString(1)%></td>
		<td><%=rs.getString(2)%></td>
		<td><%=rs.getString(3)%></td>
		<td><%=rs.getString(4) + "/-"%></td>
		<td><%=rs.getString(5)%></td>
		<td><%=rs.getString(6)%></td>
		<td><%=time%></td>
	</tr>
	<%
	}
	%>
</table>
</br>
<form action="paymentIntermediate.jsp" method="post">
	<font face="Verdana">No of Persons:</font> <input type="number" name="no of persons" required></br> </br>
	<font face="Verdana">Flight Name:</font> <input type="text" name="flightname" required></br> </br>
	<input type="submit" value="submit">
</form>
</body>
</html>
