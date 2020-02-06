<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>customer Booking</title>
<link rel="stylesheet" href="/resources/css/style.css">
<script type="text/javascript" src="/resources/js/OnChange.js"></script>

<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">

</head>
<body>
	<center>
		<h1>Customer Booking Form</h1>
	</center>

	<br>
	<br>
	<c:if test="${packagedetails==null}">
		<form action="bookingDetails">
			<div class="form-row">
				<div class="form-group col-md-6">
					<label>Customer Name</label> <input type="text"
						class="form-control" id="customerName" name="customerName"
						placeholder="Customer Name">
				</div>
				<div class="form-group col-md-6">
					<label>Email</label> <input type="email" class="form-control"
						id="emailId" name="emailId" placeholder="Email">
				</div>
			</div>
			<div class="form-row">
				<div class="form-group col-md-6">
					<label>Phone Number</label> <input type="number"
						class="form-control" id="phoneNumber" name="phoneNumber"
						placeholder="Phone Number">
				</div>

				<div class="form-group col-md-6">
					<label>Season Type</label> <select id="season" name="season"
						class="form-control">
						<option disabled>select</option>
						<option value="summer">Summer</option>
						<option value="rain">Rain</option>
						<option value="winter">Winter</option>
						<option value="autumn">Autumn</option>
					</select>
				</div>

			</div>
			<select name="country" class="countries" id="countryId">
				<option value="">Select Country</option>
			</select> <select name="state" class="states" id="stateId">
				<option value="">Select State</option>
			</select> <select name="city" class="cities" id="cityId">
				<option value="">Select City</option>
			</select>

			<div align="center">
				<button type="submit" class="btn btn-primary"
					onclick="alert('confirm before submit'); validate();">Show
					Package Details</button>
			</div>
		</form>
	</c:if>
	<c:if test="${packagedetails!=null}">
		<form action="addbookingdetails" post="post">
			<div class="form-row">
				<div class="form-group col-md-6">
					<label for="inputEmail4">Customer Name</label> <input type="text"
						class="form-control" id="customerName" name="customerName"
						placeholder="customer name" value="${customers.customerName}">
				</div>
				<div class="form-group col-md-6">
					<label for="inputPassword4">Email</label> <input type="email"
						class="form-control" id="Email" name="emailId "
						value="${customers.emailId}" placeholder="Mobile Number">
				</div>
			</div>
			<div class="form-row">
				<div class="form-group col-md-6">
					<label for="inputPassword4">Phone Number</label> <input
						type="number" class="form-control" id="phoneNumber"
						value="${customers.phoneNumber}" name="phoneNumber"
						placeholder="Phone Number">
				</div>
				<div class="form-group col-md-6">
					<label>Season Type</label> <select id="seasonPackage"
						onchange="getDetails()" name="season" class="form-control">
						<option disabled>select</option>
						<option value="summer"
							<c:if test="${customers.season.contains('summer')}">selected</c:if>>Summer</option>
						<option value="rain"
							<c:if test="${customers.season.contains('rain')}">selected</c:if>>Rain</option>
						<option value="winter"
							<c:if test="${customers.season.contains('winter')}">selected</c:if>>Winter</option>
						<option value="autumn"
							<c:if test="${customers.season.contains('autumn')}">selected</c:if>>Autumn</option>
					</select>
				</div>
			</div>

			<div class="form-row">
				<div class="form-group col-md-6">
					<label for="inputPassword4">Package Name</label> <select
						id="packages1" name="packageName" class="form-control">
					</select>
				</div>

			</div>
			<div align="center">
				<button type="submit" class="btn btn-primary"
					onclick="alert('confirm before submit'); validate();">Submit</button>
			</div>

			<div class="container">
				<form action="#">

					<table class="table" id="table1">
						<thead>
							<tr>
								<th>Package Name</th>
								<th>Package Cost</th>
								<th>Package Time</th>
								<th>Food Status
								<th>
							</tr>
						</thead>

						<c:forEach items="${packagedetails}" var="packagedetails">
							<tbody>
								<tr>
									<td>${packagedetails.packageName}</td>
									<td>${packagedetails.packageCost}</td>
									<td>${packagedetails.packageTime}</td>
									<td>${packagedetails.foodStatus}</td>

								</tr>
							</tbody>
						</c:forEach>
						<tbody id="loop"></tbody>
					</table>
				</form>
			</div>

		</form>
	</c:if>



</body>
<script type="text/javascript">
$('#customerName').keypress(function (e) {
    var regex = new RegExp("^[a-zA-Z]+$");
    var str = String.fromCharCode(!e.charCode ? e.which : e.charCode);
    if (regex.test(str)) {
        return true;
    }
    else
    {
    e.preventDefault();
    alert('Please Enter Alphabate');
    return false;
    } 
});

$('#customerName').keypress(function (e) {
    var regex = new RegExp("^[a-zA-Z]+$");
    var str = String.fromCharCode(!e.charCode ? e.which : e.charCode);
    if (regex.test(str)) {
        return true;
    }
    else
    {
    e.preventDefault();
    alert('Please Enter Alphabate');
    return false;
    } 
});

$(document).ready(function () {
	  //called when key is pressed in textbox
	  $("#phoneNumber").keypress(function (e) {
	     //if the letter is not digit then display error and don't type anything
	     if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
	        //display error message
	        $("#errmsg").html("Digits Only").show().fadeOut("slow");
	               return false;
	    }
	   });
	});


<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script> 
<script src="//geodata.solutions/includes/countrystatecity.js"></script>

</script>
</html>