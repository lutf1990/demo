<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Sign In Page</title>
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

<h2>Welcome to Sign In Page</h2>

<body>
<body>
	<header style="background-color: #03a9f4; height: 30px;"> </header>
     
	<div class="container">
	
     <span class="tcenter" style="color: red;margin-left:50px; font-weight: bold;font-size: 18px">Your Role =${sessionScope.show.role}</span>
		<img id="loginimage"src="photos/login.png" class="tcenter" style="height: 200px;">
      
		<form action="signin" method="post">
		<div  class="tcenter" style="width: 50%">
		<b>${password}</b>
		            
		             <label for="username">Username</label>
		            <input type="text" name="username" class="form-control">
		            <br>
		               <label for="password">Password</label>
		            <input type="password" name="password" class="form-control">
		             <br></br>
		            
		<button type="submit" class="btn btn-primary">Sign In</button>
		<button type="button" class="btn btn-danger">Clear</button>
		<button type="button" class="btn btn-success">Sign Up</button>
		
		<a href="forgotpass.jsp"><button type="button" class="btn btn-warning">Forgot Password</button></a>
		<button type="button" class="btn btn-danger"  onclick="validate();">Change Image</button>
		<br>
		
		</div>
		</form>
	</div>
	
	<script >
	function validate(){
		var imgObj = window.document.getElementById("loginimage");
		imgObj.src="photos/fail.png";
	}
	var x = 100;
	var y = 900;
	let temp = x+y;
	console.log("temp ="+temp);
	
	</script>
</body>
</html>