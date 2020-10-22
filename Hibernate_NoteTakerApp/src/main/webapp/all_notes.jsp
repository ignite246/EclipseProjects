<%@ page import="org.hibernate.Session"%>
<%@ page import="org.hibernate.Query"%>

<%@ page import="java.util.*"%>

<%@ page import="com.rahul.notetaker.helper.FactoryProvider"%>
<%@ page import="com.rahul.notetaker.entities.Note"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="all_js_css.jsp"%>

<title>All Notes : Note Taker</title>
</head>
<body>

	<%@ include file="navbar.jsp"%>

	<div class="container">
		<h1 class="text-center m-4">All Your Notes</h1>

		<div class="row">
			<%
				Session s = FactoryProvider.getFactory().openSession();
			Query q = s.createQuery("from Note");
			List<Note> list = q.list();

			for (Note note : list) {
			%>
			<div class="col-md-6 my-4 notes">
				<div class="card-column">
					<div class="card">
						<div class="card-header bg-info text-white">
							<div class="row">
								<div class="col-2">
									<img src="images/notepad.png" class="img-fluid" alt="Image"
										style="max-width: 70px;">
								</div>
								<div class="col-10 text-center">
									<h4 class="card-title m-0"><%=note.getTitle()%></h4>
									<hr class="m-0 bg-white">
									<small><%=new Date()%></small>
								</div>

							</div>
						</div>
						<div class="card-body">
							<h3 class="card-text"><%=note.getContent()%></h3>
						</div>
						<div class="card-footer text-center bg-secondary">
							<a href="DeleteServlet?note_id=<%=note.getId()%>"
								class="btn btn-danger">Delete</a> <a
								href="edit.jsp?note_id=<%=note.getId()%>"
								class="btn btn-success">Update</a>
						</div>
					</div>
				</div>
			</div>

			<%
				}
			s.close();
			%>

		</div>

	</div>
</body>
</html>