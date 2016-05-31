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
				<li><a href="listAll.do">View All</a></li>
				<li><a href="ViewEmployee.jsp">Search by ID</a></li>
				<li><a href="ViewEmployee.jsp">Update Employee</a></li>
				<li><a href="AddEmployee.jsp">Add Employee</a></li>
			</ul>
			</nav> </header>
		</div>
		<br> <br> <br><br><br><br>
		<a href="listAll.do">
			<button type="button" class="btn btn-primary btn-lg">View All Employees</button>
		</a><br><br>
		<a href="ViewEmployee.jsp">
			<button type="button" class="btn btn-primary btn-lg">Search by ID</button>
		</a><br><br>
		<a href="ViewEmployee.jsp">
			<button type="button" class="btn btn-primary btn-lg">Update/Delete Employee</button>
		</a><br><br>
		<a href="AddEmployee.jsp">
			<button type="button" class="btn btn-primary btn-lg">Add Employee</button>
		</a>

	</div>
</body>
</html>