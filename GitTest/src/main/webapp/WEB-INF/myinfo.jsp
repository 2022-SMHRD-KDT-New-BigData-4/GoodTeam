<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mypage</title>
</head>
<body>
<h1>my info 페이지</h1>

<form action="ReservationSelectAll.do" method="post">
	<input type="submit" value="예약확인"><br/>
</form>
<form action="WishSelectAll.do" method="post">
	<input type="submit" value="위시리스트"><br/>
</form>
<form action="MyReview.do" method="post">
	<input type="submit" value="마이리뷰"><br/>
</form>
<form action="QnaTotal.do" method="post">
	<input type="submit" value="문의하기"><br/>
</form>
<form action="CustSelect.do" method="post">
	<input type="submit" value="회원정보수정"><br/>
</form>
<form action="" method="post">
	<input type="submit" value="로그아웃"><br/>
</form>
</body>
</html>