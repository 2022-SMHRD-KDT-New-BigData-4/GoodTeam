<%@page import="com.smhrd.model.JoinVO"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.model.WishlistVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>위시리스트 페이지</h1>
	<%
	List<JoinVO> wishlist = (List<JoinVO>) request.getAttribute("wishlist");
	for (JoinVO vo : wishlist) {
	%>
	<table>
		<tr>
			<td><%=vo.getAc_name()%></td>
			<td><%=vo.getRoom_nm()%></td>
			<td><%=vo.getRoom_price_h()%></td>
			<td><%=vo.getRoom_price_l()%></td>
			<td><%=vo.getReserv_yn()%></td>
			<td><%=vo.getReg_date()%></td>
		</tr>
	</table>
	<%
	}
	%>

</body>
</html>