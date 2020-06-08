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

<body>
<body>
	<header style="background-color: #03a9f4; height: 30px;"> </header>
     <span style="margin-left: 10px;color: skyblue;font-weight: bold;font-size: 18px">${signmsg}</span>
     <br>
     <b style="margin-left: 10px;color: red;font-size: 16px;font-weight: bold">Hello! Mr. ${sessionScope.show.name}- Email= ${sessionScope.show.email}</b>
     <br>
     <b style="color: red;margin-left: 10px;font-size: 16px;font-weight: bold">Your! Username= ${sessionScope.show.username} - Your Role= ${sessionScope.show.role}</b>
	<div class="container">
	
		<img src="photos/login.png" class="tcenter" style="height: 100px;">
		
         <h2 style="margin-left: 350px">Welcome to Comfort Homes</h2>
		 <table class="table table-bordered">
    <thead>
      <tr>
        <td>Sid</td>
         <td>${show.sid}</td>
          </tr>
          <tr>
        <td>Full Name</td>
         <td>${show.name}</td>
      </tr>
          <tr>
        <td>Email</td>
         <td>${show.email}</td>
      <tr>
  
          <tr>
        <td>Phone</td>
         <td>${show.phone}</td>
      </tr>
       
          <tr>
        <td>DateOfBirth</td>
         <td>${show.dob}</td>
          </tr>
           <tr>
        <td>Gender</td>
         <td>${show.gender}</td>
          </tr>
           <tr>
        <td>Ssn</td>
         <td>${show.ssn}</td>
          </tr>
           <tr>
        <td>Username</td>
         <td>${show.username}</td>
          </tr>
           <tr>
        <td>Password</td>
         <td>${show.password}</td>
          </tr>
           <tr>
        <td>Image</td>
        <td>
         <img src="${show.image}"style="height: 50px;width: 50px;">
         </td>
          </tr>
           <tr>
        <td>Date of Entry</td>
         <td>${show.doe}</td>
          </tr>
           <tr>
        <td>Role</td>
         <td>${show.role}</td>
          </tr>
   
    </tbody>
  </table>
		  <span style="float: right">         
		<button  type="submit" class="btn btn-primary">Edit</button>
		<a href="admin.jsp">
		<button type="button" class="btn btn-success">Next</button>
		</a>
		</span> 
	</div>
</body>
</html>