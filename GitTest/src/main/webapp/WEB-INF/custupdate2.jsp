<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.smhrd.model.CustomersVO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개인정보 수정</title>
<link rel="stylesheet" href="assets/css/reset.css">
<link rel="stylesheet" href="assets/css/custUpdate.css">
<link rel="stylesheet" href="assets/css/bar2.css">
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<!-- ★★a태그 똑바로 달기 & 상단바 수정 후 모든 페이지 복붙  -->
</head>
<body>
	<div class="c">
	<img  src="assets/images/seoul2.jpg">
		<!-- 상단바 -->
		<div class="bar_home">
			<!-- 1. 홈  -->
			<div class="home">
				<a class="has" href="GoMain.do">HOW ABOUT SEOUL ?</a>
				</div>
			<!-- 홈  -->

			<!-- 2. 페이지 -->
			<div class="page">
				<h3> > Login</h3>
				</div>
			<!-- 페이지 -->

			<!-- 3. 검색놈들 -->
			<div class="searchicon">
				<!-- 3-1. 검색바 -->
				<form action="Search.do" id="searchBox" >
					<div class="search">
						<input type="text" class="non" name="ac_addr">
						<!-- 3-2. 돋보기 -->
							<div class="icon" style="cursor:pointer" onclick="document.getElementById('searchBox').submit();">
							<img class="iconimg" src="assets/images/searchicon.png">
							
						</div>
						<!-- 돋보기 -->
					</div>
					<!-- 검색바 -->
				</form>
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
					<a class="a" href="Recommand.do">Recommand</a>
				</div>
				<!-- login -->
				

					<!-- 메뉴2 qna-->
					<div class="qna">
						<a class="a" href="QnaTotal.do" >Contact Us</a>
					</div>
					<!-- qna -->
					
					<!-- 메뉴3 profile-->
					<div class="profilebox">
						<a href="MyInfo.do" class="non1"></a>
			            	<div class="head"></div>
			            	<div class="p_body"></div>
					</div><!-- profile -->
				</div><!-- 오른쪽 박스 -->
		</div>
		<!-- 상단바 -->

		<!-- 중앙 -->
		<div class="sub1">
			<!-- 4-1.컨텐츠 담을 박스 -->
			<div class="s_center">
				<%
				CustomersVO memberinfo = (CustomersVO) session.getAttribute("memberinfo");
				%>
				<form class="table" action="CustSelect.do" method='post'>
					<table>
						<th>
						<input id="custID" type="text" readonly value='<%=memberinfo.getCust_id()%>' name="id"><br>
						</th>
						
						<tr>
							<td>사용자 이름 : </td>
							<td>
								사용자<input type="text" value='<%=memberinfo.getCust_name()%>' name= "name"><br>
							</td>
						</tr>
						<tr>
							<td>사용자 비밀번호 : </td>
							<td>
								<input type="password" value='<%=memberinfo.getCust_pw()%>' name="pw"><br>
							</td>
						</tr>
						<tr>
							<td>사용자 전화번호 : </td>
							<td>
								<input type="text" value='<%=memberinfo.getCust_phone()%>' name="phone"><br>
						</tr>
						<tr>
							<td>사용자 이메일	: </td>
							<td>
								<input type="text" value='<%=memberinfo.getCust_email()%>' name="email"><br>
						</tr>
						<tr>
							<td>사용자 가입일자 : </td>
							<td>
								<input type="text" readonly value='<%=memberinfo.getCust_joindate()%>' name="joindate"><br>
							</td>
						</tr>
						
						<tr>
							<td>사용자 포인트 번호 : </td>
							<td>
								<input type="text" readonly value='<%=memberinfo.getCust_point()%>' name="point"><br>
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<input type="submit" value="개인정보 수정">
							</td>
						</tr>
					</table>
				</form>
			</div><!-- s_center -->
		<!-- 컨텐츠 담을 박스 -->
		</div>
		<!-- 가운데 -->

		</div>

	<form action="CustSelect.do" method='post'>
		<input type="text" readonly value='<%=memberinfo.getCust_id()%>' name="id"><br>
		사용자 이름 : <input type="text" value='<%=memberinfo.getCust_name()%>' name= "name"><br>
		사용자 비밀번호 : <input type="password" value='<%=memberinfo.getCust_pw()%>' name="pw"><br>
		 사용자 전화번호 : <input type="text" value='<%=memberinfo.getCust_phone()%>' name="phone"><br>
		 사용자 이메일	: <input type="text" value='<%=memberinfo.getCust_email()%>' name="email"><br>
		사용자 가입일자 : <input type="text" readonly value='<%=memberinfo.getCust_joindate()%>' name="joindate"><br>
		 사용자 포인트 번호 : <input type="text" readonly value='<%=memberinfo.getCust_point()%>' name="point"><br> 
		<input type="submit" value="개인정보 수정">
		
	</form>




</body>
</html>