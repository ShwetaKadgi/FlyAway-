
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>


<html>
<style>

body { background-image: url('Fly.jpg');
	   background-position: center;
	   background-repeat: no-repeat;}

</style>

<%
try {
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	Class.forName("com.mysql.jdbc.Driver");
	String url = "jdbc:mysql://localhost:3306/flyaway?characterEncoding=utf8";
	String user = "root";
	String pass = "shweta";
	Connection con = DriverManager.getConnection(url,user,pass);
	PreparedStatement st = con
	.prepareStatement("select email,password from users where email=? and password=?");
	st.setString(1, username);
	st.setString(2, password);
	ResultSet rs = st.executeQuery();
	if (rs.next()) {
		response.sendRedirect("search.jsp");
	} else {
		out.println("<h1><p style=color:red>Invalid credentials!</P></h1>");
	}
} catch (Exception e) {
	out.println(e);
}
%>

</html>
