<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Account</title>
<link rel="stylesheet" href="assets/css/reset.css">
<link rel="stylesheet" href="assets/css/bar2.css">
<link rel="stylesheet" href="assets/css/Create_Account.css">
<!-- 예쁘게 수정 & 상단바 & 연결확인하기  -->
</head>
<body>

   <div class="c">
   <img  src="seoul2.jpg">
      <!-- 상단바 -->
      <div class="bar_home">
         <!-- 1. 홈  -->
         <div class="home">
            <h1 class="has">HOW ABOUT SEOUL ?</h1>
            </div>
         <!-- 홈  -->

         <!-- 2. 페이지 -->
         <div class="page">
            <h3> > main</h3>
            </div>
         <!-- 페이지 -->

        <!-- 3. 검색놈들 -->
			<div class="searchicon">
				<!-- 3-1. 검색바 -->
				<form action="Search.do" method="post">
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
                  <a class="a">log in</a>
               </div><!-- login -->
            

               <!-- 메뉴2 qna-->
               <div class="qna">
                  <a class="a">Contact Us</a>
               </div>
               <!-- qna -->
               
               <!-- 메뉴3 profile-->
               <div class="profilebox">
                  <a href="#">
                     </a>
                        <div class="head"></div>
                        <div class="p_body"></div>
               </div><!-- profile -->
               
            </div><!-- 오른쪽 박스 -->
      </div>
      <!-- 상단바 -->

      <!-- 중앙 -->
      <div class="sub1">
         <!-- 4-1.컨텐츠 담을 박스 -->
            <div class="container">
         		<div class="create_form">
	         		<form action="JoinService.do" method="post">
	         			<div class="header">
							<h2>Create Account</h2>
						</div>
						
						<div class="user_id">
							<label for="id"></label> <input id="id" type="text" name="id"
								placeholder="ID" required>
						</div>
						
						<div class="user_pw">
						<label for="pw"></label> <input type="password" name="pw"
							placeholder="Password" id="password" required>
						</div>
	
						<div class="user_confirm_pw">
							<label for="confirm_pw"></label> <input type="password"
								name="confirm_pw" placeholder="Confirm Password"
								id="confirm_password" required>
						</div>
	
						<div class="user_name">
							<input id="email" type="text" name="name" placeholder="Name">
						</div>
	
						<div class="user_email">
							<input id="email" type="text" name="email" placeholder="Email"
								required>
						</div>
	
						<div class="user_email">
							<input id="phone" type="text" name="phone" placeholder="phone"
								required>
						</div>
						<div class="user_email">
							<input id="phone" type="submit" name="phone" placeholder="phone"
								value="회원가입">
						</div>
					</form>
	         	</div><!-- create_form -->
	         </div><!-- container -->
            
      <!-- 컨텐츠 담을 박스 -->
      </div>
      <!-- 가운데 -->

      </div>





</body>
</html>