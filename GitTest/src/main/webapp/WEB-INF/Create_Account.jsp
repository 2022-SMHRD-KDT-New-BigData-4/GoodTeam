<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel = "stylesheet" href = "assets/css/Create_Account.css">
</head>
<body>
	<%@include file="bar.jsp"%>
	<div class="create">
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
						<input type="text" name="name" placeholder="Name">
					</div>

					<div class="user_email">
						<input id="email" type="text" name="email" placeholder="Email"
							required>
					</div>

					<div class="user_email">
						<input id="phone" type="text" name="phone" placeholder="phone"
							required>
					</div>

					<button>Create</button>
			</div>

			<div class="photo">
				<img src="assets/images/pexels-aleksandar-pasaric-2848492.jpg">

			</div>
			</form>

		</div>
</body>
</html>