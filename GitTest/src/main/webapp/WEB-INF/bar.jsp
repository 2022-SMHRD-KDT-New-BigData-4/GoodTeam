<%@page import="com.smhrd.controller.Crawling_Currency"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="assets/css/bar.css">
</head>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<body>
	    <header>
        <!--상단바-->
        <div class = "bar">
            <img src="assets/images/광화문.png" >
            
            <a href="Main.do"><h1 class = "bar_home">HOW ABOUT SEOUL</h1></a>
            <!-- ★페이지에 맞게 이름 수정 필요 -->
            <h4 class = "bar_page"> > 페이지에 맞게 으케 바꾸노?</h4>

           
            
            <div class="search">
	            <input type="text" class="box" >
				<div class="surf" style="cursor:pointer">
			 		        <div class="s_up"></div>
			                <div class="s_down"></div>   	
			    </div>
            </div>
            
            
            <div class="dropdown">
                <button class="dropbtn"> 
                  <span class="dropbtn_icon">USD</span>
                </button>
                <div class="dropdown-content">
                  <a href="#">USD - US Dollar</a>
                  <a href="#">GBP - British Pound</a>
                  <a href="#">JPY - Japanese Yen</a>
                  <a href="#">EUR - Euro</a>
                </div>
              </div>       

            <a class="heart" href="WishSelectAll.do">
            </a>

            	<a href="MyInfo.do" class="profile">
            <div>
                <div class="head"></div>
                <div class="p_body"></div>
            </div></a>
        </div><!--상단바-->
    </header>
    <%  
		 	Crawling_Currency servlet = new Crawling_Currency();
	    	servlet.service(request, response);
    
			double usd = (double) session.getAttribute("usd"); 
			double jpy = (double) session.getAttribute("jpy"); 
			double eur = (double) session.getAttribute("eur"); 
			double gbp = (double) session.getAttribute("gbp");
		
	%>		
		
</body>
</html>