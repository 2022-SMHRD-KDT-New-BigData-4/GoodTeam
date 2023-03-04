<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="assets/css/Forgot_Id.css" > 
<link rel="stylesheet" href="assets/css/aa.css" > 

</head>
<body>
<%-- 큰 틀 action 은 "FindPW.do" 로 연결 --%>
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
				<form class="formm" action="Search.do" method="post" id="searchBox">
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
	<form action ="FindId.do" method ="post" name="find_fr">
	
		<div class="forgot"> 
		
			<div class="forgot_fr"> 
				<div class="forgot_btn" id="id"> 
					<a class="qqa" href="#" >Find ID</a>
				</div>
				<div class ="forgot_btn" id="pw">
					<a class="qqa" href="Goforgot_pw.do" >Find PW</a>
				</div>
			</div>
			<div class ="fr" >
			<!-- email 입력 시, 회원정보 비교하여 아이디 찾기 -->
				<div class="input_fr">
					<input type ="email" placeholder="Email" id = "email" name="email" required>
				</div> <%-- input_fr 닫는 div --%>
				<div class="submit_fr" >
					<input type = "submit" value = "Find" id="submit" >
				</div> <%-- submit_fr 닫는 div --%>
			</div> <%-- fr class 닫는 div --%>
		</div>	<%-- forgot class 닫는 div --%>
			
	</form>		
</div>		


</body>
</html>