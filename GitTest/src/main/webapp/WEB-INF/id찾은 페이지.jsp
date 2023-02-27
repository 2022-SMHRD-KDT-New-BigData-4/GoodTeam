<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String id = (String) request.getAttribute("ID");
	// FindIdService페이지의 request Scope에서 가져온 값이 "ID"
	
	String pw = (String) request.getAttribute("findpw");

%>

!정답<br>
id = cust_id 0237<br>
pw = cust_pw 0237<br>
<br>
<br>
!! 입력값 Test<br>
findID test 값 : <%=id %><br>
<br>
findpw 값 : <%=pw %><br>
</body>
</html>