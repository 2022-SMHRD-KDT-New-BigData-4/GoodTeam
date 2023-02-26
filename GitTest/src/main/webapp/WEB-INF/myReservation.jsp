<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.smhrd.model.ReservationsVO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약확인</title>
</head>
<body>
<h1>예약확인</h1>

<%
	List<ReservationsVO> reservlist = (List<ReservationsVO>) request.getAttribute("ReservationSelectAll");
	for (ReservationsVO vo : reservlist) {
%>
	<table>
		<tr>
			<td>예약자 아이디 <%=vo.getCust_id()%></td>
			<td>체크인 날짜 <%=vo.getCheck_in()%></td>
			<td>체크아웃 날짜 <%=vo.getCheck_out()%></td>
			<td>등록 날짜 <%=vo.getReg_date()%></td>
			<td>총 금액 <%=vo.getTotal_amount()%></td>
		</tr>
	</table>
	<%} %>

</body>
</html>