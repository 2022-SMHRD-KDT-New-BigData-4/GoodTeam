<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact Us</title>
</head>
<body>
<h1>나 문희하기 페이지</h1><br/>

<form action="Qna_select_all.do" method="post">
	<input type="submit" value="QNA 전체 조회 기능"><br/>
</form>

<form action="Qna_insert.do" method="post">
	<input type="submit" value="QNA 질문 기능"><br/>
</form>

<form action="Qna_select.do" method="post">
	<input type="submit" value="내가 쓴 QNA 조회 기능"><br/>
</form>

<form action="Qna_a.do" method="post">
	<input type="submit" value="QNA 답변 기능"><br/>
</form>

</body>
</html>