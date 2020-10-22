<%@page import="com.rahul.notetaker.helper.*" %>
<%@page import="com.rahul.notetaker.entities.*"%>
<%@page import="org.hibernate.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="all_js_css.jsp"%>
<title>Edit Note : Note Taker App</title>
</head>
<body>
	<%@ include file="navbar.jsp"%>
	<h1 class="text-center">Edit your note</h1>

	<%
		int noteId = Integer.parseInt(request.getParameter("note_id").trim());
		Session s = FactoryProvider.getFactory().openSession();
		Note note = s.get(Note.class, noteId);
	%>
		<form action = "UpdateServlet" method="post" class="container col-sm-12 col-md-8 col-md-offset-2 col-lg-6 col-lg-offset-3">
		
		<input value="<%= note.getId()%>" name="noteId" type="hidden" >
		
		<div class="form-group">
			<label for="title">Note Title</label> 
			<input
				required
				type="text" 
				id="title"
				name="title"
				class="form-control" 
				placeholder="Edit the title of your note"
				value="<%=note.getTitle()%>"/>
				
		</div>
		
		<div class="form-group">
			<label for="content">Note Content</label> 
			<textarea id="content" 
					  name="content" 
			          class="form-control" 
			          placeholder="Enter your content" 
			          style="height:200px;"required>
			          <%=note.getContent()%> </textarea>
		</div>
		
		<div class="container text-center">
			<button type="submit" class="btn btn-block btn-success"> Save Your Note </button>
		</div>
		
	</form>
</body>
</html>