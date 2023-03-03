<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="assets/css/Find_Id.css">

</head>
<body>
	<%
	String id = (String) request.getAttribute("id");
	%>
	<div class="contain">
		<div class="welcom">
			<div class="header">
				<h1>Find ID</h1>
			</div>
			<div class="find">
				<p>YOUR ID IS..</p>
				<span>ID: <%=id%></span>
			</div>
			<div class="bottom">
				<form action="Login.do">
					<input type="submit" value="Login">
				</form>
			</div>

		</div>
	</div>
</body>
</html>