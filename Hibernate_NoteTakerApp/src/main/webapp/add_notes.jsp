<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="all_js_css.jsp"%>

<title>Add a Note</title>
</head>
<body>

	<%@ include file="navbar.jsp"%>

	<!--------------------- This is add note form ------------------------->

	<div class="container">
		<div class="row">
			<div class="col-md-6 offset-md-3 my-5">
				<div class="card">
					<div class="card-header bg-info text-center text-white">
						<h3>Please Fill Your Note Details</h3>
					</div>
					<div class="card-body">
						<form action="SaveNoteServlet" method="post">
							<div class="form-group">
								<label for="title">Note Title : </label> <input required
									type="text" id="title" name="title" class="form-control"
									placeholder="Give a title to your note" />
							</div>

							<div class="form-group">
								<label for="content">Note Description : </label>
								<textarea required id="content" name="content"
									class="form-control"
									placeholder="Describe in brief about the note..."
									style="height: 200px;"></textarea>
							</div>

							<div class="container-fluid text-center">
								<button type="submit" class="btn btn-primary">Add Note
								</button>
								<button type="reset" class="btn btn-danger">Reset
									Fields</button>
							</div>

						</form>
					</div>
				</div>

			</div>
		</div>
	</div>

</body>
</html>