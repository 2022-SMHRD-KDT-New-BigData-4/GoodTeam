<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.smhrd.model.JoinVO"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.model.WishlistVO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My WishList</title>
<link rel="stylesheet" href="assets/css/reset.css">
<link rel="stylesheet" href="assets/css/bar2.css">
<link rel="stylesheet" href="assets/css/Allwishlist.css">
<!-- 백엔드 수정  -->
</head>
<body>

   <div class="c">
   <img  src="seoul2.jpg">
      <!-- 상단바 -->
      <div class="bar_home">
         <!-- 1. 홈  -->
         <div class="home">
            <h1 class="has">HOW ABOUT SEOUL ?</h1>
            </div>
         <!-- 홈  -->

         <!-- 2. 페이지 -->
         <div class="page">
            <h3> > My WishList</h3>
            </div>
         <!-- 페이지 -->

         <!-- 3. 검색놈들 -->
         <div class="searchicon">
            <!-- 3-1. 검색바 -->
            <div class="search">
               <!-- 3-2. 돋보기 -->
               <div class="icon">
                  <img class="iconimg" src="assets/images/searchicon.png">
               </div>
               <!-- 돋보기 -->

            </div>
            <!-- 검색바 -->
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
      <div class="sub1">
         <!-- 4-1.컨텐츠 담을 박스 -->
            <div class="total">
            	<div class="main">
            		<div class="sub1_main">
						<div class="img_main">
							<div class="img_main_head">
								<h1>Wish List</h1>
							</div><!-- img_main_head -->
							
							<div class="img_main_img">
								<img id="nullimg" src="assets/images/숙소아이콘샘플.png" alt="">
							</div><!-- img_main_img -->
							
							<div class="img_main_foot">
								<!-- 호텔명 입력받아 오기 -->
								<h1 id="hotel">호텔명</h1>
							</div><!-- img_main_foot -->
						</div><!-- img_main -->
            		</div><!-- sub1_main -->
            		<div class="sub2_main">
		            	<!-- 방 시작 -->
						<div class="room">
							<div class="room_contents">
								<div class="room_img">
									<img src="" alt="Image"
										class="room_imgs">
								</div><!-- room_img -->
								<div class="room_contents_info">
									<div class="room_contents_infos"></div>
								</div><!-- room_contents_info -->
						<!-- 방   끝 -->
								<%
								List<JoinVO> wishlist = (List<JoinVO>) request.getAttribute("wishlist");
								for (JoinVO vo : wishlist) {
								%>
							
							</div><!-- room_contents -->
						</div><!-- room -->
						
						<div class="room">
							<div class="room_contents">
								<div class="room_img">
									<img src="assets/images/<%=vo.getAc_img3()%>" alt="Image"
										class="room_imgs">
								</div><!-- room_img -->
							</div><!-- room_contents -->
						</div><!-- room -->
						<div class="room_contents_info">
							<input class="ac_name" type="hidden"
								value="<%=vo.getAc_name()%>">
							<div class="room_contents_infos">
								<p>
									객실명 :
									<%=vo.getRoom_nm()%></p>
								<p>
									성수기 가격 :
									<%=vo.getRoom_price_h()%></p>
								<p>
									비성수기 가격 :
									<%=vo.getRoom_price_l()%></p>
								<p>
									예약가능여부 :
									<%=vo.getReserv_yn()%></p>
								<p>
									날짜 :
									<%=vo.getReg_date()%></p>
							<a id="aa" href="WishlistDel.do?wish_seq=<%=vo.getWish_seq()%>&ac_seq=<%=vo.getAc_seq()%>">book</a>
							</div><!-- room_contents_infos -->
						</div><!-- room_contents_info -->
						<%
						}
						%>
            		</div><!-- sub2_main -->
            	</div><!-- main -->
            </div><!-- total -->
      <!-- 컨텐츠 담을 박스 -->
      </div>
      <!-- 가운데 -->
   </div>
<script src="assets/js/jquery-3.6.3.min.js"></script>
	<script type="text/javascript">
	$(".room").mouseover(function(){
	    var acName = $(this).find('.ac_name').val();
	    $("#hotel").text("호텔명 : "+acName);
	});
	$(".room").mouseout(function(){
	    $("#hotel").text("호텔명");
	});
	</script>




</body>
</html>