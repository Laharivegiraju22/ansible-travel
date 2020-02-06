<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>package</title>
<link rel="stylesheet" href="/resources/css/style.css">
<script type="text/javascript" src="/resources/js/app.js"></script>

<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">

</head>
<body>
	<center>
		<h1>Add Package Form</h1>
	</center>

	<br>
	<br>
	<form action="addPackageDetail">
		<div class="form-row">
			<div class="form-group col-md-6">
				<label>Package Name</label> <input type="text"
					class="form-control" id="packageName" name="packageName"
					placeholder="Package Name">
			</div>
			<div class="form-group col-md-6">
					<label>Season Type</label> <select id="seasonPackage"
						name="seasonPackage" class="form-control">
						<option disabled>select</option>
						<option value="summer">Summer</option>
						<option value="rain">Rain</option>
						<option value="winter">Winter</option>
						<option value="autumn">Autumn</option>
					</select>
				</div>
			</div>
			<div class="form-row">
				<div class="form-group col-md-6">
					<label >Package Time</label> <input
						type="number" class="form-control" id="packageTime"
						name="packageTime" placeholder="Package Time">
				</div>
				
				<div class="form-group col-md-6">
					<label >Package Cost</label> <input
						type="number" class="form-control" id="packageCost"
						name="packageCost" placeholder="Package Cost">
				</div>
				
			</div>
			<div class="form-row">
			<div class="form-group col-md-6">
					<label for="inputEmail4">Food Status</label> <select id="foodStatus"
						name="foodStatus" class="form-control">
						<option disabled>select</option>
						<option value="Included">Included</option>
						<option value="Notincluded">Not-included</option>
					</select>
				</div>
				</div>
				
				
			
			<div align="center">
				<button type="submit" class="btn btn-primary"
					onclick="alert('confirm before submit'); validate();">Submit</button>
			</div>
	</form>
</body>
<script type="text/javascript">
$('#firstName').keypress(function (e) {
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

$('#packageName').keypress(function (e) {
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
	  $("#mobileNumber").keypress(function (e) {
	     //if the letter is not digit then display error and don't type anything
	     if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
	        //display error message
	        $("#errmsg").html("Digits Only").show().fadeOut("slow");
	               return false;
	    }
	   });
	});

</script>
</html>