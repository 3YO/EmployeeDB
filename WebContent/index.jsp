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
		<br> <br> <br>
		<div>
			<h1>Spring MVC SQL GUI</h1>
			<br><br><br>
			<h3>How would you like to search/edit/delete employees?</h3>
			<br><br><br>
			<div>
			<a href="indexsql.jsp">
			<button type="button" class="btn btn-primary btn-lg">I know SQL!</button>
			
			</a>
			
			</div>
			<br><br><br><br>
			<div>
			
			<a href="indexnosql.jsp">
			<button type="button" class="btn btn-primary btn-lg">I don't know SQL</button>
			
			</a>
			</div>
		</div>

	</div>
</body>
</html>