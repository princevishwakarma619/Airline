<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Flight Details</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<style>
	.btn{
	background-color: #AED6F1;
	}
</style>
<body>
	<%@page import="java.sql.DriverManager"%>
	<%@page import="java.sql.ResultSet"%>
	<%@page import="java.sql.Statement"%>
	<%@page import="java.sql.Connection"%>

	<%
		String dburl = "jdbc:mysql://localhost:3306/AirlineProject";
	String dbuname = "root";
	String dbpwd = "root";
	String dbDriver = "com.mysql.cj.jdbc.Driver";

	try {
		Class.forName(dbDriver);
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	}

	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
	%>
	<h2 align="center">
		<font><strong>Flight Details</strong></font>
	</h2>
	<table align="center" cellpadding="20" cellspacing="20" border="6">
		<tr>

		</tr>
		<tr bgcolor="#AED6F1">
			<td><b>Flight No</b></td>
			<td><b>From</b></td>
			<td><b>To</b></td>
			<td><b>Price</b></td>
			<td><b>Book Flight</b></td>
		</tr>
		<%
			try {
			connection = DriverManager.getConnection(dburl, dbuname, dbpwd);
			statement = connection.createStatement();
			String sql = "SELECT * FROM Flights ";
			
			resultSet = statement.executeQuery(sql);
			while (resultSet.next()) {
		%>
		<tr bgcolor="#FDEBD0">

			<td><%=resultSet.getString("Flight_No")%></td>
			<td><%=resultSet.getString("From_")%></td>
			<td><%=resultSet.getString("To_")%></td>
			<td><%=resultSet.getString("Price")%></td>
			<td><a href="Payment.jsp"><button type="submit" class="btn btn" >Book</button></a></td>

		</tr>

		<%
			}

		} catch (Exception e) {
		e.printStackTrace();
		}
		%>
	</table>

</body>
</html>