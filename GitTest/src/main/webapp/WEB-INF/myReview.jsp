<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>myReviews</title>
</head>
<body>
<h1>리뷰 페이지</h1>
<form action="ReviewWrite.do" method="post">
	<input type="submit" value="리뷰 작성"><br/>
</form>

<form action="ReviewUpdate.do" method="post">
	<input type="submit" value="리뷰 수정"><br/>
</form>

<form action="ReviewDelete.do" method="post">
	<input type="submit" value="리뷰 삭제"><br/>
</form>
</body>
</html>