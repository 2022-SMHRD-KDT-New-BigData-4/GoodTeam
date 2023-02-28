<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="assets/css/bar.css">
</head>
<body>
	    <header>
        <!--상단바-->
        <div class = "bar">
          	<img src="assets/images/광화문.png" >
            <h1 class = "bar_home">HOW ABOUT SEOUL</h1>
            <!-- ★페이지에 맞게 이름 수정 필요 -->
            <h4 class = "bar_page"> > pick a region</h4>

           
            
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

            <div class="heart">
            <a href="WishSelectAll.do"></a>
            </div>

            <a href="MyInfo.do">
            <div class="profile">
                <div class="head"></div>
                <div class="p_body"></div></a>
            </div>
        </div><!--상단바-->
    </header>
</body>
</html>