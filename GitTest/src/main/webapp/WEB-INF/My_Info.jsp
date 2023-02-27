<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="My_Info.css">

<script type="text/javascript">
function check(){
	if(document.fr.pass.value==""){
		alert("Input your password.");
		document.fr.pass.focus();
		return false;
	}
}

</script>
</head>
<body>
<%-- CustomersVO 파일 미생성으로 주석처리 23.02.24 
	CustomersVO memberinfo = (CustomersVO) session.getAttribute("member_info");
 --%>

	
<!-- info :form 바깥 이미지와 id 포함 클래스 -->
<div class="container">
	<div class="header">
		<div class="info_header">
			<img src= "asset\image\icon.png">
		</div>
		<div class="h">
			<h1>My INFOMATION</h1>
		</div>
	</div>
	<!-- id포함 form 클래스 -->
	<div class="info">
	
	<!-- value = get.Name() -->
		<form action="CustSelect.java" method="post" name="fr" >
			<div class="modify_info" id="modify_info_id" >
				ID <input type="text" name="id" <%-- value="<%=memberinfo.getCust_id()%>" --%> readonly></br>
			</div>
			
			<div class="modify_info" id="modify_info_pw" >
				<input type="password" name="pw" <%-- value="<%=memberinfo.getCust_pw()%>" --%> placeholder="Password" required ></br>
			</div>
			
			<!-- password 확인하는 input 추가했습니다. 23.02.24 김지애 -->
			<div class="modify_info" id="modify_info_confirm_pw" >
				<input type="password" name="confirm_pw" <%-- value="<%=memberinfo.getCust_confirm_pw()%>" --%> placeholder="Confirm Password" required ></br>
			</div>
			
			<div class="modify_info" id="modify_info_name" >	
				<input type="text" name="name" <%-- value="<%=memberinfo.getCust_name()%>" --%> placeholder="Name"></br>
			</div>
			
			<div class="modify_info" id="modify_info_email" >
				<input type="email" name="email" <%-- value="<%=memberinfo.getCust_email()%>" --%> placeholder="Email"></br>
			</div>
			
			<div class="modify_info" id="modify_info_phone" >
				<input type="tel" name="phone" <%-- value="<%=memberinfo.getCust_phone()%>" --%> placeholder="Phone Number"><br>
			</div>
			
				<input type="submit" value="modify"></br>
			
		</form>
	</div>

</div>

</body>
</html>