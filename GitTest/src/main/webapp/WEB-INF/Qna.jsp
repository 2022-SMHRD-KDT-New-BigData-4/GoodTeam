<%@page import="com.smhrd.model.CustomersVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>서울 로컬</title>
<link rel="stylesheet" href="assets/css/reset.css">
<link rel="stylesheet" href="assets/css/bar2.css">
<style>
	.aaa{
   color: black;
   font-weight: bolder;
   text-decoration: none;
	}
	.text{
   position: inherit;
   top: 23%;
   left: 4%;
   width: 260px;
   height: 30px;
   font-size: larger;

}
.text1{
   position: inherit;
   top: 35%;
   left: 4%;
   width: 260px;
   height: 30px;
   font-size: larger;
}
.text2{
   position: inherit;
   top: 48%;
   left: 4%;
   width: 260px;
   height: 30px;
   font-size: larger;

}
.text3{
   position: inherit;
   top: 61%;
   left: 4%;
   width: 260px;
   height: 30px;
   font-size: larger;

}
.sub2{
   position: absolute;
   left: 3%;
   width: 50%;
   height: 100%;
}
</style>
</head>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>   
<!-- 상단바 a태그연결 & has 위치 & 연결 -->
<body>
<div class="c">
   <img src="assets/images/seoul2.jpg">
      <!-- 상단바 -->
      <div class="bar_home">
         <!-- 1. 홈  -->
			<div class="home">
				<a class="has" href="GoMain.do">HOW ABOUT SEOUL ?</a>
				</div>
			<!-- 홈  -->

         <!-- 2. 페이지 -->
         <div class="page">
            <h3> > mypage</h3>
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
			<%
				CustomersVO memberinfo = (CustomersVO) session.getAttribute("memberinfo");
				%>
      <!-- 중앙 -->
      <div class="">
         <!-- 4-1.컨텐츠 담을 박수 -->
         <div class="myinfo">
            <div class="profilebox1">
               <div class="head1"></div>
               <div class="p_body1"></div>
            </div>
            <div class="">
               <h4><%= memberinfo.getCust_name()%></h4>
            </div>
         </div>
            
            
            <div class="">
               <a class="" href="ReservationSelectAll.do">전체 조회 기능</a>
            </div>
            <div class="">
               <a class="" href="WishSelectAll.do">질문 기능</a>
            </div>
            <div class="">
               <a class="" href="ReviewCustSelect.do">내가 쓴 QNA 조회 기능</a>
            </div>
            <div class="">
               <a class="" >QNA 답변 기능</a>
            </div>
           
   
         <!-- 컨텐츠 담을 박스 -->
      </div>
      <!-- 가운데 -->

      </div>


</body>
</html>