<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<%@ page import="java.util.List"%>
<%@ page import="com.smhrd.model.AccommodationsVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table>
<%
	List<AccommodationsVO> roomlist = (List<AccommodationsVO>) request.getAttribute("roomlist");
	for (AccommodationsVO vo : roomlist) {
%>
	<tr>
		<td><a href="ChoiceRoom.do?ac_seq=<%=vo.getAc_seq()%>" class="email-link"
			data-ac_seq=<%=vo.getAc_seq()%>><%=vo.getAc_name()%></a></td>
		<td><%=vo.getAc_name()%></td>
		<td><%=vo.getAc_addr()%></td>
		<td><%=vo.getAc_tel()%></td>
	</tr>
<%
	}
%>
</table>

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