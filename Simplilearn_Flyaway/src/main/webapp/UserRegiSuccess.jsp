<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

		<%
		try {
			String firstname = request.getParameter("firstname");
			String lastname = request.getParameter("lastname");
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/flyaway?characterEncoding=utf8";
			String user = "root";
			String pass = "shweta";
			Connection con = DriverManager.getConnection(url,user,pass);
			String query= "insert into users(email,password,firstname,lastname) values('"+ email + "','"+ password + "','"+ firstname + "','"+ lastname + "')";
			Statement st = con.createStatement();
			int i = st.executeUpdate(query);
			out.println("Registration completed successfully!");
		} catch (Exception e) {
			out.println(e);
		}
		%>
		
		<br><a href="UserLogin.jsp"><font face="Verdana"><h3>Click here to login</h3></font></a>

</body>
</html>