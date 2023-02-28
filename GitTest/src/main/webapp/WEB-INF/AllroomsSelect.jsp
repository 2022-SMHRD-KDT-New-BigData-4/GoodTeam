<%@ page import="java.util.List"%>
<%@page import="com.smhrd.model.AccommodationsVO"%>
<%@page import="com.smhrd.model.RoomsVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AllroomsSelect</title>
<link rel="stylesheet" href="assets/css/AllroomsSelect.css">
</head>
<body>
<%@include file="bar.jsp" %> 
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
           <div class="pink">쿠폰적용가><</div>가격은 roomsVO를 불러와야 함 
        </div>
        <div>
         <a class="reserv" href="ChoiceRoom.do?ac_seq=<%=vo.getAc_seq() %>">Book</a>
        </div>
    </div>
</div>
<%
   }
%>



<!-- 방 1개 끝-->
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