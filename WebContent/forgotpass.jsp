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
     
	<div class="container">
	${password}
     <%-- <span class="tcenter" style="color: red;margin-left:50px; font-weight: bold;font-size: 18px">Your Role =${sessionScope.show.role}</span> --%>
		<img src="photos/login.png" class="tcenter" style="height: 200px;">
      
		<form action="forgotpass" method="post">
		<div  class="tcenter" style="width: 40%">
		            
		             <label for="email">Email</label>
		            <input type="text" name="email" placeholder="Type Your Email" class="form-control">
		            <br>
		               
		<button type="submit" class="btn btn-primary">Reset Password</button>
		<button type="button" class="btn btn-danger">Clear</button>

		</div>
		</form>
	</div>
</body>
</html>