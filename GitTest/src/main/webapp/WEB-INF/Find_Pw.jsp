<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="assets/css/Find_Pw.css" >  

</head>
<body>
<%
 String pw = (String) request.getAttribute("pw");

%>
<div class="contain">
	<div class="welcom">
		<div class="header">
			<h1>Find PW</h1>
		</div>
		<div class="find">
				<p>YOUR PW IS..</p>
				<span>PW:<%= pw %></span>
		</div> 
		<div class="bottom">
		<form action="Login.do">
			<input type="submit" value="Login" >
			</form>
		</div> 
					
	</div>
</div>

</body>
</html>