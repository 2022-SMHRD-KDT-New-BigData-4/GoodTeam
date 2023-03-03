<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="assets/css/Forgot_Pw.css" > 

</head>
<body>

<%-- 전체 틀 --%>
<div class="container">
	<form action ="FindPw.do" method ="post" name="find_fr">
	
		<div class="forgot">
		<%-- 상단버튼 top --%>
			<div class="forgot_fr"> 
				<div class="forgot_btn"> 
					<a href="Goforgot_id.do" >Find ID</a>
				</div>
				<div class ="forgot_btn">
					<a href="#" >Find PW</a>
				</div>
			</div>
			
			<%-- 전송할 데이터 입력 middle--%>
			<div class ="fr" > 
				<div class="id_fr">
					<input type ="text" placeholder="ID" name = "id" id="id" required>
				</div>
				<div class="name_fr">
					<input type="text" placeholder="Name" name="name" id="name" required>
				</div>
				<div class="email_fr">
					<input type ="email" placeholder="Email" id = "email" name="email" required>
				</div>
				
			</div>
			
			<%-- 데이터 전송 botton --%>
				<div class="submit_fr">
					<input  type = "submit" value = "Find" id="submit" >
				</div>
		</div> 
			
	</form>		
</div>


</body>
</html>