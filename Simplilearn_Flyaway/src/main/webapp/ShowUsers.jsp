<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>

body { background-image: url('Fly.jpg');
	   background-position: center;
	   background-repeat: no-repeat;}

table, th, td {
 border: 1px solid black;
 border-collapse: collapse;
}

</style>

</head>
<body>
<a href="index.jsp"><h3><font face="Verdana">Go to Homepage</font></h3></a>

<%
Class.forName("com.mysql.jdbc.Driver");
String url = "jdbc:mysql://localhost:3306/flyaway?characterEncoding=utf8";
String user = "root";
String pass = "shweta";
String sql = "select * from users";
Connection con = DriverManager.getConnection(url, user, pass);
Statement st = con.createStatement();
ResultSet rs = st.executeQuery(sql);
%>

<h1><font face="Verdana">List of the registered users:</font> </h1>
<table border="1">
	<tr>
		<th><font face="Verdana">Email</font></th>
		<th><font face="Verdana">Firstname</font></th>
		<th><font face="Verdana">Lastname</font></th>
		
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
			rs.getString(3)
			%>
		</td>
		<td>
			<%=
			rs.getString(4)
			%>
		</td>
	</tr>
	<%
	}
	%>
</table>
</body>
</html>