<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<%@include file="all_js_css.jsp" %>
<style>
	
	body{
		background : #f1f1f1;
		background-image : url("images/notepad.png");
	}
	div{
		display :flex;
		justify-content : center;
		
	}
	h1{
		margin-top : 200px;
		padding : 20px;
		line-height : 10vh;
		background : #ba68c8;
		color : white;
		border : none;
		text-shadow : 2px 2px 2px pink;
		border-radius : 10px;
	}
	h1:hover{
		letter-spacing : 2px;
		box-shadow : 2px 2px 10px black;
		border-radius : 15px;
	}
</style>
<title>Welcome : Note Taker App</title>
</head>
<body>

	<%@ include file="navbar.jsp"%>
	<div class="container-fluid">
		
		<h1>Welcome to Note Taker App</h1>
		
	</div>


</body>
</html>