<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Adding New Employee</title>
</head>
<body>
	<!-- Navbar -->

	<%@include file="Navbar.jsp"%>

	<!-- Navbar Ends-->

	<!-- Add employee form -->

	<div class="container">

		<div class="card bg-light m-3">
			<div class="card-header">
				<h1 class="text-warning text-center">Registration Form</h1>
			</div>
			<div class="card-body">
				<form action="AddEmployeeServlet" method="Post" class="p-2">
					<div class="form-group">
						<label for="fName">First Name:</label> <input type="text"
							class="form-control" name="fName" id="fName" required>
					</div>

					<div class="form-group">
						<label for="lName">Last Name:</label> <input type="text"
							class="form-control" name="lName" id="lName" required>
					</div>

					<div class="form-group">
						<label for="state">State</label> <input type="text"
							class="form-control" name="state" id="state" required>
					</div>

					<div class="form-group">
						<label for="city">City</label> <input type="text"
							class="form-control" name="city" id="city" required>
					</div>

					<div class="form-group">
						<label for="post">Designation:</label> <input type="text"
							class="form-control" name="post" id="post" required>
					</div>

					<button type="submit" class="btn btn-lg btn-primary">Submit</button>
				</form>
			</div>

		</div>
	</div>


	<!-- Add employee form Ends -->
</body>
</html>