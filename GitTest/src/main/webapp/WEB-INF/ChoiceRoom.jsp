<%@page import="com.smhrd.model.AmentiesVO"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.model.AccommodationsVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>




	<!--  ${roominfo.get(0).ac_name}
-->

	<%
List<AccommodationsVO> roominfo = (List<AccommodationsVO>) request.getAttribute("roominfo");
AccommodationsVO room = roominfo.get(0);
List<AmentiesVO> roomamen = (List<AmentiesVO>) request.getAttribute("roomamen");
AmentiesVO rooma = roomamen.get(0);	

%>

	<h2><%= room.getAc_name() %></h2>
	<p><%= room.getAc_addr() %></p>
	<img src="<%= room.getAc_img1() %>" alt="room image 1">
	<p><%= room.getAc_tel() %></p>
 <p><%= rooma.getParking() %></p>
	<p><%= rooma.getBreakfast() %></p>
	<p><%= rooma.getCvs() %></p>
	<p><%= rooma.getWifie() %></p>
	<p><%= rooma.getFitness() %></p>
	<p><%= rooma.getEtc() %></p> 	






</body>
</html>