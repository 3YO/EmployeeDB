<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="stylesheet.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Employee DB</title>
<link rel="stylesheet" type="text/css" href="stylesheet.css">
</head>
<body>
	<div class="container text-center">

		<div>
			<header> <nav class="navbar navbar-default navbar-fixed-top">
			<div class="logo">
				<ul class="nav nav-tabs navbar-left">
					<li><a href="index.jsp">Home</a></li>
				</ul>
			</div>
			<ul class="nav nav-tabs navbar-right">
				<li><a href="search.jsp">Search</a></li>
				<li><a href="update.jsp">Update</a></li>
			</ul>
			</nav> </header>
		</div>
		<br> <br> <br>
		<%-- <div class="container">
				<input type="hidden" name="id" value="${employee.id }">First
				Name: <input type="text" name="firstName"
					value="${employee.firstname }" /> <br>Middle Name: <input
					type="text" name="middleName" value="${employee.middlename }" /> <br>Last
				Name:<input type="text" name="lastName"
					value="${employee.lastName }" /><br> Salary: <input
					type="text" name="salary" value="${employee.salary }"> <br>
				Street Address: <input type="text" name="address"
					value="${employee.address }" /> City: <input type="text"
					name="city" value="${employee.city }" /> </select> <br>zipcode: <input
					type="text" name="zipcode" value="${employee.zipcode}" /> 
					
			<form method="POST" name="id" action="updateEmployee.do">
					<input
					type="submit" value="Update Employee" />
			</form>
		</div> --%>
	</div>
</body>
</html>