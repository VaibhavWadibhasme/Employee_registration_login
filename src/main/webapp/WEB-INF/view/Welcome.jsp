<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" >
<title>Welcome Page</title>
</head>
<body>
	<c:set var="loginid" value="${loginid }"></c:set>

	<h2>
		Hello
		<c:out value="${loginid }"></c:out>
	</h2>

	<table class="table">
		<tr>
			<td>ID</td>
			<td>Name</td>
			<td>DOB</td>
			<td>Gender</td>
			<td>Address</td>
			<td>City</td>
			<td>State</td>
			<td>LoginID</td>
			<td>Password</td>
		</tr>
		<c:forEach var="emp" items="${list}">
			<tr>
				<td>${emp.id}</td>
				<td>${emp.name}</td>
				<td>${emp.dob}</td>
				<td>${emp.gender}</td>
				<td>${emp.address}</td>
				<td>${emp.city}</td>
				<td>${emp.state}</td>
				<td>${emp.loginid}</td>
				<td>${emp.password}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>