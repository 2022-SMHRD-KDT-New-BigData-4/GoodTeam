<%@page import="com.smhrd.model.RoomsVO"%>
<%@page import="com.smhrd.model.AccommodationsVO"%>
<%@page import="com.smhrd.model.ReviewsVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>myReviews</title>
</head>
<style>

@font-face{
	font-family: 'Cafe24아네보네에어', sans-serif;
}

body{
	background-image: url("assets/images/서울샘플이미지.png");
	background-repeat: no-repeat; background-size : cover;
	
}

.img {
	display: flex;
	width: 216px;
	height: 144px;
	vertical-align: top;
	margin-right: 10px;
}

img {
	width: 216px;
	height: 144px;
}

.acc {
	position: relative;
	display: flex;
}

.room_data {
	position: relative;
	display: flex;
	left: 226px;
	top: -80px;
}

.review_create {
	position: relative;
	display: flex;
	left: 100px;
	top: -0px;
}

textarea {
	width: 250px;
	height: 85px;
}

.review_create_box {
	position: relative;
	display: flex;
	top: 100px;
	left: 30%;
	width: 40%;
	padding: 20px;
	background-color: white;
	overflow: auto;
	/* 아이템을 정 한가운데로 옮김 */
	/* background-color: aqua; */
	box-shadow: 5px 5px 5px pink;
}

.Create_or_update {
	position: relative;
	display: flex;
	left: 45%
}

.review_modify_box {
	position: absolute;
	display: flex;
	left: 30%;
	width: 40%;
	border: 1px solid black;
	padding: 20px;
}

.Update {
	visibility: hidden;
}

.Up {
	display: inline;
	position: relative;
}

#bg_img {
	display: flex;
	position: absolute;
	z-index: -800;
	width: 100%;
	height: 100%;
	background-size: cover;
}

#bottom_area{
	display: flex;
	position: relative;
	width:100%;
	height:200px;
	bottom:0%;
	z-index:-400;
	
}

#back{
	display: flex;
	position: absolute;
	width: 40px;
	height: 30px;
	bottom: 10px;
	left: 45%;
	align-items:center;
	justify-content:center;
	background-color: pink;
	color: white;
}
</style>
<body>
	<%@ include file="bar.jsp"%>
	<div id="bg_img"></div>
	<div class="Create_or_update"></div>
	<%
	List<ReviewsVO> rv = (List<ReviewsVO>) request.getAttribute("reviewLst");
	List<List<AccommodationsVO>> lstlst = (List<List<AccommodationsVO>>) request.getAttribute("accLstLst");
	List<List<RoomsVO>> room = (List<List<RoomsVO>>) request.getAttribute("roomLst");
	%>
	<div class="review_create_box">
		<div clase="acc_data">
			<%
			for (int j = 0; j < lstlst.size(); j++) {
			%>
			<%
			if (rv.get(j).getReview_cont() == null) {
				for (AccommodationsVO k : lstlst.get(j)) {
			%>
			<div class="acc">
				<div class="img">
					<img src="assets\images\숙소\<%=j + 1%>.jpg">
				</div>
				<a href="ChoiceRoom.do?ac_seq=<%=k.getAc_seq()%>"><%=k.getAc_name()%>
				</a>
			</div>
			<%
			}
			%>
			<div class="room_data">
				<%=room.get(j).get(0).getRoom_nm()%>
				<br>
				<br>
				<%=room.get(j).get(0).getRoom_price_h()%><br>
			</div>
			<%
			}
			}
			%>
		</div>

		<div class="review_create">
			<%
			for (ReviewsVO i : rv) {
			%>
			<%
			if (i.getReview_cont() == null) {
			%>
			<form action="ReviewWrite.do" method="post">
				<input type="hidden" name="review_seq"
					value="<%=i.getReview_seq()%>"> <input type="text"
					name="review_ratings"><br>
				<textarea name="review_content"></textarea>
				<br> <input type="submit" value="작성하기"><br> <br>
				<br>
				<br>
				<%
				}
				}
				%>
			
		</div>
		<a href="MyInfo.do"><div id="back"><strong>back</strong></div></a>
	</div>
	<div id="bottom_area"></div>

	<!-- 여기까지 리뷰 작성 페이지 -->
</body>
</html>