<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>SignUp Page</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

<style type="text/css">
.tcenter {
	display: block;
	margin-left: auto;
	margin-right: auto;
}
</style>
</head>
<header style="background-color: green; width: 50%"></header>

<h2>Welcome to Greatness</h2>

<body>
<body>
	<header style="background-color: #03a9f4; height: 30px;"> </header>
     <span class="tcenter" style="font-weight: bold;font-size: 18px">${message}</span>
	<div class="container">
		<img src="photos/signup.png" class="tcenter" style="height: 200px;">

		<form action="register" method="post">
		<div  class="tcenter" style="width: 40%">
		             <label for="name">FullName</label>
		            <input type="text" name="name" class="form-control">
		            <br>
		            <label for="email">Email</label>
		            <input type="email" name="email" class="form-control">
		            <br>
		            <label for="phone">Phone</label>
		            <input type=text name="phone" class="form-control">
		            <br>
		            <label for="dob">DateOfBirth</label>
		            <input type="text" name="dob" class="form-control">
		            <br>
		            <label for="gender">Gender</label>
		           <select  name="gender" class="form-control" style="width: 50%;">
		               <option>Male:</option>
		               <option>Female:</option>
		               <option>Unknown:</option>
		            </select>
		            <label for="ssn">Ssn</label>
		            <input type=text name="ssn" class="form-control">
		            <br>
		             <label for="username">Username</label>
		            <input type="text" name="username" class="form-control">
		            <br>
		               <label for="password">Password</label>
		            <input type="password" name="password" class="form-control">
		             <br/>
		              <label for="image">Image</label>
		            <input type="text" name="image" class="form-control">
		            <br/>
		            
		<button type="submit" class="btn btn-primary">SignUp</button>
		<button type="button" class="btn btn-danger">Clear</button>
		
		</div>
		</form>
	</div>
	
</body>
</html>