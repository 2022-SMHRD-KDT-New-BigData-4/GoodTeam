<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="JoinService.do" method="post">
	<table>
	<tr>
		<td>ID</td>
		<td><input type="text" name="id"></td>
	</tr>
	<tr>
		<td>PW</td>
		<td><input type="password" name="pw"></td>
	</tr>
	<tr>
		<td>이름</td>
		<td><input type="text" name="name"></td>
	</tr>
	<tr>
		<td>email</td>
		<td><input type="text" name="email"></td>
	</tr>
	<tr>
		<td>전화번호</td>
		<td><input type="text" name="phone"></td>
	</tr>
	<tr>
		<td>
		</td>
		<td>
		<input type="submit" value="회원가입">
		</td>
	</tr>
	</table>
	</form>
</body>
</html>