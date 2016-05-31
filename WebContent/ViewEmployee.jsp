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
	<div class="container">


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
		<br> <br><br>
		<div class="text-center">

			<form action="GetEmployeeById.do" method="POST">
				<div class="row">
				<div class="col-md-2 col-md-offset-5" >
				<label for="id">Employee ID</label> 
			
				<input class="form-control" type="text" name="id" placeholder="4-Digit ID"> <br>
				<input class="btn btn-info" type="submit" value="Get Employee" />
			</div>
			</div>
			</form>
		</div>
		<br>
		
		
		<form class="" action="UpdateEmployee.do" method="POST">
			<div class="row">
				<div class="col-md-2" >
				<label for="id">Employee ID</label> 
				<input class="form-control" type="text" name="id" value="${employee.id}" readonly><br>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4" >
			
				<label for="firstname">First Name</label> 
				<input class="form-control" type="text" name="firstname" value="${employee.firstname}"> 
				</div>
				<div class="col-md-4" >
				
				<label for="middlename">Middle Name</label> 
				<input class="form-control" type="text" name="middlename" value="${employee.middlename}">
				</div>
				<div class="col-md-4" >
				 
				<label for="lastname">Last Name</label> 
				<input class="form-control" type="text" name="lastname" value="${employee.lastname}">
				</div>
			</div><br>
			<div class="row">
				<div class="col-md-2" >
			
				<label for="gender">Gender</label> 
				<input class="form-control" type="text" name="gender" value="${employee.gender}"> 
				</div>
				<div class="col-md-4" >
				
				<label for="salary">Salary</label> 
				<input class="form-control" type="text" name="salary" value="${employee.salary}">
				</div>
				<div class="col-md-3" >
				
				<label for="department_id">Department ID</label> 
				<input class="form-control" type="text" name="department_id" value="${employee.department_id}">
				</div>
				<div class="col-md-3" >
				
				<label for="job_id">Job ID</label> 
				<input class="form-control" type="text" name="job_id" value="${employee.job_id}">
				</div>
			</div>	<br>
			<div class="row">
				<address>
				<div class="col-md-5" >
				
				<label for="address">Street</label> 
				<input class="form-control" type="text" name="address" value="${employee.address}"> 
				</div>
				<div class="col-md-3" >
				
				<label for="city">City</label> 
				<input class="form-control" type="text" name="city" value="${employee.city}"> 
				</div>
				<div class="col-md-2" >
				
				<label for="state">State</label>
 				<input class="form-control" type="text" name="state" value="${employee.state}">
 				</div>
				<div class="col-md-2" >
 				
				<label for="zipcode">Zipcode</label> 
				<input class="form-control" type="text" name="zipcode" value="${employee.zipcode}">
				<br>
				</address>
			</div>
			<div class="text-center">
				<input class="btn btn-success" type="submit" name="submit" value="Update Employee!" />
			</div>
		</form><br><br>
		<div class="text-center">
		<form action="deleteEmployee.do" method="POST">
			<input class="btn btn-danger" type="submit" name="submit" value="Delete Employee" /> 
			<input type="hidden" name="id" value="${employee.id}"><br>
		</div>
	</div>
	</form>


	</div>
</body>
</html>