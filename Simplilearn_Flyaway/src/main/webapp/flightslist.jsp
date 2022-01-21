<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>

<html>

<style>

body { background-image: url('Fly.jpg');
	   background-position: center;
	   background-repeat: no-repeat;}

table, th, td {
 border: 1px solid black;
 border-collapse: collapse;
}

</style>


<body>

<a href="index.jsp"><h3><font face="Verdana">Go to Homepage</font></h3></a>

<%
Class.forName("com.mysql.jdbc.Driver");
String url = "jdbc:mysql://localhost:3306/flyaway?characterEncoding=utf8";
String user = "root";
String pass = "shweta";
String sql = "select * from flights order by name";
Connection con = DriverManager.getConnection(url, user, pass);
Statement st = con.createStatement();
ResultSet rs = st.executeQuery(sql);
%>
<h1><font face="Verdana">Flights List</font></h1>
<table border="1">
	<tr>
		<th><font face="Verdana">Name</font></th>
		<th><font face="Verdana">Airline</font></th>
		<th><font face="Verdana">Way</font></th>
		<th><font face="Verdana">Price</font></th>
		<th><font face="Vendara">Hours</font></th>
	</tr>
	<%
	while (rs.next()) {
	%>
	<tr>
		<td>
			<%=
			rs.getString(1)
			%>
		</td>
		<td>
			<%=
			rs.getString(2)
			%>
		</td>
		<td>
			<%=
			rs.getString(3)
			%>
		</td>
		<td>
			<%=
			rs.getString(4)
			%>
		</td>
		<td>
			<%=
			rs.getString(7)
			%>
		</td>
	</tr>
	<%
	}
	%>
</table>
</body>
</html>



