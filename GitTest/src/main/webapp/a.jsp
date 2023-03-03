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
<link rel="stylesheet" href="bar2.css">

</head>
<body>

	<!-- wishlist list 불러와서 for문 돌리기 + import 되어있는지 확인-->
	<div class="total">
		<div class="main">
			<div class="sub1_main">
				<div class="img_main">
					<div class="img_main_head">
						<h1>Wish List</h1>
					</div>

					<div class="img_main_img">
						<img id="nullimg" src="assets/images/숙소아이콘샘플.png" alt="">
					</div>
					<div class="img_main_foot">
						<!-- 호텔명 입력받아 오기 -->
						<h1 id="hotel">호텔명</h1>
					</div>
				</div>
			</div>
			<div class="sub2_main">
				<!-- 방 시작 -->
				<div class="room">
					<div class="room_contents">
						<div class="room_img">
							<img src="" alt="Image"
								class="room_imgs">
						</div>
						<div class="room_contents_info">
							<div class="room_contents_infos"></div>
						</div>
						<!-- 방   끝 -->


						<%
						List<JoinVO> wishlist = (List<JoinVO>) request.getAttribute("wishlist");
						for (JoinVO vo : wishlist) {
						%>


					</div>
				</div>
				<div class="room">
					<div class="room_contents">
						<div class="room_img">
							<img src="assets/images/<%=vo.getAc_img3()%>" alt="Image"
								class="room_imgs">
						</div>
						<div class="room_contents_info">
							<input class="ac_name" type="hidden"
								value="<%=vo.getAc_name()%>">
							<div class="room_contents_infos">
								<p>
									객실명 :
									<%=vo.getRoom_nm()%></p>
								<p>
									성수기 가격 :
									<%=vo.getRoom_price_h()%></p>
								<p>
									비성수기 가격 :
									<%=vo.getRoom_price_l()%></p>
								<p>
									예약가능여부 :
									<%=vo.getReserv_yn()%></p>
								<p>
									날짜 :
									<%=vo.getReg_date()%></p>

							<a href="WishlistDel.do?wish_seq=<%=vo.getWish_seq()%>&ac_seq=<%= vo.getAc_seq()%>">book</a>
							</div>
						</div>
						<%
						}
						%>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="assets/js/jquery-3.6.3.min.js"></script>
	<script type="text/javascript">
	$(".room").mouseover(function(){
	    var acName = $(this).find('.ac_name').val();
	    $("#hotel").text("호텔명 : "+acName);
	});
	$(".room").mouseout(function(){
	    $("#hotel").text("호텔명");
	});
	</script>
</body>
</html>