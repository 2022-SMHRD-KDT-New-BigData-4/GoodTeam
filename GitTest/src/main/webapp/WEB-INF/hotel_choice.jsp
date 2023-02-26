<%@page import="javax.security.auth.message.callback.PrivateKeyCallback.Request"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="com.smhrd.model.CustomersVO"%>
<%@page import="com.smhrd.model.RoomsVO"%>
<%@page import="com.smhrd.model.AmentiesVO"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.model.AccommodationsVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hotel Room Choice</title>
<link rel="stylesheet" href="assets/css/hotelChoice.css">
<script src="assets/js/jquery-3.6.3.min.js"></script>
<script src="https://unpkg.com/react@17/umd/react.development.js" crossorigin></script>
<script src="https://unpkg.com/react-dom@17/umd/react-dom.development.js" crossorigin></script>    
</head>
<body>

	<%@ include file="bar.jsp"%>
	<%
	CustomersVO memberinfo = (CustomersVO) session.getAttribute("memberinfo");
	%>
	<%
	List<AccommodationsVO> roominfo = (List<AccommodationsVO>) request.getAttribute("roominfo");
	AccommodationsVO room = roominfo.get(0);
	List<AmentiesVO> roomamen = (List<AmentiesVO>) request.getAttribute("roomamen");
	AmentiesVO rooma = roomamen.get(0);
	List<RoomsVO> roomprice = (List<RoomsVO>) request.getAttribute("roomprice");
	RoomsVO roopri = roomprice.get(0);
	%>
	<%
	session.setAttribute("room_seq", roopri.getRoom_seq());
	%>


	<div class="room_name">
		<h1><%=room.getAc_name()%></h1> <!-- 객실명 -->
	</div>
	<div id="scroll_area">
	<table id="re_scroll">
		<tr>
			<td class="re_date"></td>
		</tr>
		<tr>
			<td></td> <!-- 룸 타입 -->
		</tr>
		<tr>
			<td><%=roopri.getRoom_price_l()%></td>
		</tr>
		<tr>
			<td id="ppd"><%=roopri.getRoom_price_l()%> per day</td>
		</tr>
		<tr></tr> 
		<tr></tr> 
		<tr></tr> 
		<tr>
			<td height="40px"><a href="#"><div class="wish btn">Wish</div></a></td>
		</tr>
		<tr>
			<td height="40px"><a href="#"><div class="res btn">Book</div></a></td>
		</tr>
	</table>
	</div>

	<a href="#"><div id="calendarButton">Show Calendar</div></a>


	<div class="calendar_container hide">
		<button class="left_button">&lt</button>

		<table class="calendar">
			<th class="title">2월</th>
			<tbody>
				<tr class="week">
					<td class="day">일</td>
					<td class="day">월</td>
					<td class="day">화</td>
					<td class="day">수</td>
					<td class="day">목</td>
					<td class="day">금</td>
					<td class="day">토</td>
				</tr>
				<tr>
					<!-- 달력 첫 번째 줄-->
					<td class="calendar_days" roll="button"></td>
					<td class="calendar_days" roll="button"></td>
					<td class="calendar_days" roll="button"></td>
					<td class="calendar_days" roll="button"></td>
					<td class="calendar_days" roll="button"></td>
					<td class="calendar_days" roll="button"></td>
					<td class="calendar_days" roll="button"></td>
				</tr>
				<tr>
					<!-- 달력 두 번째 줄-->
					<td class="calendar_days" roll="button"></td>
					<td class="calendar_days" roll="button"></td>
					<td class="calendar_days" roll="button"></td>
					<td class="calendar_days" roll="button"></td>
					<td class="calendar_days" roll="button"></td>
					<td class="calendar_days" roll="button"></td>
					<td class="calendar_days" roll="button"></td>
				</tr>
				<tr>
					<!-- 달력 세 번째 줄-->
					<td class="calendar_days" roll="button"></td>
					<td class="calendar_days" roll="button"></td>
					<td class="calendar_days" roll="button"></td>
					<td class="calendar_days" roll="button"></td>
					<td class="calendar_days" roll="button"></td>
					<td class="calendar_days" roll="button"></td>
					<td class="calendar_days" roll="button"></td>
				</tr>
				<tr>
					<!-- 달력 네 번째 줄-->
					<td class="calendar_days" roll="button"></td>
					<td class="calendar_days" roll="button"></td>
					<td class="calendar_days" roll="button"></td>
					<td class="calendar_days" roll="button"></td>
					<td class="calendar_days" roll="button"></td>
					<td class="calendar_days" roll="button"></td>
					<td class="calendar_days" roll="button"></td>
				</tr>
				<tr>
					<!-- 달력 다섯 번째 줄-->
					<td class="calendar_days" roll="button"></td>
					<td class="calendar_days" roll="button"></td>
					<td class="calendar_days" roll="button"></td>
					<td class="calendar_days" roll="button"></td>
					<td class="calendar_days" roll="button"></td>
					<td class="calendar_days" roll="button"></td>
					<td class="calendar_days" roll="button"></td>
				</tr>
				<tr>
					<!-- 달력 여섯 번째 줄-->
					<td class="calendar_days" roll="button"></td>
					<td class="calendar_days" roll="button"></td>
					<td class="calendar_days" roll="button"></td>
					<td class="calendar_days" roll="button"></td>
					<td class="calendar_days" roll="button"></td>
					<td class="calendar_days" roll="button"></td>
					<td class="calendar_days" roll="button"></td>
				</tr>
				<tr align="center">
					<td colspan="7">Stay <input type="text" name="stay" id="stay"></td>
				</tr>
				<tr align="center">
					<td colspan="7"><div class="reserve_button">
							<button>날짜 선택</button>
						</div></td>
				</tr>
			</tbody>
		</table>
		<button class="right_button">></button>
		<button id="close">X</button>
	</div>
	<div id="room_img"><img src="https://a0.muscache.com/im/pictures/c3628846-4661-4767-8f50-3fb2c0286009.jpg?im_w=720"></div>
	
	<table class="icon_box">
		<tr>
			<td><div class="icon" id="parking">
				<img src="assets/icons/parking.png" class="icon_img"><br>Parking
			</div></td> 
			<td><div class="icon" id="wifi"><img src="assets/icons/wifi.png" class="icon_img"><br>Wifi</div></td>
			<td><div class="icon" id="cvs"><img src="assets/icons/CVS.png" class="icon_img"><br>CVS</div></td>
			<td><div class="icon" id="breakfast"><img src="assets/icons/breakfast.png" class="icon_img"><br>breakfast</div></td>
			<td><div class="icon" id="fitness"><img src="assets/icons/fitness.png" class="icon_img"><br>fitness</div></td>
		</tr>
	</table>
	
	<table id="reviews_table">
		<tr>
			<td><div class="review_box">
					<table class="review_table">
						<tr><td>123</td></tr>
						<tr><td>456342542512213252313231233132313253132141121212</td></tr>
					</table>
				</div>
			</td>
			<td><div class="review_box">
					<table class="review_table">
						<tr><td>123</td></tr>
						<tr><td>456342542512213252313231233132313253132141121212</td></tr>
					</table>
				</div>
			</td>
			<td><div class="review_box">
					<table class="review_table">
						<tr><td><%= usd %></td></tr>
						<tr><td>456342542512213252313231233132313253132141121212</td></tr>
					</table>
				</div>
			</td>
		</tr>
	</table>
	
	
	<br>
	<div id="line1"></div>
	<br/>
	<p align="center"><%=room.getAc_addr()%></p>
	<br/>
	<div id="map"></div>
	
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=49e2de493238c37625e7720abfeb4e73&libraries=services"></script>
	
	
	<script src="assets/js/Calendar.js"></script>
	<script src="assets/js/hotelChoice.js"></script>
	
	
</body>
</html>