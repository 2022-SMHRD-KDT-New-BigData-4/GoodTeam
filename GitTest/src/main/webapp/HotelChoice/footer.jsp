<%@page import="com.smhrd.controller.Crawling_Currency"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="bar.css">
    <title>Document</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>

	
	

    <head>
        <!--상단바-->
        <div class = "bar">
            <img src="seoul.png" >
            <h1 class = "bar_home">HOW ABOUT SEOUL</h1>
            <h4 class = "bar_page"> >pick a region</h4>

        </div><!--상단바-->
        <div class="box"></div>
    </head>
	
	
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