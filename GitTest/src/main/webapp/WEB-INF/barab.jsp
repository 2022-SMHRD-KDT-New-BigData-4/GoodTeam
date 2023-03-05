<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.smhrd.controller.Crawling_Currency"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<script src="assets/js/jquery-3.6.3.min.js"></script>
<link rel="stylesheet" href="assets/css/barab.css">
<link rel="stylesheet" href="assets/css/reset.css">
</head>
<body>
	<header>
        <!--상단바-->
        
        <div class = "bar">
			<img class="img111" src="assets/images/seoul2.jpg">
          <div class="bar_home">
			<!-- 1. 홈  -->
			<div class="home">
				<a class="has" href="GoMain.do">HOW ABOUT SEOUL ?</a>
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
				<form action="Search.do" id="searchBox">
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
    <div class="box">
    <div class="dd">
    <div class="main1">
	    <div class ="sub1">
	    	<h1 class="h1">HOT PLACE</h1>      
        </div>
        <div class ="sub2">
            <div class="contents">
                <a href=""><img class="tr" src="assets/images/img/추천핫플레이스1.png" alt=""></a>
            </div>
        </div>
        <div class ="sub2">
            <div class="contents">
                <a href=""><img class="tr" src="assets/images/img/추천핫플레이스2.png" alt=""></a>
            </div>
        </div>
        <div class ="sub2">
            <div class="contents">
                <a href=""><img class="tr" src="assets/images/img/추천핫플레이스3.png" alt=""></a>
            </div>
        </div>
    </div>
    <div class="main2">
        <div class ="sub1">
            <h1 class="h1">RESTAURANT</h1>
        </div>
        <div class ="sub2">
            <div class="contents">
                <a href=""><img class="tr" src="assets/images/img/추천맛집1.png" alt=""></a>
            </div>
        </div>
        <div class ="sub2">
            <div class="contents">
                <a href=""><img class="tr" src="assets/images/img/추천맛집2.png" alt=""></a>
            </div>
        </div>
        <div class ="sub2">
            <div class="contents">
                <a href=""><img class="tr" src="assets/images/img/추천맛집3.png" alt=""></a>
            </div>
        </div>
    </div>
    <div class="main3">
        <div class ="sub1">
            <h1 class="h1">COURSE</h1>
        </div>
        <div class ="sub2">
            <div class="contents">
                <a href="https://korean.visitseoul.net/mvp/%EC%84%9C%EC%9A%B8%EC%9D%98%EC%97%AD%EC%82%AC%EC%99%80%EB%AC%B8%ED%99%94%EB%A5%BC%EC%95%8C%EA%B3%A0%EC%8B%B6%EB%8B%A4%EB%A9%B4/KON036599"><img class="tr" src="assets/images/img/문화여행.png" alt=""></a>
            </div>
        </div>
        <div class ="sub2">
            <div class="contents">
                <a href=""><img class="tr" src="assets/images/img/타임여행.png" alt=""></a>
            </div>
        </div>
        <div class ="sub2">
            <div class="contents">
                <a href=""><img class="tr" src="assets/images/img/한류여행.png" alt=""></a>
            </div>	
	    </div><!-- sub1 -->
    </div><!-- main1 -->
   </div><!-- dd -->
  </div><!-- box -->
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
		$('.price').each(function() {
			  // 현재 요소의 값을 가져와서 계산
			  var cnt = 0;
			  var currentValue = initialValues[cnt]; // 요소의 텍스트 값을 가져옴
			  var calculatedValue = currentValue / <%=eur%>; // 계산된 값을 저장함
			

			  // 계산된 값을 다시 요소의 값으로 설정
			  $(this).text("€ " + calculatedValue.toFixed(2));
			});
		
	})
	$('#gbp').on('click',()=>{
		$('.dropbtn_icon').text('GBP');
		$('.price').each(function() {
			  // 현재 요소의 값을 가져와서 계산
			  var cnt = 0;
			  var currentValue = initialValues[cnt]; // 요소의 텍스트 값을 가져옴
			  var calculatedValue = currentValue / <%=gbp%>; // 계산된 값을 저장함
			  // 계산된 값을 다시 요소의 값으로 설정
			  
			  $(this).text("￡ " + calculatedValue.toFixed(2));
			});

	})


	
	</script>
</body>
</html>