<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.smhrd.model.ReviewsVO"%>
<%@page import="javax.security.auth.message.callback.PrivateKeyCallback.Request"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="com.smhrd.model.CustomersVO"%>
<%@page import="com.smhrd.model.RoomsVO"%>
<%@page import="com.smhrd.model.AmentiesVO"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.model.AccommodationsVO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hotel Room Choice</title>
<link rel="stylesheet" href="assets/css/reset.css">
<link rel="stylesheet" href="assets/css/hotelChoice.css">
<link rel="stylesheet" href="assets/css/bar2.css">
<!--  -->
</head>
<body>
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
	List<ReviewsVO> rv = (List<ReviewsVO>) request.getAttribute("reviews");
	%>
	<%
	session.setAttribute("room_seq", roopri.getRoom_seq());
	%>
	<div class="main">
	<img  src="seoul2.jpg">
		<!-- 상단바 -->
		<div class="bar_home">
			<!-- 1. 홈  -->
			<div class="home">
				<h1 class="has">HOW ABOUT SEOUL ?</h1>
				</div>
			<!-- 홈  -->

			<!-- 2. 페이지 -->
			<div class="page">
				<h3> > main</h3>
				</div>
			<!-- 페이지 -->

			<!-- 3. 검색놈들 -->
			<div class="searchicon">
				<!-- 3-1. 검색바 -->
				<div class="search">
					<!-- 3-2. 돋보기 -->
					<div class="icon2">
						<img class="iconimg" src="assets/images/searchicon.png">
					</div>
					<!-- 돋보기 -->

				</div>
				<!-- 검색바 -->
			</div>
			<!-- 검색놈들 -->

				<!-- 4. 오른쪽 박스-->
				<div class="right1">
				
					<!-- 메뉴0 환율-->
					<div class="dropdown">
						<button class="dropbtn"> 
							<a class="dropbtn_icon">USD</a>
						</button>
						 <div class="dropdown-content">
		                  <a href="#">USD - US Dollar</a>
		                  <a href="#">GBP - British Pound</a>
		                  <a href="#">JPY - Japanese Yen</a>
		                  <a href="#">EUR - Euro</a>
                		</div>
					</div><!-- login -->
					
					<!-- 메뉴1 login-->
					<div class="log">
						<a class="a">log in</a>
					</div><!-- login -->
				

					<!-- 메뉴2 qna-->
					<div class="qna">
						<a class="a">Contact Us</a>
					</div>
					<!-- qna -->
					
					<!-- 메뉴3 profile-->
					<div class="profilebox">
						<a href="MyInfo.do">
			            </a>
			            	<div class="head"></div>
			            	<div class="p_body"></div>
					</div><!-- profile -->
					
				</div><!-- 오른쪽 박스 -->
		</div>
		<!-- 상단바 -->

		<!-- 중앙 -->
		<div class="sub11">
			<!-- 4-1.컨텐츠 담을 박스 -->
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
			         <td><span id="price"><%=roopri.getRoom_price_l()%></span> won </td>
			      </tr>
			      <tr>
			         <td>(<span id="ppd"><%=roopri.getRoom_price_l()%></span> won) per day</td>
			      </tr>
			      <tr></tr> 
			      <tr></tr> 
			      <tr></tr> 
			      <tr>
			         <td height="40px" align="center"><a href="WishlistAdd.do"><div class="wish btn">Wish</div></a></td>
			      </tr>
			      <tr>
			         <td height="40px" align="center"><a href="#"><div class="res btn">Book</div></a></td>
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
			         <td>
			         	<div class="icon3" id="parking">
			            <img src="assets/icons/parking.png" class="icon_img"><br>Parking
			         	</div>
			         </td> 
			         <td>
			         	<div class="icon3" id="wifi">
			         	<img src="assets/icons/wifi.png" class="icon_img"><br>Wifi
			         	</div>
			         </td>
			         <td><div class="icon3" id="cvs"><img src="assets/icons/CVS.png" class="icon_img"><br>CVS</div></td>
			         <td><div class="icon3" id="breakfast"><img src="assets/icons/breakfast.png" class="icon_img"><br>breakfast</div></td>
			         <td><div class="icon3" id="fitness"><img src="assets/icons/fitness.png" class="icon_img"><br>fitness</div></td>
			      </tr>
			   </table>
				
				
				<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=49e2de493238c37625e7720abfeb4e73&libraries=services"></script>
				
				<table id="reviews_table">
			      <tr>
			         <td><div class="review_box">
			               <table class="review_table">
			                  <tr><td><% 
			                  if(rv.get(0).getReview_ratings() != null){
			                     out.print(rv.get(0).getReview_ratings());
			                  }
			                   %></td></tr>
			                  <tr><td><% 
			                  if(rv.get(0).getReview_cont() != null){
			                     out.print(rv.get(0).getReview_cont());
			                  }
			                   %></td></tr>
			               </table>
			            </div>
			         </td>
			         <td><div class="review_box">
			               <table class="review_table">
			                  <tr><td><% 
			                  if(rv.get(1).getReview_ratings() != null){
			                     out.print(rv.get(1).getReview_ratings());
			                  }
			                   %></td></tr>
			                  <tr><td><% 
			                  if(rv.get(1).getReview_cont() != null){
			                     out.print(rv.get(1).getReview_cont());
			                  }
			                   %></td></tr>
			               </table>
			            </div>
			         </td>
			         <td><div class="review_box">
			               <table class="review_table">
			                  <tr><td><% 
			                  if(rv.get(2).getReview_ratings() != null){
			                     out.print(rv.get(2).getReview_ratings());
			                  }
			                   %></td></tr>
			                  <tr><td><% 
			                  if(rv.get(2).getReview_cont() != null){
			                     out.print(rv.get(2).getReview_cont());
			                  }
			                   %></td></tr>
			               </table>
			            </div>
			         </td>
			      </tr>
			   </table>
				
				 <br>
				   <div id="line1"></div>
				   <br/>
				   <p align="center" id="addr"><%=room.getAc_addr()%></p>
				   <br/>
				   <div id="map"></div>
					
		</div>
		<!-- 컨텐츠 담을 박스 -->
		</div>
		<!-- 가운데 -->






</body>

				<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=49e2de493238c37625e7720abfeb4e73&libraries=services"></script>
				
				<script src="assets/js/Calendar.js"></script>
				<script src="assets/js/hotelChoice.js"></script>
</html>