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
	<div class="">


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
		<div class="row">
			<div class=".col-md-6">
				<div class="container text-center">
				<h3 class="lead">"SELECT"</h3>
					<form method="POST" action="sql.do">
						<textarea class="form-control" rows="5" cols="60" name="query"
							placeholder="SELECT * FROM employees;"></textarea>
						<br /> <input class="btn btn-default" type="submit" value="Query DB" />
					</form>
				</div>
			</div>
			<div class=".col-md-6">
				<div class="container text-center">
					<h3 class="lead">"UPDATE/DELETE"</h3>
					<form method="POST" action="update.do">
						<textarea class="form-control" rows="5" cols="60" name="query"
							placeholder="DELETE FROM employees WHERE id=####;"></textarea>
						<br /> <input class="btn btn-default" type="submit" value="Query DB" />
					</form>
				</div>
			</div>
		</div>
		<br><br><br>
		<div class="container text-center">
			<table class="table table-hover text-center">
				<c:forEach var="arrayListResult" items="${queryArray}">
					<tr>
						<c:forEach var="arrayListResult2" items="${arrayListResult}">
							<td>${arrayListResult2}</td>
						</c:forEach>
					</tr>
				</c:forEach>
			</table>
		</div>

	</div>
</body>
</html>