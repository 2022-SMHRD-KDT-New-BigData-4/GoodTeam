<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.smhrd.controller.Crawling_Currency"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Forgot Access</title>
<script src="assets/js/jquery-3.6.3.min.js"></script>
<link rel="stylesheet" href="assets/css/aa.css">
<link rel="stylesheet" href="assets/css/reset.css">
<link rel="stylesheet" href="assets/css/recommand.css" >
</head>

<body>
<div class="container">
	<header>
        <!--상단바-->
        
        <div class = "bar">
          <div class="bar_home">
			<!-- 1. 홈  -->
			<div class="home">
				<a class="has" href="GoMain.do">HOW ABOUT SEOUL ?</a>
				</div>
			<!-- 홈  -->

			<!-- 2. 페이지 -->
			<div class="page">
				<h3 class="pagetext"> > Forgot Access</h3>
				</div>
			<!-- 페이지 -->

			<!-- 3. 검색놈들 -->
			<div class="searchicon">
				<!-- 3-1. 검색바 -->
				<form action="Search.do" method="post" id="searchBox">
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
		                  <a href="#" id="usd">USD - US Dollar</a>
		                  <a href="#" id="gbp">GBP - British Pound</a>
		                  <a href="#" id="jpy">JPY - Japanese Yen</a>
		                  <a href="#" id="eur">EUR - Euro</a>
                		</div>
					</div><!-- login -->
					
					<!-- 메뉴1 login-->
				<div class="log">
					<a class="a" href="Recommand.do">Recommand</a>
				</div>
				<!-- login -->
            

               <!-- 메뉴2 qna-->
               <div class="qna">
                  <a class="a" href="#">Contact Us</a>
               </div>
               <!-- qna -->
               
               <!-- 메뉴3 profile-->
              
	               <div class="profilebox">
							
			               <div class="head"></div>
			               <div class="p_body"></div>
		               <a class="aaaa" href="#"></a>
	               </div><!-- profile -->
				</div><!-- 오른쪽 박스 -->	
        </div><!--상단바-->
    </header>
    

	<form class="formm" action ="#" method ="post" name="find_fr">
		<div class="main1">
        <div class ="sub1">
            <h1 class="h1">HOT PLACE</h1>      
        </div>
        <div class ="sub2">
            <div class="contents">
                <a href=""><img class="tr" src="../images/img/추천핫플레이스1.png" alt=""></a>
            </div>
        </div>
        <div class ="sub2">
            <div class="contents">
                <a href=""><img class="tr" src="../images/img/추천핫플레이스2.png" alt=""></a>
            </div>
        </div>
        <div class ="sub2">
            <div class="contents">
                <a href=""><img class="tr" src="../images/img/추천핫플레이스3.png" alt=""></a>
            </div>
        </div>
    </div>
    <div class="main2">
        <div class ="sub1">
            <h1 class="h1">RESTAURANT</h1>
        </div>
        <div class ="sub2">
            <div class="contents">
                <a href=""><img class="tr" src="../images/img/추천맛집1.png" alt=""></a>
            </div>
        </div>
        <div class ="sub2">
            <div class="contents">
                <a href=""><img class="tr" src="../images/img/추천맛집2.png" alt=""></a>
            </div>
        </div>
        <div class ="sub2">
            <div class="contents">
                <a href=""><img class="tr" src="../images/img/추천맛집3.png" alt=""></a>
            </div>
        </div>
    </div>
    <div class="main3">
        <div class ="sub1">
            <h1 class="h1">COURSE</h1>
        </div>
        <div class ="sub2">
            <div class="contents">
                <a href="https://korean.visitseoul.net/mvp/%EC%84%9C%EC%9A%B8%EC%9D%98%EC%97%AD%EC%82%AC%EC%99%80%EB%AC%B8%ED%99%94%EB%A5%BC%EC%95%8C%EA%B3%A0%EC%8B%B6%EB%8B%A4%EB%A9%B4/KON036599"><img class="tr" src="assets/images/img/문화여행.png" alt=""></a>
            </div>
        </div>
        <div class ="sub2">
            <div class="contents">
                <a href=""><img class="tr" src="../images/img/타임여행.png" alt=""></a>
            </div>
        </div>
        <div class ="sub2">
            <div class="contents">
                <a href=""><img class="tr" src="../images/img/한류여행.png" alt=""></a>
            </div>
        </div>
    </div>
		
	</form>		

</div>
</body>
</html>