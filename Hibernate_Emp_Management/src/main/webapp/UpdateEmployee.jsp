<%@ page import="org.hibernate.*"%>
<%@ page import="com.rahul.project.factory.FactoryProvider"%>
<%@ page import="com.rahul.project.entities.Employee"%>
<%@ page import="java.util.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update</title>
</head>
<body>

	<%@include file="Navbar.jsp"%>

	<h1 class="text-center m-4 p-2 bg-secondary text-white">Update The Required Fields</h1>

	<%
		int empId = Integer.parseInt(request.getParameter("empId").trim());

		Session s = FactoryProvider.getFactory().openSession();

		Employee emp = s.get(Employee.class, empId);
	%>
	
	<div class="container">

		<div class="card bg-light m-3">
			<div class="card-header"><h1 class="text-warning text-center">Update Form</h1></div>
			<div class="card-body">
				<form action="UpdateEmployeeServlet" method="Post" class="p-2">
					<div class="form-group">
						<label for="fName">First Name:</label> <input type="text"
							class="form-control" name="fName" id="fName" 
							value="<%=emp.getfName()%>" required>
					</div>

					<div class="form-group">
						<label for="lName">Last Name:</label> <input type="text"
							class="form-control" name="lName" id="lName" 
							value="<%=emp.getlName()%>" required>
					</div>

					<div class="form-group">
						<label for="state">State</label> <input type="text"
							class="form-control" name="state" id="state" 
							value="<%=emp.getState()%>" required>
					</div>

					<div class="form-group">
						<label for="city">City</label> <input type="text"
							class="form-control" name="city" id="city" 
							value="<%=emp.getCity()%>" required>
					</div>

					<div class="form-group">
						<label for="post">Designation:</label> <input type="text"
							class="form-control" name="post" id="post" 
							value="<%=emp.getPost()%>" required>
					</div>
					
					<input type="hidden" name="empId" value="<%=emp.getEmpId()%>" />

					<button type="submit" class="btn btn-lg btn-success">Save</button>
				</form>
			</div>

		</div>
	</div>

	<%
		s.close();
	%>

</body>
</html>