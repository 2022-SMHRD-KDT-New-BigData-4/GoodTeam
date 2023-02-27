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
<link rel="stylesheet" href="assets/css/Allwishlist.css" >

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
					<img src="#" alt="Image">
				</div>
				<div class="img_main_foot">
				
				<!-- 호텔명 입력받아 오기 -->
					<h1>호텔명을 입력해주세요~~</h1>
				</div>
			</div>
		</div>
		<div class="sub2_main">
            <div class="room">
				<div class="room_contents">
					<div class="room_img">
						<img src="assets/images/숙소아이콘샘플.png" alt="Image" class="room_imgs">
					</div>
					<div class="room_contents_info">
						<div class="room_contents_infos">
							<p>객실명</p>
							<p>성수기 가격</p>
							<p>비성수기 가격</p>
							<p>예약가능여부</p>
							<p>날짜</p>
						</div>
					</div> 
					
				</div>
			</div> 
            <div class="room">
				<div class="room_contents">
					<div class="room_img">
						<img src="assets/images/숙소아이콘샘플.png" alt="Image" class="room_imgs">
					</div>
					<div class="room_contents_info">
						<div class="room_contents_infos">
							<p>객실명</p>
							<p>성수기 가격</p>
							<p>비성수기 가격</p>
							<p>예약가능여부</p>
							<p>날짜</p>
						</div>
						
					</div> 
				</div>
			</div> 
            <div class="room">
				<div class="room_contents">
					<div class="room_img">
						<img src="assets/images/숙소아이콘샘플.png" alt="Image" class="room_imgs">
					</div>
					<div class="room_contents_info">
						<div class="room_contents_infos">
							<p>객실명</p>
							<p>성수기 가격</p>
							<p>비성수기 가격</p>
							<p>예약가능여부</p>
							<p>날짜</p>
						</div>
						
					</div> 
				</div>
			</div> 
			<div class="room">
				<div class="room_contents">
					<div class="room_img">
						<img src="img/Artist01.gif" alt="Image" class="room_imgs">
					</div>
					<div class="room_contents_info">
						<div class="room_contents_infos">
							<p>객실명</p>
							<p>성수기 가격</p>
							<p>비성수기 가격</p>
							<p>예약가능여부</p>
							<p>날짜</p>
						</div>
						
					</div> 
				</div>
			</div> 
		</div>
      </div>  
	</div>
	

</body>
</html>