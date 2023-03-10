<%@page import="com.smhrd.model.JoinVO"%>
<%@page import="com.smhrd.controller.Crawling_Currency"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.smhrd.model.ReviewsVO"%>
<%@page
	import="javax.security.auth.message.callback.PrivateKeyCallback.Request"%>
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
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<!--  -->
<style>
.img111 {
    height: -webkit-fill-available;
    width: 10000px !important;
    margin: 0 auto;
    padding: 0;
    overflow: hidden;
    position: relative;
}
.hoho{
	font-size: x-large;
    position: absolute;
}
</style>
</head>
<body>
	<%
	CustomersVO memberinfo = (CustomersVO) session.getAttribute("memberinfo");
	%>
	<%
	JoinVO ChoiceRoom = (JoinVO) request.getAttribute("ChoiceRoom");
	

	
	
	List<AccommodationsVO> roominfo = (List<AccommodationsVO>) request.getAttribute("roominfo");
	AccommodationsVO room = roominfo.get(0);
	List<AmentiesVO> roomamen = (List<AmentiesVO>) request.getAttribute("roomamen");
	AmentiesVO rooma = roomamen.get(0);
	List<RoomsVO> roomprice = (List<RoomsVO>) request.getAttribute("roomprice");
	RoomsVO roompri = roomprice.get(0);
	List<ReviewsVO> rv = (List<ReviewsVO>) request.getAttribute("reviews");
	%>
	<%
	session.setAttribute("room_seq", ChoiceRoom.getRoom_seq());
	%>
	<div class="main">
		<img class="img111" src="seoul2.jpg">
		<!-- ????????? -->
		<div class="bar_home">
			<!-- 1. ???  -->
			<div class="home">
				<a class="has" href="GoMain.do">HOW ABOUT SEOUL ?</a>
				</div>
			<!-- ???  -->

			<!-- 2. ????????? -->
			<div class="page">
				<h3>> Reservation</h3>
			</div>
			<!-- ????????? -->

			<!-- 3. ???????????? -->
			<div class="searchicon">
				<!-- 3-1. ????????? -->
				<form action="Search.do" id="searchBox" >
					<div class="search">
						<input type="text" class="non" name="ac_addr">
						<!-- 3-2. ????????? -->
							<div class="icon" style="cursor:pointer" onclick="document.getElementById('searchBox').submit();">
							<img class="iconimg" src="assets/images/searchicon.png">
							
						</div>
						<!-- ????????? -->
					</div>
					<!-- ????????? -->
				</form>
			</div>
			<!-- ???????????? -->

			<!-- 4. ????????? ??????-->
			<div class="right1">

				<!-- ??????0 ??????-->
				<div class="dropdown">
					<button class="dropbtn">
						<a class="dropbtn_icon">USD</a>
					</button>
					<div class="dropdown-content">
						<a href="#" id="usd">USD - US Dollar</a> <a href="#" id="gbp">GBP
							- British Pound</a> <a href="#" id="jpy">JPY - Japanese Yen</a> <a
							href="#" id="eur">EUR - Euro</a>
					</div>
				</div>
				
				<!-- ??????1 login-->
					<div class="log">
						<a class="a" href="Recommand.do">Recommand</a>
					</div><!-- login -->
				

					<!-- ??????2 qna-->
					<div class="qna">
						<a class="a" href="QnaTotal.do" >Contact Us</a>
					</div>
					<!-- qna -->
					
					<!-- ??????3 profile-->
					<div class="profilebox">
						<a href="MyInfo.do" class="non1"></a>
			            	<div class="head"></div>
			            	<div class="p_body"></div>
					</div><!-- profile -->
				</div><!-- ????????? ?????? -->
		</div>
		<!-- ????????? -->

		<!-- ?????? -->
		<div class="sub11">
			<!-- 4-1.????????? ?????? ?????? -->
			<div class="room_name">
				<h1 class="hoho"><%=room.getAc_name()%></h1>
				<!-- ????????? -->
			</div>
			<div id="scroll_area">
				<table id="re_scroll">
					<tr>
						<td class="re_date"></td>
					</tr>
					<tr>
						<td></td>
						<!-- ??? ?????? -->
					</tr>
					<tr>
						<td><span class="won">??? </span><span id="price" class="price"><%=ChoiceRoom.getRoom_price_l()%></span>
						</td>
					</tr>
					<tr>
						<td>(<span class="won">??? </span><span id="ppd" class="price"><%=ChoiceRoom.getRoom_price_l()%></span>)
							per day
						</td>
					</tr>
					<tr></tr>
					<tr></tr>
					<tr></tr>
					<tr>
						<td height="40px" align="center"><a class="ii" href="WishlistAdd.do">
						<div class="wish btn">Wish</div></a></td>
					</tr>
					<tr>
						<td height="40px" align="center"><a href="Reservation.do?total_amount=<%=ChoiceRoom.getRoom_price_l()%>&checkin=${param.checkIn}&checkout=${param.checkOut}&room_seq=<%=ChoiceRoom.getRoom_seq() %>"><div
									class="res btn">Book</div></a></td>
					</tr>
				</table>
			</div>

			<a href="#"><div id="calendarButton">Show Calendar</div></a>

			<div class="calendar_container hide">
				<button class="left_button">&lt</button>

				<table class="calendar">
					<th class="title">2???</th>
					<tbody>
						<tr class="week">
							<td class="day">???</td>
							<td class="day">???</td>
							<td class="day">???</td>
							<td class="day">???</td>
							<td class="day">???</td>
							<td class="day">???</td>
							<td class="day">???</td>
						</tr>
						<tr>
							<!-- ?????? ??? ?????? ???-->
							<td class="calendar_days" roll="button"></td>
							<td class="calendar_days" roll="button"></td>
							<td class="calendar_days" roll="button"></td>
							<td class="calendar_days" roll="button"></td>
							<td class="calendar_days" roll="button"></td>
							<td class="calendar_days" roll="button"></td>
							<td class="calendar_days" roll="button"></td>
						</tr>
						<tr>
							<!-- ?????? ??? ?????? ???-->
							<td class="calendar_days" roll="button"></td>
							<td class="calendar_days" roll="button"></td>
							<td class="calendar_days" roll="button"></td>
							<td class="calendar_days" roll="button"></td>
							<td class="calendar_days" roll="button"></td>
							<td class="calendar_days" roll="button"></td>
							<td class="calendar_days" roll="button"></td>
						</tr>
						<tr>
							<!-- ?????? ??? ?????? ???-->
							<td class="calendar_days" roll="button"></td>
							<td class="calendar_days" roll="button"></td>
							<td class="calendar_days" roll="button"></td>
							<td class="calendar_days" roll="button"></td>
							<td class="calendar_days" roll="button"></td>
							<td class="calendar_days" roll="button"></td>
							<td class="calendar_days" roll="button"></td>
						</tr>
						<tr>
							<!-- ?????? ??? ?????? ???-->
							<td class="calendar_days" roll="button"></td>
							<td class="calendar_days" roll="button"></td>
							<td class="calendar_days" roll="button"></td>
							<td class="calendar_days" roll="button"></td>
							<td class="calendar_days" roll="button"></td>
							<td class="calendar_days" roll="button"></td>
							<td class="calendar_days" roll="button"></td>
						</tr>
						<tr>
							<!-- ?????? ?????? ?????? ???-->
							<td class="calendar_days" roll="button"></td>
							<td class="calendar_days" roll="button"></td>
							<td class="calendar_days" roll="button"></td>
							<td class="calendar_days" roll="button"></td>
							<td class="calendar_days" roll="button"></td>
							<td class="calendar_days" roll="button"></td>
							<td class="calendar_days" roll="button"></td>
						</tr>
						<tr>
							<!-- ?????? ?????? ?????? ???-->
							<td class="calendar_days" roll="button"></td>
							<td class="calendar_days" roll="button"></td>
							<td class="calendar_days" roll="button"></td>
							<td class="calendar_days" roll="button"></td>
							<td class="calendar_days" roll="button"></td>
							<td class="calendar_days" roll="button"></td>
							<td class="calendar_days" roll="button"></td>
						</tr>
						<tr align="center">
							<td colspan="7">Stay <input type="text" name="stay"
								id="stay"></td>
						</tr>
						<tr align="center">
							<td colspan="7"><div class="reserve_button">
									<button>?????? ??????</button>
								</div></td>
						</tr>
					</tbody>
				</table>
				<button class="right_button">></button>
				<button id="close">X</button>
			</div>

			<div id="room_img">
				<img
					src="https://a0.muscache.com/im/pictures/c3628846-4661-4767-8f50-3fb2c0286009.jpg?im_w=720">
			</div>

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
					<td><div class="icon3" id="cvs">
							<img src="assets/icons/CVS.png" class="icon_img"><br>CVS
						</div></td>
					<td><div class="icon3" id="breakfast">
							<img src="assets/icons/breakfast.png" class="icon_img"><br>breakfast
						</div></td>
					<td><div class="icon3" id="fitness">
							<img src="assets/icons/fitness.png" class="icon_img"><br>fitness
						</div></td>
				</tr>
			</table>


			<script type="text/javascript"
				src="//dapi.kakao.com/v2/maps/sdk.js?appkey=49e2de493238c37625e7720abfeb4e73&libraries=services"></script>

			<table id="reviews_table">
				<tr>
					<td><div class="review_box">
							<table class="review_table">
								<tr>
									<td>
										<% 
			                  if(rv.get(0).getReview_ratings() != null){
			                     out.print(rv.get(0).getReview_ratings());
			                  }
			                   %>
									</td>
								</tr>
								<tr>
									<td>
										<% 
			                  if(rv.get(0).getReview_cont() != null){
			                     out.print(rv.get(0).getReview_cont());
			                  }
			                   %>
									</td>
								</tr>
							</table>
						</div></td>
					<td><div class="review_box">
							<table class="review_table">
								<tr>
									<td>
										<% 
			                  if(rv.get(1).getReview_ratings() != null){
			                     out.print(rv.get(1).getReview_ratings());
			                  }
			                   %>
									</td>
								</tr>
								<tr>
									<td>
										<% 
			                  if(rv.get(1).getReview_cont() != null){
			                     out.print(rv.get(1).getReview_cont());
			                  }
			                   %>
									</td>
								</tr>
							</table>
						</div></td>
					<td><div class="review_box">
							<table class="review_table">
								<tr>
									<td>
										<% 
			                  if(rv.get(2).getReview_ratings() != null){
			                     out.print(rv.get(2).getReview_ratings());
			                  }
			                   %>
									</td>
								</tr>
								<tr>
									<td>
										<% 
			                  if(rv.get(2).getReview_cont() != null){
			                     out.print(rv.get(2).getReview_cont());
			                  }
			                   %>
									</td>
								</tr>
							</table>
						</div></td>
				</tr>
			</table>

			<br>
			<div id="line1"></div>
			<br />
			<p align="center" id="addr"><%=room.getAc_addr()%></p>
			<br />
			<div id="map"></div>

		</div>
		<!-- ????????? ?????? ?????? -->
	</div>
	<!-- ????????? -->






</body>

<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=49e2de493238c37625e7720abfeb4e73&libraries=services"></script>

<script src="assets/js/Calendar.js"></script>
<script src="assets/js/hotelChoice.js"></script>

<%  
		 	Crawling_Currency servlet = new Crawling_Currency();
	    	servlet.service(request, response);
    
			double usd = (double) session.getAttribute("usd"); 
			double jpy = (double) session.getAttribute("jpy"); 
			double eur = (double) session.getAttribute("eur"); 
			double gbp = (double) session.getAttribute("gbp");
		
	%>

	<script type="text/javascript">
	
	var initialValues = [];
	// ??? ????????? ???????????? ????????? ??????
	$(window).on('load', function() {
	  $('.price').each(function() {
	    var currentValue = $(this).text();
	    initialValues.push(currentValue);
	  });
	  console.log(initialValues);
	});

	
	$('#usd').on('click',()=>{
		$('.dropbtn_icon').text('USD');
		 $('.price').each(function(index, element) {
		        var currentValue = initialValues[index]; // ????????? ????????? ?????? ?????????
		        var calculatedValue = currentValue / <%=usd%>; // ????????? ?????? ?????????
		        $(this).text("$ " + calculatedValue.toFixed(2)); // ????????? ?????? ?????? ????????? ????????? ??????
		        $('.won').remove();
		    });
	});
	$('#jpy').on('click',()=>{
		$('.dropbtn_icon').text('JPY');
		 $('.price').each(function(index, element) {
		        var currentValue = initialValues[index]; // ????????? ????????? ?????? ?????????
			  var calculatedValue = currentValue / <%=jpy%>; // ????????? ?????? ?????????
			  $('.won').remove();

			  
			  // ????????? ?????? ?????? ????????? ????????? ??????
			  $(this).text("??? " + calculatedValue.toFixed(2));
			});
	})
	$('#eur').on('click',()=>{
		$('.dropbtn_icon').text('EUR');
		 $('.price').each(function(index, element) {
		        var currentValue = initialValues[index]; // ????????? ????????? ?????? ?????????
			  var calculatedValue = currentValue / <%=eur%>; // ????????? ?????? ?????????
			  $('.won').remove();

			  // ????????? ?????? ?????? ????????? ????????? ??????
			  $(this).text("??? " + calculatedValue.toFixed(2));
			});
		
	})
	$('#gbp').on('click',()=>{
		$('.dropbtn_icon').text('GBP');
		 $('.price').each(function(index, element) {
		        var currentValue = initialValues[index]; // ????????? ????????? ?????? ?????????
			  var calculatedValue = currentValue / <%=gbp%>; // ????????? ?????? ?????????
			  // ????????? ?????? ?????? ????????? ????????? ??????
			  

			  $('.won').remove();
			  $(this).text("??? " + calculatedValue.toFixed(2));
			});

	})
				
				function usd() {
					  let urlParams = new URLSearchParams(window.location.search);
						
						let date1 = new Date(urlParams.get('checkIn'))
						let date2 = new Date(urlParams.get('checkOut'))
						console.log((date2 - date1) / (24 * 3600 * 1000)) 
						$('#price').text("$ " + (price * (date2 - date1) / (24 * 3600 * 1000) / <%= usd %>).toFixed(2))
					}
				
				function jpy() {
					  let urlParams = new URLSearchParams(window.location.search);
						
						let date1 = new Date(urlParams.get('checkIn'))
						let date2 = new Date(urlParams.get('checkOut'))
						console.log((date2 - date1) / (24 * 3600 * 1000)) 
						$('#price').text("??? " + (price * (date2 - date1) / (24 * 3600 * 1000) / <%= jpy %>).toFixed(2))
					}
				
				function gbp() {
					  let urlParams = new URLSearchParams(window.location.search);
						
						let date1 = new Date(urlParams.get('checkIn'))
						let date2 = new Date(urlParams.get('checkOut'))
						console.log((date2 - date1) / (24 * 3600 * 1000)) 
						$('#price').text("??? " + (price * (date2 - date1) / (24 * 3600 * 1000) / <%= gbp %>).toFixed(2))
					}
				
				function eur() {
					  let urlParams = new URLSearchParams(window.location.search);
						
						let date1 = new Date(urlParams.get('checkIn'))
						let date2 = new Date(urlParams.get('checkOut'))
						console.log((date2 - date1) / (24 * 3600 * 1000)) 
						$('#price').text("??? " + (price * (date2 - date1) / (24 * 3600 * 1000) / <%= eur %>).toFixed(2))
					}
				let urlParams = new URLSearchParams(window.location.search);	
				let date1 = new Date(urlParams.get('checkIn'))
				let date2 = new Date(urlParams.get('checkOut'))
				console.log((date2 - date1) / (24 * 3600 * 1000))
				$('#price').text((price * (date2 - date1) / (24 * 3600 * 1000)).toFixed(2))
				
				
						$('#usd').on('click', usd)
						$('#jpy').on('click', jpy)
						$('#gbp').on('click', gbp)
						$('#eur').on('click', eur)
				</script>
</html>