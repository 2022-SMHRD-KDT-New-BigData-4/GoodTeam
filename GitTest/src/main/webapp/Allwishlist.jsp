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
	
	<div class="total">
      <div class="main">
		<div class="sub1_main">
			<div class="img_main">
				<div class="img_main_head">
					<h1>Stays You Just Saw</h1>
				</div>
				<div class="img_main_img">
				</div>
				<div class="img_main_head">
				</div>
			</div>
		</div>
		<div class="sub2_main">
            <div class="room">
				<div class="room_contents">
					<div class="room_img">
						<img src="img/Lara1.png" alt="Image" class="room_imgs">
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