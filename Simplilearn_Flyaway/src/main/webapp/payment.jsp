<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>    

<html>
<style>

body { background-image: url('Fly.jpg');
	   background-repeat: no-repeat;
	   background-position: center;}

</style>

<body>
<a href="index.jsp"><h3><font face="Verdana">Go to Homepage</font></h3></a>

<form action="PaymentSuccessful.jsp">

<h1><font face="Verdana">Payment Details :</font></h1>
	<font face="Verdana">Debit card Number :</font> <input type="number" required></br>
	</br> <font face="Verdana"> Expiry Date :</font> <input type="date" pattern="mm-yy"></br>
	</br> <font face="Verdana">CVV :</font> <input type="number" required></br>
	</br> <input type="submit" value="Pay" ></br>
	</br>
</form>


</body>
</html>   
