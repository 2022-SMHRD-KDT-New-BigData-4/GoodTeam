<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="Forgot_Id.css" > 

</head>
<body>
<%-- 큰 틀 action 은 "FindPW.do" 로 연결 --%>
<div class="container">
	<form action ="#" method ="post" name="find_fr">
	
		<div class="forgot"> 
		
			<div class="forgot_fr"> 
				<div class="forgot_btn" id="id"> 
					<a href="Find_Id.jsp" >Find ID</a>
				</div>
				<div class ="forgot_btn" id="pw">
					<a href="Find_Pw.jsp" >Find PW</a>
				</div>
			</div>
			<div class ="fr" >
			<!-- email 입력 시, 회원정보 비교하여 아이디 찾기 -->
				<div class="input_fr">
					<input type ="email" placeholder="Email" id = "email" value="email" required>
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