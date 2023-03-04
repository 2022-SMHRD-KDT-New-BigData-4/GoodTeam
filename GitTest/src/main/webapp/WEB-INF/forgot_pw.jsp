<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Forgot Password</title>
<link rel="stylesheet" href="assets/css/Forgot_Pw.css" > 
<link rel="stylesheet" href="assets/css/aa.css" > 

</head>
<body>

<%-- 전체 틀 --%>
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
				<h3 class="pagetext"> > Forgot Password</h3>
				</div>
			<!-- 페이지 -->

			<!-- 3. 검색놈들 -->
			<div class="searchicon">
				<!-- 3-1. 검색바 -->
				<form  action="Search.do" method="post" id="searchBox">
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
	<form class="formm" action ="FindPw.do" method ="post" name="find_fr">
	
		<div class="forgot">
		<%-- 상단버튼 top --%>
			<div class="forgot_fr"> 
				<div class="forgot_btn"> 
					<a class="ma" href="Goforgot_id.do" >Find ID</a>
				</div>
				<div class ="forgot_btn">
					<a class="ma" href="Goforgot_pw.do" >Find PW</a>
				</div>
			</div>
			
			<%-- 전송할 데이터 입력 middle--%>
			<div class ="fr" > 
				<div class="id_fr">
					<input class="nn" type ="text" placeholder="ID" name = "id" id="id" required>
				</div>
				<div class="name_fr">
					<input class="nn" type="text" placeholder="Name" name="name" id="name" required>
				</div>
				<div class="email_fr">
					<input class="ee" type ="email" placeholder="Email" id = "email" name="email" required>
				</div>
				
			</div>
			
			<%-- 데이터 전송 botton --%>
				<div class="submit_fr">
					<input class="ss" type = "submit" value = "Find" id="submit" >
				</div>
		</div> 
			
	</form>		
</div>


</body>
</html>