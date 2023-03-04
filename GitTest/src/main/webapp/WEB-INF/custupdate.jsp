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
<%
				CustomersVO memberinfo = (CustomersVO) session.getAttribute("memberinfo");
				%>
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
				<h3> > Update</h3>
				</div>
			<!-- 페이지 -->

			<!-- 3. 검색놈들 -->
			<div class="searchicon">
				<!-- 3-1. 검색바 -->
				<form action="Search.do" method="post" id="searchBox" >
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

		<div class="sub1">
         <!-- 4-1.컨텐츠 담을 박수 -->
         <div class="sub4">
            <div class="profilebox12">
               <div class="head12"></div>
                 <div class="p_body15"></div>
	            <div class="nametag">
	               <h5><%=memberinfo.getCust_name()%></h5>
	         </div>
	         <div class="tre">
	            <div class="nm1">Name</div>
	            <div class="pw1">Password</div>
	            <div class="ph1">Phone</div>
	            <div class="e1">Email</div>
	            <div class="date">Join Date</div>
	            <div class="po1">Point</div>
	         </div>
            </div>
           
           <div class="sub2">
            <div class="text10">
               <input type="text" value='<%=memberinfo.getCust_name()%>' name= "name">
            </div>
            <div class="text11">
              <input type="password" value='<%=memberinfo.getCust_pw()%>' name="pw">
            </div>
            <div class="text12">
              <input type="text" value='<%=memberinfo.getCust_phone()%>' name="phone">
            </div>
            <div class="text13">
              <input type="text" value='<%=memberinfo.getCust_email()%>' name="email">
            </div>
            <div class="text14">
               <input type="text" readonly value='<%=memberinfo.getCust_joindate()%>' name="joindate">
            </div>
            <div class="text15">
               <input type="text" readonly value='<%=memberinfo.getCust_point()%>' name="point">
            </div>
            <div class="text16">
				<input type="submit" value="개인정보 수정">
            </div>
           </div><!-- sub2 --> 
         </div>
         <!-- 컨텐츠 담을 박스 -->
      </div>
      <!-- 가운데 -->




</body>
</html>