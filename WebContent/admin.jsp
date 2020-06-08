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

<h2>Auth giving Page</h2>

<body>
<body>
	<header style="background-color: #03a9f4; height: 30px;"> </header>
  
       <div class="container">
	
	    Your Current Role is =${sessionScope.show.role}
		<img src="photos/items.png"style="height:50px;">
        <c:if test="${sessionScope.show.role=='admin'}">
		<a href="showallresidents"><button type="submit"class="btn btn-primary">Manage Users</button>
		</a>
		</c:if>
		<button type="submit" class="btn btn-info">Email</button>
		<a href="customer.jsp"><button type="submit" class="btn btn-danger">Profile</button></a>
		<a href="signUp.jsp"><button type="button" class="btn btn-warning">Sign Up</button></a>
		<a href="logout"><button type="button" class="btn btn-success">Logout</button></a>
		
		</div>
</body>
</html>