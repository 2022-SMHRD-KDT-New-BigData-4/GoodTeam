<%@page import="com.smhrd.controller.Crawling_Currency"%>
<%@page import="com.smhrd.model.JoinVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@page import="com.smhrd.model.AccommodationsVO"%>
<%@page import="com.smhrd.model.RoomsVO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AllroomsSelect</title>
<link rel="stylesheet" href="assets/css/reset.css">
<link rel="stylesheet" href="assets/css/AllroomsSelect.css">
<link rel="stylesheet" href="assets/css/bar2.css">
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<!--  -->
</head>
<body>
	<div class="main">
	<img class="yy" src="assets/images/seoul2.jpg">
		<!-- 상단바 -->
		<div class="bar_home">
			<!-- 1. 홈  -->
			<div class="home">
				<a class="has" href="GoMain.do">HOW ABOUT SEOUL ?</a>
				</div>
			<!-- 홈  -->

			<!-- 2. 페이지 -->
			<div class="page">
				<h3> > Select All rooms</h3>
				</div>
			<!-- 페이지 -->

			<!-- 3. 검색놈들 -->
			<div class="searchicon">
				<!-- 3-1. 검색바 -->
				<form action="Search.do" id="searchBox" >
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
						<a class="a" href="QnaTotal.do" >Contact Us</a>
					</div>
					<!-- qna -->
					
					<!-- 메뉴3 profile-->
					<div class="profilebox">
						<a href="MyInfo.do" class="non1"></a>
			            	<div class="head"></div>
			            	<div class="p_body"></div>
					</div><!-- profile -->
				</div><!-- 오른쪽 박스 -->
		</div>
		<!-- 상단바 -->

	
		<!-- 중앙 -->
		<div class="sub12">
			<!-- 4-1.컨텐츠 담을 박스 -->
	          <%
   
				   List<JoinVO> roomlist = (List<JoinVO>) request.getAttribute("roomlist");
				   for (JoinVO vo : roomlist) {
				%>
				      <!--방 1개-->
				<div class="room_top"></div>
				<div class="class">
				    <div class="room_img">
				        <img class="img" src="assets/images/<%=vo.getAc_img3() %>" alt="">
				    </div>
				    <div class="room_info">
				        <div>
				            <a class="email-link"><%=vo.getAc_name() %></a>
				        </div>
				        <div class="address">
				            <div><%=vo.getAc_addr() %></div>
				        </div>
				       
				        <div class="price">
				           <div class="pink">쿠폰적용가><</div><br/><span class="won">₩ </span><span class="price2"><%=vo.getRoom_price_l()%></span>
				        </div>
				        <div>
				         <a class="reserv" href="ChoiceRoom.do?ac_seq=<%=vo.getAc_seq() %>">Book</a>
				        </div>
				    </div>
				</div>
				<%
				   }
				%>
	          
			
		</div>
		<!-- 컨텐츠 담을 박스 -->
		</div>
		<!-- 가운데 -->

<script type="text/javascript">
   $(document).on("click", ".email-link", function(e) {
      //e.preventDefault();
      var ac_seq = $(this).data("ac_seq");
      //console.log(ac_seq)
      $.ajax({
         // url 은 서블릿을 실행 리턴값을 가져온다.
         url : "ChoiceRoom.do",
         type : "post",
         data : {
            ac_seq : ac_seq
         },
         success : function(data) {
            console.log(data);
         },
         error : function(jqXHR, textStatus, errorThrown) {
            console.log(textStatus, errorThrown);
         }
      });
   });

</script>

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
	  $('.price2').each(function() {
	    var currentValue = $(this).text();
	    initialValues.push(currentValue);
	  });
	  console.log(initialValues);
	});

	
	$('#usd').on('click',()=>{
		$('.dropbtn_icon').text('USD');
		 $('.price2').each(function(index, element) {
		        var currentValue = initialValues[index]; // 요소의 텍스트 값을 가져옴
		        var calculatedValue = currentValue / <%=usd%>; // 계산된 값을 저장함
		        $('.won').remove();
		        $(this).text("$ " + calculatedValue.toFixed(2)); // 계산된 값을 다시 요소의 값으로 설정
		    });
	});
	$('#jpy').on('click',()=>{
		$('.dropbtn_icon').text('JPY');
		 $('.price2').each(function(index, element) {
		        var currentValue = initialValues[index]; // 요소의 텍스트 값을 가져옴
			  var calculatedValue = currentValue / <%=jpy%>; // 계산된 값을 저장함
			  $('.won').remove();

			  
			  // 계산된 값을 다시 요소의 값으로 설정
			  $(this).text("￥ " + calculatedValue.toFixed(2));
			});
	})
	$('#eur').on('click',()=>{
		$('.dropbtn_icon').text('EUR');
		$('.price2').each(function() {
			  // 현재 요소의 값을 가져와서 계산
			  var cnt = 0;
			  var currentValue = initialValues[cnt]; // 요소의 텍스트 값을 가져옴
			  var calculatedValue = currentValue / <%=eur%>; // 계산된 값을 저장함
			  $('.won').remove();
	
			  // 계산된 값을 다시 요소의 값으로 설정
			  $(this).text("€ " + calculatedValue.toFixed(2));
			});
		
	})
	$('#gbp').on('click',()=>{
		$('.dropbtn_icon').text('GBP');
		$('.price2').each(function() {
			  // 현재 요소의 값을 가져와서 계산
			  var cnt = 0;
			  var currentValue = initialValues[cnt]; // 요소의 텍스트 값을 가져옴
			  var calculatedValue = currentValue / <%=gbp%>; // 계산된 값을 저장함
			  // 계산된 값을 다시 요소의 값으로 설정
			  $('.won').remove();
			  
			  $(this).text("￡ " + calculatedValue.toFixed(2));
			});

	})



</script>


</body>

</html>