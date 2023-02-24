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

	<form action="CustSelect.do" method='post'>
		<input type="text" readonly value='<%=memberinfo.getCust_id()%>' name="id"><br>
		사용자 이름 : <input type="text" value='<%=memberinfo.getCust_name()%>' name= "name"><br>
		사용자 비밀번호 : <input type="password" value='<%=memberinfo.getCust_pw()%>' name="pw"><br>
		 사용자 전화번호 : <input type="text" value='<%=memberinfo.getCust_phone()%>' name="phone"><br>
		 사용자 이메일	: <input type="text" value='<%=memberinfo.getCust_email()%>' name="email"><br>
		사용자 가입일자 : <input type="text" readonly value='<%=memberinfo.getCust_joindate()%>' name="joindate"><br>
		 사용자 포인트 번호 : <input type="text" readonly value='<%=memberinfo.getCust_point()%>' name="point"><br> 
		<input type="submit" value="개인정보 수정">
		
	</form>





</body>
</html>