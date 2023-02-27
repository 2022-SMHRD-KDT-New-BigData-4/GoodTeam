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
					<img src="assets/images/서울샘플이미지.png" alt="Image" class="" >
				</div>
				<div class="img_main_foot">
				</div>
			</div>
		</div>
		<div class="sub2_main">
            <div class="room">
				<div class="room_contents">
					<div class="room_img">
						<img src="assets/images/숙소아이콘샘플.png" alt="Image" class="room_imgs">
					</div>
				</div>
			</div> 
            <div class="room">
				<div class="room_contents">
					<div class="room_img">
						<img src="img/Lara12.png" alt="Image" class="room_imgs">
					</div>
				</div>
			</div> 
            <div class="room">
				<div class="room_contents">
					<div class="room_img">
						<img src="img/Lara19.png" alt="Image" class="room_imgs">
					</div>
				</div>
			</div> 
			<div class="room">
				<div class="room_contents">
					<div class="room_img">
						<img src="img/Artist01.gif" alt="Image" class="room_imgs">
					</div>
				</div>
			</div> 
		</div>
      </div>  
	</div>
	

</body>
</html>