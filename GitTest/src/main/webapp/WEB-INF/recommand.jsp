<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Recommand</title>
<link rel="stylesheet" href="assets/css/reset.css">
<link rel="stylesheet" href="assets/css/.css">
<!-- ★★a태그 똑바로 달기 & 상단바 수정 후 모든 페이지 복붙  -->
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<style>
body{		background-color: antiquewhite;
            display: flex;
            flex-direction: column;
            align-items: center;
        


        }
        .main1{
            box-sizing: border-box;
            border-top-left-radius: 50px;
            border-top-right-radius: 50px;
            display: flex;
            align-items: center;
            justify-content: center;
            background-color: #F79792;
            height : 300px;
            width  : 70%;
            /* margin-top: 10px; */
            padding: 10px;
            padding-top: 15px;

        }
        .main2{
            box-sizing: border-box;
            
            display: flex;
            align-items: center;
            justify-content: center;
            background-color: #F79792;
            height : 300px;
            width  : 70%;
            /* margin-top: 10px; */
            padding: 10px;

        }
        .main3{
            box-sizing: border-box;
            border-bottom-left-radius: 50px;
            border-bottom-right-radius: 50px;
            display: flex;
            align-items: center;
            justify-content: center;
            background-color: #F79792;
            height : 300px;
            width  : 70%;
            /* margin-top: 10px; */
            padding: 10px;
            padding-bottom: 15px;

        }
        .sub1{
           
            height : 100%;
            width  : 100%;
        }
        .h1{
            font-weight: 900;
		    margin-left: 20px;
		    font-size: 25px;
		    color: white;
			
        }
       
        .contents{
       
            height: 100%;
            width: 100%;
   
         
        }
        .sub2{
            background-color: white;
            border-radius: 50px;
            /* display: flex;
            align-items: center;
            justify-content: center; */
            box-sizing: border-box;
            margin: 5px;
           
            height : 102%;
            width  : 95%;
        }
    
        a{  
           
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100%;
            width: 100%;
        }
        .tr{
        	object-fit: cover;
            border-radius: 37px;
            height: 90%;
            width: 90%;
        }
        
        img{

        }
    </style>
</head>
<body>
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
        </div>
    </div>





</body>
</html>