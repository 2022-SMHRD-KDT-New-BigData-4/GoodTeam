<%@page import="com.smhrd.controller.Crawling_Currency"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="assets/css/reset.css">
<link rel="stylesheet" href="assets/css/bar.css">
</head>
<body>
		<div class="bar">
		<!-- 상단바 -->
		<div class="bar_home">
			<img src="assets/images/seoul2.jpg">
			<!-- 1. 홈  -->
			<div class="home">
				<h1 class="has">HOW ABOUT SEOUL ?</h1>
				</div>
			<!-- 홈  -->

			<!-- 2. 페이지 -->
			<div class="page">
				<h3 class="pagetext"> > main</h3>
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
		                  <a href="#" id="usd">USD - US Dollar</a>
		                  <a href="#" id="gbp">GBP - British Pound</a>
		                  <a href="#" id="jpy">JPY - Japanese Yen</a>
		                  <a href="#" id="eur">EUR - Euro</a>
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
		<!--  <div class="sub1">
			<!-- 4-1.컨텐츠 담을 박수 -->
			<!--  <div class="sub2">
				
				
			</div>
			<!-- 컨텐츠 담을 박스 -->
		<!--  </div>
		<!-- 가운데 -->

		</div>
		
		    <%  
		 	Crawling_Currency servlet = new Crawling_Currency();
	    	servlet.service(request, response);
    
			double usd = (double) session.getAttribute("usd"); 
			double jpy = (double) session.getAttribute("jpy"); 
			double eur = (double) session.getAttribute("eur"); 
			double gbp = (double) session.getAttribute("gbp");
		
	%>		
	
	<script>
	
	var initialValues = [];
	let usdclick = false;
	let jpyclick = false;
	let gbpclick = false;
	let eurclick = false;
	// 각 요소의 초기값을 배열에 저장
	$(window).on('load', function() {
	  $('.price').each(function() {
	    var currentValue = $(this).text();
	    initialValues.push(currentValue);
	  });
	  console.log(initialValues);
	});

	
	$('#usd').on('click',()=>{
		$('.dropbtn_icon').text('USD');
		 $('.price').each(function(index, element) {
		        var currentValue = initialValues[index]; // 요소의 텍스트 값을 가져옴
		        var calculatedValue = currentValue / <%=usd%>; // 계산된 값을 저장함
		        $(this).text("$ " + calculatedValue.toFixed(2)); // 계산된 값을 다시 요소의 값으로 설정
		    });
	});
	$('#jpy').on('click',()=>{
		$('.dropbtn_icon').text('JPY');
		 $('.price').each(function(index, element) {
		        var currentValue = initialValues[index]; // 요소의 텍스트 값을 가져옴
			  var calculatedValue = currentValue / <%=jpy%>; // 계산된 값을 저장함
			

			  
			  // 계산된 값을 다시 요소의 값으로 설정
			  $(this).text("￥ " + calculatedValue.toFixed(2));
			});
	})
	$('#eur').on('click',()=>{
		$('.dropbtn_icon').text('EUR');
		 $('.price').each(function(index, element) {
		        var currentValue = initialValues[index]; // 요소의 텍스트 값을 가져옴
			  var calculatedValue = currentValue / <%=eur%>; // 계산된 값을 저장함
			

			  // 계산된 값을 다시 요소의 값으로 설정
			  $(this).text("€ " + calculatedValue.toFixed(2));
			});
		
	})
	$('#gbp').on('click',()=>{
		$('.dropbtn_icon').text('GBP');
		 $('.price').each(function(index, element) {
		        var currentValue = initialValues[index]; // 요소의 텍스트 값을 가져옴
			  var calculatedValue = currentValue / <%=gbp%>; // 계산된 값을 저장함
			  // 계산된 값을 다시 요소의 값으로 설정
			  
			  	usdclick = false;
			 	jpyclick = false;
				gbpclick = true;
				eurclick = false;
			  
			  $(this).text("￡ " + calculatedValue.toFixed(2));
			});

	})

	</script>
</body>
</html>