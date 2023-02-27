<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body align="center">
<form action="FindID.do" method="post">
	cust_email 0237<input type="text" name="email"><br/>
	<input type="submit" value="id찾기">
</form>
<br/><br/>
--------------------------------------------------------
<br/><br/>
<form action="FindPW.do" method="post">
	cust_id 0237<input type="text" name="id"><br/>
	cust_name 0237<input type="text" name="name"><br/>
	cust_email 0237<input type="text" name="email"><br/>
	<input type="submit" value="pw찾기">
</form>
</body>
</html>