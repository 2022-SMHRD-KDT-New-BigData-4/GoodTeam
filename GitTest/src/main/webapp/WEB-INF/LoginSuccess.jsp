<%@page import="com.smhrd.model.CustomersVO"%>
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
	CustomersVO memberinfo = (CustomersVO) session.getAttribute("memberinfo");
	%>
	<%=memberinfo.getCust_id()%>
	<form action="">
	숙소순번 <input type='text' name = ''>
	작성할 리뷰를 입력하세용<input type="text">
	</form>
</body>
</html>