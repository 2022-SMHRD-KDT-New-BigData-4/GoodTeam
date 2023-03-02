<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>서울 로컬</title>
<link rel="stylesheet" href="reset.css">
<link rel="stylesheet" href="assets/css/Login.css">
<link rel="stylesheet" href="assets/css/bar2.css">
<!-- ★★로그인 위치/ 이미지 수정 -->
</head>
<body>
	<div class="c">
	<img  src="assets/images/seoul2.jpg">
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
				<div class="search">
					<!-- 3-2. 돋보기 -->
					<div class="icon">
						<img class="iconimg" src="searchicon.png">
					</div>
					<!-- 돋보기 -->

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
			<div class="s_left">
				<div class="fr">
					<div class="sign_header">
					<h1>Sign in</h1>
					<span>or use your account</span>
					</div><!-- sign_header -->
					
					<div class="fr_login">
						<form action="LonginService.do" method="post">
				
						<!--login head 는 id, pw 를 input -->	
							<div class="login_head">
								<div class="login" id="id" >
									<input type="text"  placeholder="ID" required name="id">
								</div><!-- login id -->
								
								<div class="login" id="pw">
									<input type="password"  placeholder="Password" requeied name="pw">
								</div><!-- login pw -->
							</div><!-- login_head -->
							
							<div class="login" id="login">
							<!-- value 값 로그인에서 SING IN 으로 변경어떠신지? -->
								<input type="submit" value="로그인">
							</div><!-- login submit -->
							
							<p class="maintain">
								<input type="checkbox" name="maintain" >
								<label for="maintain">maintain</label>
							</p>
					
						</form>
					</div><!-- fr_login -->
					<div class="bottom">
						<div class="fr_foot" id="creat" >	
							<form action="CreateAccount.do" method="post">
								<input type="submit" value="Create account">
							</form>
						</div><!-- fr_foot -->
						
						<div class="fr_foot" id="find">
							<form action="findIDPW확인용.jsp" method="post">
							<!-- value 값 아이디/비번찾기 에서 SING Forgot your ID/Password? 으로 변경어떠신지? -->
								<input type="submit" value="아이디/비번찾기">
							</form>
						</div><!-- fr_foot -->
					</div><!-- bottom -->
				</div><!-- fr -->
			</div><!-- s_left -->
			
			<div class="s_right">
				<div class="immg">
					<img src="assets/images/background_img.png">
				</div><!-- img -->
			</div><!-- s_right -->
		<!-- 컨텐츠 담을 박스 -->
		</div>
		<!-- 가운데 -->

		</div>





</body>
</html>