<%@page import="com.smhrd.model.JoinVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.smhrd.model.ReservationsVO"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<style>
body {
	/* flex선언*/
	display: flex;
	/* 아이템을 가운데로 옮김 */
	justify-content: center;
	/* 아이템을 정 한가운데로 옮김 */
	align-items: center;
	/* background-color: aqua; */
	flex-direction: column;
}

img {
	height: 100%;
	width: 100%;
}

.class {
	height: 500px;
	width: 55%;
	background-color: #F79792;
	/* flex선언*/
	display: flex;
	/* 아이템을 가운데로 옮김 */
	justify-content: center;
	/* 아이템을 정 한가운데로 옮김 */
	align-items: center;
	/* background-color: aqua; */
	flex-direction: column;
}

.room_img {
	height: 60%;
	width: 95%;
	background-color: red;
	border: 1px solid rgb(0, 0, 0);
}

.room_info {
	margin-top: 8px;
	height: 33%;
	width: 95%;
	background-color: rgb(255, 255, 255);
	border: 1px solid rgb(187, 255, 0);
	overflow: hidden; /* 추가 */
	display: flex;
	flex-direction: column;
}

div {
	display: flex;
}

a {
	margin-left: auto;
	margin-right: 10px;
}

p {
	margin: 0px;
	padding: 5px;
}

h3 {
	margin-bottom: 0px;
}
</style>
</head>
<body>
	<h1>예약 페이지</h1>
	<%
	List<JoinVO> reservations = (List<JoinVO>) request.getAttribute("ReservationSelectAll");
	for (JoinVO vo : reservations) {
	%>
	<!--방 1개-->
	<div class="class">
		<div class="room_img">
			<img src="assets/images/<%=vo.getAc_img3()%>">
		</div>
		<div class="room_info">
			<div>
				<h3>
					호텔 명 :<%=vo.getAc_name()%></h3>
			</div>
			<div>
				<p>
					예약 기간 :
					<%=vo.getCheck_in().substring(0, 10)%>
					~
					<%=vo.getCheck_out().substring(0, 10)%>
				</p>

			</div>
			<div>
				<p>
					가격 :<%=vo.getTotal_amount()%></p>
			</div>
			<div>
				<%=vo.getReserv_seq()%>
				<a href="ReservationCancel.do?reserv_seq=<%=vo.getReserv_seq()%>">예약취소</a>
			</div>
		</div>
	</div>
	<!-- 방 1개 끝-->
	<%
	}
	%>
</body>
</html>