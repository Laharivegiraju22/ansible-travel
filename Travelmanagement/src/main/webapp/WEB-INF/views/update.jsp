<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>update form</title>
<link rel="stylesheet" href="/resources/css/style.css">
<script type="text/javascript" src="/resources/js/app.js"></script>

<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	<center>
		<h1>Edit Package Form</h1>
	</center>


	<form action="editPackage" post="post">
		<input type="hidden" name="packageId"
			value="${packagedetails.packageId}">

		<div class="form-row">
			<div class="form-group col-md-6">
				<label>Package Name</label> <input type="text" class="form-control"
					id="packageName" name="packageName" placeholder="Package Name"
					value="${packagedetails.packageName}">
			</div>
			<div class="form-group col-md-6">
				<label>Package Time</label> <input type="number"
					class="form-control" id="packageTime"
					value="${packagedetails.packageTime}" name="packageTime"
					placeholder="Package Time">
			</div>
		</div>
		<div class="form-row">
			<div class="form-group col-md-6">
				<label for="inputPassword4">Package Cost</label> <input
					type="number" class="form-control" id="packageCost"
					value="${packagedetails.packageCost}" name="packageCost"
					placeholder="Package Cost">
			</div>
			<div class="form-group col-md-6">
				<label>Season Type</label> <select id="seasonPackage"
					name="seasonPackage" class="form-control">
					<option disabled>select</option>
					<option value="summer"
						<c:if test="${packagedetails.seasonPackage.contains('summer')}">selected</c:if>>Summer</option>
					<option value="rain"
						<c:if test="${packagedetails.seasonPackage.contains('rain')}">selected</c:if>>Rain</option>
					<option value="winter"
						<c:if test="${packagedetails.seasonPackage.contains('winter')}">selected</c:if>>Winter</option>
					<option value="autumn"
						<c:if test="${packagedetails.seasonPackage.contains('autumn')}">selected</c:if>>Autumn</option>
				</select>
			</div>
		</div>
		<div class="form-row">
			<div class="form-group col-md-6">
				<label for="inputEmail4">Food Status</label> <select id="foodStatus"
					name="foodStatus" class="form-control">
					<option disabled>select</option>
					<option value="Included"
						<c:if test="${packagedetails.foodStatus.contains('Included')}">selected</c:if>>Included</option>
					<option value="Notincluded"
						<c:if test="${packagedetails.foodStatus.contains('Notincluded')}">selected</c:if>>Not-included</option>
				</select>
			</div>

		</div>
		<div align="center">
			<button type="submit" class="btn btn-primary"
				onclick="alert('confirm before submit'); validate();">Submit</button>
		</div>
	</form>

</body>
</html>