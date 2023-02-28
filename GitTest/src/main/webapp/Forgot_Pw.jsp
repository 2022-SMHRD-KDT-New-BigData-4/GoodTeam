<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="Forgot_Pw.css" > 

</head>
<body>
<div class="container">
	<form action ="#" method ="post" name="find_fr">
	
		<div class="forgot">
			<div class="forgot_fr"> 
				<div class="forgot_btn"> 
					<a href="Find_Id.jsp" >Find ID</a>
				</div>
				<div class ="forgot_btn">
					<a href="Find_Pw.jsp" >Find PW</a>
				</div>
			</div>
			<!-- email 입력 시, 회원정보 비교하여 아이디 찾기 -->
			
			<div class ="fr" >
				<div class="id_fr">
					<input type ="text" placeholder="ID" id = "id" value="id" required>
				</div>
				<div class="email_fr">
					<input type ="email" placeholder="Email" id = "email" value="email" required>
				</div>
				<div class="submit_fr" >
					<input type = "submit" value = "Find" id="submit" >
				</div>
			</div>
		</div>	
			
		</div>		
	</form>		
</div>


</body>
</html>