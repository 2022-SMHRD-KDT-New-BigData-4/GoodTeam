<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="bar.jsp" %>
	<form action="LonginService.do" method="post">
		ID : <input type="text" name="id"> <br>
		pw : <input type="password" name="pw"> <br> 
		<input type="submit" value="로그인">
	</form>
	<br/>
	<form action="CreateAccount.do" method="post">
		<input type="submit" value="회원가입">
	</form>







</body>
</html>