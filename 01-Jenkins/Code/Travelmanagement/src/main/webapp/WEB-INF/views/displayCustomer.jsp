<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>customer</title>
<link rel="stylesheet" href="/resources/css/style.css">
<script type="text/javascript" src="/resources/js/app.js"></script>

<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">

</head>
<body>

<center>
		<h1>Display Customer food Included</h1>
	</center>

<div class="container">
		<form action="#">
		
			<table class="table">
				<thead>
					<tr>
						<th>Customer Name</th>
						<th>Email</th>
						<th>Phone Number</th>
						<th>Season</th>
						
						
						
					</tr>
				</thead>
				<c:forEach items="${customers}" var="customers">
					<tbody>
						<tr>
							<td>${customers.customerName}</td>
							<td>${customers.emailId}</td>
							<td>${customers.phoneNumber}</td>
							<td>${customers.season}</td>
						</tr>
					</tbody>
				</c:forEach>
				
			</table>
		</form>
	</div>
			
	</form>

</body>
</html>