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
				<form action="Search.do" method="post" id="searchBox" >
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
		                  <a href="#">USD - US Dollar</a>
		                  <a href="#">GBP - British Pound</a>
		                  <a href="#">JPY - Japanese Yen</a>
		                  <a href="#">EUR - Euro</a>
                		</div>
					</div><!-- login -->
					
					<!-- 메뉴1 login-->
				<div class="log">
					<a class="a" href="Login.do">log in</a>
				</div>
				<!-- login -->
				

					<!-- 메뉴2 qna-->
					<div class="qna">
						<a class="a">Contact Us</a>
					</div>
					<!-- qna -->
					
					<!-- 메뉴3 profile-->
					<div class="profilebox">
						<a href="MyInfo.do">
			            </a>
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
   
				   List<AccommodationsVO> roomlist = (List<AccommodationsVO>) request.getAttribute("roomlist");
				   for (AccommodationsVO vo : roomlist) {
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
				           <div class="pink">쿠폰적용가><</div><br/>가격은 roomsVO를 불러와야 함 
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





</body>

</html>