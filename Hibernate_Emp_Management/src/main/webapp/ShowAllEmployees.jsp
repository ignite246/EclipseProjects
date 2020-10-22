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
<title>All Employees</title>
</head>
<body>
	<!-- Navbar -->

	<%@include file="Navbar.jsp"%>

	<!-- Navbar Ends-->

	<div class="container-fluid">
		<h1 class="text-center text-white p-3">List of All Employees</h1>
		<div class="row">

			<%
				Session s = FactoryProvider.getFactory().openSession();
				List<Employee> employees = new ArrayList<Employee>();
				Query hql = s.createQuery("from Employee");
				employees = hql.list();
				s.close();
			%>


			<%
				int count = 0;
				for (Employee emp : employees) {
			%>

			<div class="col-lg-6 col-md-8 col-sm-12 p-5">
				<div class="card m-3 my_card">
					<div class="card-header bg-secondary text-center">

						<i class="fas fa-user fa-5x"></i>
						<h3 class="text-warning">
							Employee #
							<%=++count%></h3>
					</div>

					<div class="card-body bg-light p-0">
						<table class="table table-dark table-hover m-0">
							<tr>
								<td>Employee Id :</td>
								<td><%=emp.getEmpId()%></td>
							</tr>

							<tr>
								<td>First Name :</td>
								<td><%=emp.getfName()%></td>
							</tr>
							<tr>
								<td>Last Name :</td>
								<td><%=emp.getlName()%></td>
							</tr>
							<tr>
								<td>Designation :</td>
								<td><%=emp.getPost()%></td>
							</tr>
							<tr>
								<td>State :</td>
								<td><%=emp.getState()%></td>
							</tr>
							<tr>
								<td>City :</td>
								<td><%=emp.getCity()%></td>
							</tr>
						</table>
					</div>

					<div class="card-footer text-center">
						<a href="UpdateEmployee.jsp?empId=<%=emp.getEmpId()%>"
							class="btn btn-lg btn-outline-dark text-white btn-warning">Update</a>
						<a href="DeleteEmployeeServlet?empId=<%=emp.getEmpId()%>"
							class="btn btn-lg btn-outline-dark text-white btn-danger">Delete</a>
					</div>
				</div>
			</div>
			<%
				}
			%>


		</div>
	</div>

</body>
</html>