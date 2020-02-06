<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>

<link rel="stylesheet" href="/resources/css/style.css">
<script type="text/javascript" src="/resources/js/app.js"></script>

<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	<div class="row header">
		<div class="col-md-12 ">
			<h1>Travel Management</h1>
		</div>
	</div>

	<br><br><br>
	<!-- Search form -->
	<form class="form-inline md-form mr-auto mb-4">
		<div class="add">
			<div class="container">
				 
			<input type="submit"  value="As Admin"  id="add" class="btn btn-primary" onclick="form.action='/admin'">
			
			
			<br><br><br><br>
			
			<input type="submit"  value="Customer Booking"  id="view" class="btn btn-primary" onclick="form.action='/customerBooking'">
				
				
			</div>
		</div>


	</form>
</body>
</html>