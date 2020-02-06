<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> display</title>
<link rel="stylesheet" href="/resources/css/style.css">
<script type="text/javascript" src="/resources/js/app.js"></script>

<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">

</head>
<body>

<center>
		<h1>Display Package Included Food</h1>
	</center>

<div class="container">
		<form action="#">
		
			<table class="table">
				<thead>
					<tr>
						<th>Package Name</th>
						<th>Package Cost</th>
						<th>Package Time</th>
						<th>Food Status<th>
						<th>Season Package</th>
						<th>Edit</th>
						
						
					</tr>
				</thead>
				<c:forEach items="${packagedetails}" var="packagedetails">
					<tbody>
						<tr>
							<td>${packagedetails.packageName}</td>
							<td>${packagedetails.packageCost}</td>
							<td>${packagedetails.packageTime}</td>
							<td>${packagedetails.foodStatus}</td>
							<td>${packagedetails.seasonPackage}</td>
						</tr>
					</tbody>
				</c:forEach>
				
			</table>
		</form>
	</div>
			
	</form>

</body>
</html>