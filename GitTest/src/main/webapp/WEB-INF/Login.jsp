<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="assets/css/Login.css">

</head>
<body>
<%@include file="bar.jsp"%>
	
	<%-- 전체 테두리 --%>
	<div class="container">
	<%-- 정보를 전달하는 form 태그 + 상단 : LoginService.do 로 데이터 전달 --%>
		<div class="fr">
			<div class="sign_header">
			<h1>Sign in</h1>
			<span>or use your account</span>
			</div>
			
			<div class="fr_login">
				<form action="LonginService.do" method="post">
			
			<%--login head 는 id, pw 를 input --%>	
				<div class="login_head">
					<div class="login" id="id" >
						<input type="text"  placeholder="ID" requeied>
					</div>
					
					<div class="login" id="pw">
						<input type="password"  placeholder="Password" requeied>
					</div>
				</div>
					
					<div class="login" id="login">
					<%-- value 값 로그인에서 SING IN 으로 변경어떠신지? --%>
						<input type="submit" value="로그인">
					</div>
					
					
					<p class="maintain">
						<input type="checkbox" name="maintain" >
						<label for="maintain">maintain</label>
					</p>
					
					
				</form>
			</div>
			<div class="bottom">
				<div class="fr_foot" id="creat" >	
					<form action="CreateAccount.do" method="post">
						<input type="submit" value="Create account">
					</form>
				</div>	
				
				<div class="fr_foot" id="find">
					<form action="findIDPW확인용.jsp" method="post">
					
					<%-- value 값 아이디/비번찾기 에서 SING Forgot your ID/Password? 으로 변경어떠신지? --%>
						
						<input type="submit" value="아이디/비번찾기">
					</form>
				</div>
			</div>
			
		</div>
		
	<%-- 이미지 전달 fr --%>	
		<div class="img">
			<img src="assets/images/background_img.png">
		</div>
	</div>




</body>
</html>