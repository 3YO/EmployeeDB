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
		<br> <br> <br><br><br>
		
		<h2>Add a new employee!</h2><br><br>
		<div class="">
			<form action="addEmployee.do" method="POST">
  		<%-- 	<div class="row">
				<div class="col-md-2" >
				<label for="id">Employee ID</label> 
				<input class="form-control" type="text" name="id" value="${employee.id}" readonly><br>
				</div>
			</div> --%>
			<div class="row">
				<div class="col-md-4" >
			<div class="form-group">
			
				<label class="control-label" for="firstname">First Name</label> 
				<input class="form-control" type="text" name="firstname" value=""> 
			</div>
				</div>
				<div class="col-md-4" >
				
				<label for="middlename">Middle Name</label> 
				<input class="form-control" type="text" name="middlename" value="">
				</div>
				<div class="col-md-4" >
			<div class="form-group">
				 
				<label class="control-label" for="lastname">Last Name</label> 
				<input class="form-control" type="text" name="lastname" value="">
			</div>
				</div>
			</div><br>
			<div class="row">
				<div class="col-md-2" >
			
				<label for="gender">Gender</label> 
 				<select class="form-control" name="gender">
  					<option value="M">M</option>
  					<option value="F">F</option>
				</select>
			 </div>
				<div class="col-md-4" >
				
				<label for="salary">Salary</label> 
				<input class="form-control" type="text" name="salary" value="">
				</div>
				<div class="col-md-3" >
			<div class="form-group">
				
				<label class="control-label" for="department_id">Department ID</label> 	
 				<select class="form-control" name="department_id">
  				<option value="1">Research</option>
  				<option value="2">Administration</option>
  				<option value="3">Software Development</option>
  				<option value="4">Hardware Development</option>
  				<option value="5">Test and Integration</option>
  				<option value="6">Sales</option>
  				<option value="7">HR</option>
  				<option value="8">Facilities</option>
  				<option value="9">Operations</option>
  				<option value="10">Documentation</option>
  				<option value="11">Test</option>
				</select>
			</div>
				</div>
				<div class="col-md-3" >
						<div class="form-group">
				
				<label class="control-label" for="job_id">Job ID</label> 
				<select class="form-control" name="job_id">
  				<option value="1">President</option>
  				<option value="2">Vice President</option>
  				<option value="3">Director</option>
  				<option value="4">Manager</option>
  				<option value="5">Supervisor</option>
  				<option value="6">Administrative Assistant</option>
  				<option value="7">Secretary</option>
  				<option value="8">Lead Engineer</option>
  				<option value="9">Engineer</option>
  				<option value="10">Junior Engineer</option>
  				<option value="11">DataBase Administrator</option>
  				<option value="12">DataBase Operator</option>
  				<option value="13">Systems Administrator</option>
  				<option value="14">Systems Operator</option>
  				<option value="15">Data Analyst</option>
  				<option value="16">Project Lead</option>
  				<option value="17">Senior Developer</option>
  				<option value="18">Developer</option>
  				<option value="19">Junior Developer</option>
  				<option value="20">Product Evangelist</option>
  				<option value="21">Senior Sales Rep</option>
  				<option value="22">Account Rep</option>
  				<option value="23">Sales Rep</option>
  				<option value="24">Tester</option>
  				<option value="25">Receptionist</option>
  				<option value="26">Data Entry Clerk</option>
  				<option value="27">Technical Writer</option>
  				<option value="28">Trainer</option>
  				<option value="29">COO</option>
  				<option value="30">CFO</option>
				</select>
				
				
				
				
				</div>
				</div>
			</div>	<br>
			<div class="row">
				<address>
				<div class="col-md-5" >
				
				<label for="address">Street</label> 
				<input class="form-control " type="text" name="address" value=""> 
				</div>
				<div class="col-md-3" >
				
				<label for="city">City</label> 
				<input class="form-control" type="text" name="city" value=""> 
				</div>
				<div class="col-md-2" >
				
				<label for="state">State</label>
 				<input class="form-control" type="text" name="state" value="">
 				</div>
				<div class="col-md-2" >
 				
				<label for="zipcode">Zipcode</label> 
				<input class="form-control" type="text" name="zipcode" value="">
				<br>
				</address>
			</div>
			<br><br><br>
				<input class="btn btn-primary" type="submit" value="Add Employee" />

			</form>
		</div>
		<br><br><br>
		<div class="text-center">
		
		</div>

	</div>
</body>
</html>