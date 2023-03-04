<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.io.IOException"%>
<%@page import="org.jsoup.Jsoup"%>
<%@page import="org.jsoup.nodes.Document"%>
<%@page import="org.jsoup.nodes.Element"%>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main</title>
<link rel="stylesheet" href="assets/css/main.css">
</head>
<body>
 <div id="header">

                
                <!-- 배경 동영상 -->
               
                	<video muted autoplay loop>
                        <!--<img src="https://cdn.dailyhotel.com/ux/nav-search-ic@2x.png" alt="">-->
                      <source  src="assets/images/file.mp4"  >
                    </video>                  
               
                
                <!-- HOW ABOUT SEOUL? -->
                    <div class="text">
                        <a class="has" href="Login.do">
                            HOW ABOUT SEOUL ?</a>
                        <br/>
                        <br/>
                        
                     <!-- 온도 날씨 시간 -->
					<%
					// org.jsoup.select.Elements elements = ...
						Document doc = null;
						String temp = null;
						String weather = null;

						try {
							doc = Jsoup.connect(
							"https://search.naver.com/search.naver?where=nexearch&sm=top_hty&fbm=1&ie=utf8&query=%EC%84%9C%EC%9A%B8%EB%82%A0%EC%94%A8")
							.get(); // 네이버 날씨 주소
						} catch (IOException e) {
							e.printStackTrace();
						}
						org.jsoup.select.Elements elements = doc.selectXpath(
						"//*[@id=\"main_pack\"]/section[1]/div[1]/div[2]/div[1]/div[1]/div/div[2]/div/div[1]/div[1]/div[2]/strong");
						//온도 크롤링
						for (Element element : elements) {
							temp = element.text().substring(5, element.text().indexOf("°"));
						}
						System.out.println("temp진행완료");

						org.jsoup.select.Elements weatherInfos = doc.select(".weather.before_slash");
						//날씨 크롤링
						System.out.println("weatherInfos값 :" + weatherInfos);
						for (Element weatherInfo : weatherInfos) {
							weather = weatherInfo.text();
							System.out.println(weather);
						}
						System.out.println("weather진행완료");
						
						//시간
						Date nowTime = new Date();
					%>
					<div class="data_text">
						<p > 
							
							Now Seoul, 
							<%=temp%>°C
							<br/>
							<%=nowTime%>
							</p>
						
						
					</div> <!-- data_text -->
					
				</div> <!-- text -->
				
            </div> <!-- header -->

</body>
</html>