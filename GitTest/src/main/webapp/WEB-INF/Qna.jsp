<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact Us</title>
<link rel="stylesheet" href="assets/css/reset.css">
<link rel="stylesheet" href="assets/css/mypage.css">
</head>
<!-- 상단바 a태그연결 & has 위치 & 연결 & 파파고 돌리기 -->
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
            <h3> > Contact Us</h3>
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

            </div>
            <!-- 검색바 -->
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
					<a class="a" href="Login.do">log in</a>
				</div>
				<!-- login -->
            

               <!-- 메뉴2 qna-->
               <div class="qna">
                  <a class="a">Contact Us</a>
               </div>
               <!-- qna -->
               
               <!-- 메뉴3 profile-->
               <div class="profilebox">
                  <a href="MyInfo.do">
                     </a>
                        <div class="head"></div>
                        <div class="p_body"></div>
               </div><!-- profile -->
               
            </div><!-- 오른쪽 박스 -->
      </div>
      <!-- 상단바 -->

      <!-- 중앙 -->
      <div class="sub1">
         <!-- 4-1.컨텐츠 담을 박수 -->
         <div class="sub2">
            <div class="profilebox1">
               <div class="head1"></div>
                 <div class="p_body1"></div>
            </div>
            <div class="nametag">
               <h4>NAME</h4>
            </div>
            <div class="text">
               <a>전체 조회 기능</a>
            </div>
            <div class="text1">
               <a>질문 기능</a>
            </div>
            <div class="text2">
               <a>내가 쓴 QNA 조회 기능</a>
            </div>
            <div class="text3">
               <a>QNA 답변 기능</a>
            </div>
           
            
         </div>
         <!-- 컨텐츠 담을 박스 -->
      </div>
      <!-- 가운데 -->

      </div>






	<%-- <h1> QNA test 결과 확인창</h1>
<br/>
<h2>전체 조회 기능</h2><br/>
<h2>질문 기능</h2><br/>
<h2>내가 쓴 QNA 조회 기능</h2><br/>
<h2>QNA 답변 기능</h2><br/>--%>

</body>
</html>