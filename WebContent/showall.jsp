
<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.cj.xdevapi.Statement"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Customer profile</title>
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

<header style="background-color: #03a9f4; height: 40px;"> </header>

<body>

		
		<%-- <b style="color: lightgreen;font-size: 18px">${msg}</b> --%>
		<div  class="tcenter" style="width: 70%">
		<span  style= "color: red;font-weight: bold;font-size: 18px">${show.role}</span>
		<b style="color: skyblue;font-weight: bod;font-size: 18px"> : ${msg}</b>
		<h2> Welcome to Tenants Dashboard</h2>
		
    <c:if test="${sessionScope.show.role=='admin'}">
		<a href="showallresidents"><button type="submit"class="btn btn-primary">Manage Users</button>
		</a>
		</c:if>
		<button type="submit" class="btn btn-info">Email</button>
		<a href="customer.jsp"><button type="submit" class="btn btn-danger">Profile</button></a>
		<a href="signUp.jsp"><button type="button" class="btn btn-warning">Sign Up</button></a>
		<a href="logout"><button type="button" class="btn btn-success">Logout</button></a>
		<br></br>
		<div class="container"style="float: right;width: 30%">
		<form name="searchForm" action="searchUser">
		     <input  value="${param.searchText}"   type="text" name="searchText" id="searchText" class="form-control" style="width: 50%;display: inline;"  onkeyup="clearMessage();">
		     &nbsp;&nbsp;&nbsp;
			<button type="button" class="btn btn-primary"  onclick="searchData();">GO</button>
			<a href="showallresidents">
			<button type="button" class="btn btn-danger">Clear</button>
			</a>
		</form>
		</div>
		
		
		
        <br></br>
   <table class="table table-bordered">
      <thead>
      <tr>
        <th>R_Id</th>
        <th>Full:Name</th>
        <th>Email</th>
        <th>Phone</th>
        <th>DateOfBirth</th>
        <th>Gender</th>
        <th>Ssn</th>
        <th>Username</th>
        <th>Password</th>
        <th>Image</th>
        <th>DOE</th>
        <th>Role</th>
        <th>Delete</th> 
      </tr>
     </thead>
     <tbody>
     <c:forEach items="${residents}" var="entity">
        <tr>
        <td> ${entity.sid}</td>
        <td>${entity.name}</td>
        <td>${entity.email}</td>
        <td>${entity.phone}</td>
        <td>${entity.dob}</td>
        <td>${entity.gender}</td>
        <td>${entity.ssn}</td>
        <td>${entity.username}</td>
        <td>${entity.password}</td>
       <td><img src="${entity.image}" style="height: 100px;width: 100px;"></td>
        <td>${entity.doe}</td>
        <td>${entity.role}</td>
         <td>
        <c:set value="${entity.role}" var="trole"/> 
        <c:if test="${sessionScope.show.role!=trole}">
       <a href="deletesid?sid=${entity.sid}">
          <img src="photos/delete.png"style="height:40px;">
          </a>
          </c:if >
          </td>
      </tr>
      </c:forEach>
      </tbody>
      </table>
      </div>
      <script type="text/javascript">
	
	    function clearMessage(){
	    	 document.getElementById("message").style="display:none";
	    }
	
	     function searchData() {
			 var searchText=document.getElementById("searchText").value;
			 if(searchText.length == 0){
				 // alert("Hello Search Text cannot be empty.");
				  document.getElementById("message").style="display:block";
				  return;
			 }
			 //submitting form through JavaScript
			 document.searchForm.submit();
	     }
	
	</script>
      </body>
      </html>
     