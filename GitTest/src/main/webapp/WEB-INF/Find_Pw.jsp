<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="assets/css/Find_Pw.css" >  

</head>
<body>
	  <div class="c">
      <!-- 상단바 -->
      <div class="bar_home">
         <!-- 1. 홈  -->
         <div class="home">
            <h1 class="has">HOW ABOUT SEOUL ?</h1>
            </div>
         <!-- 홈  -->

         <!-- 2. 페이지 -->
         <div class="page">
            <h3> > main</h3>
            </div>
         <!-- 페이지 -->

         <!-- 3. 검색놈들 -->
         <div class="searchicon">
            <!-- 3-1. 검색바 -->
            <div class="search">
               <!-- 3-2. 돋보기 -->
               <div class="icon">
                  <img class="iconimg" src="#<%--searchicon.png --%>">
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
         <div class="s_left">
           <img src="asset/image/sample.jpg">
         </div><!-- s_left -->
         
         <div class="s_right">

<div class="contain">
	<div class="welcom">
		<div class="header">
			<h1>Find PW</h1>
		</div>
		<div class="find">
				<p>YOUR PW IS..</p>
				<%-- 주석풀고 여기로 id 가 출력되도록 해주세요~ --%>
            	<%-- <p><%= %></p> --%>
            	
            	 <%-- botton 기능 --%>
            	 
<div class="light-button button-wrapper">
 <form action="Login.do">
  <div class="button">
  
  	<input type="submit" value="LOGIN" name="findpw">
  </div>  
</div>           	 
    </form>        	 
		</div> 
		<div class="bottom">
		
			
		</div> 
					
	</div>
</div>

</body>
</html>