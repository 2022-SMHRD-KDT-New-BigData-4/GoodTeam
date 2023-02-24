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
	<%=memberinfo.getCust_name()%>
	<%=memberinfo.getCust_phone()%>

	<form action="SearchAllRoom.do">
		<input type="submit" value="모든숙소 검색">
	</form>


	<!-- 내 정보 수정 -->
	<form action="GoCustUpdate.do">
		<input type="submit" value="내조회 수정">
	</form>
	<!--  전제 위시리스트 조회 -->
	<form action="WishSelectAll.do">
		<input type="submit" value="내 찜 목록">
	</form>
	<form action="WishlistDel.do">
		<input type="text" name="wish_seq"> 
		<input type="submit" value="내 찜 목록 삭제">
	</form>






</body>
</html>