<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>    

<html>
<style>

body { background-image: url('Fly.jpg');
	   background-repeat: no-repeat;}

</style>

<body>
<a href="index.jsp"><h3><font face="Verdana">Go to Homepage</font></h3></a>
<%
int count=Integer.parseInt(request.getParameter("no of persons"));
String flightname = request.getParameter("flightname");
%>

<% 
try {
	Class.forName("com.mysql.jdbc.Driver");
	String url = "jdbc:mysql://localhost:3306/flyaway?characterEncoding=utf8";
	String user = "root";
	String pass = "shweta";
	Connection con = DriverManager.getConnection(url,user,pass);
	PreparedStatement st = con
	.prepareStatement("select PRICE from flights where NAME=?");
	st.setString(1, flightname);
	ResultSet rs = st.executeQuery();
	if (rs.next()) {
		int amount= Integer.parseInt(rs.getString(1));
		out.println("The amount to be paid is:"+ amount*count);
%>	
<% 
} else {
		out.println("<h1><p style=color:red>Error!</P></h1>");
	}
} catch (Exception e) {
	out.println(e);
}

%>

<a href="payment.jsp"><h1>Go for payment</h1></a>

<%

/*
RequestDispatcher rd = request.getRequestDispatcher("/showdetails.jsp");
rd.include(request, response);

/*

*/
%>
</body>
</html>   
