<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
/*  --------------------------------------------전체 구도 잡아놓은 곳--------------------------------------------------- */
/* Seoul의 컨테이더 부분 */
.main {
	
	/* 글자가 깨지는 것을 방지하는 코드 */
	/* 텍스트가 한줄에 표시되어야 하는 코드 */
	white-space: nowrap;
	/* 공간을 벗어나면 그 부분이 가려지는 코드 */
	overflow: hidden;
	/* 공간을 벗어났을 때 끝에 ..이 표시되는 코드 */
	text-overflow: ellipsis;
	/* background-color: gray;
        border: 1px solid black; */
	height: 650px;
	/* flex선언*/
	display: flex;
	/* 아이템을 가운데로 옮김 */
	justify-content: center;
	/* 아이템을 정 한가운데로 옮김 */
	align-items: center;
}

/* main의 아이템 부분 */
.Seoul {
	/* background-color: lightblue; */
	width: 500px;
	height: 500px;
	/* border: 1px solid red; */
}

/* ----------------------------------------왼쪽 큰지도 구도 잡아놓은 곳---------------------------------------------------- */

/* 서울지도이미지 관련 */
.Seoulmap {
	width: 500px;
	height: 500px;
}

/* ---------------------------------------오른쪽 컨텐츠 부분 구도 잡아놓은 곳------------------------------------------------ */
/*----------------------------------------- 헤드라인 부분------------------------------------------- */
/* headline의 컨테이너 부분 */
/*  SeoulTrip관련 부분 */
.headline {
	/* 부모(main) 영역의 세로길이 100%를 쓰겠다는 코드 */
	width: 100%;
	/* 500px중 100px을 할당 */
	height: 100px;
	/* background-color: yellow; */
}

/* 삐져 나오는 현상 때문에 마진값을 줌 */
.headline>h1 {
	margin: 0px;
}

/* h1태그의 컨테이더 */
.headline {
	/* flex선언*/
	display: flex;
	/*  축정렬 바꿔주기 */
	flex-direction: column;
	/* 아이템을 가운데로 옮김 */
	justify-content: center;
	/* 아이템을 정 한가운데로 옮김 */
	align-items: center;
	/*------------------------------------------컨텐츠 부분----------------------------------------------------  */
}

.contents {
	/* 부모(main) 영역의 세로길이 100%를 쓰겠다는 코드 */
	width: 100%;
	height: 400px;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
}

a {
	/* 밑줄 없애는 코드 */
	text-decoration: none;
	font-size: 20px;
	font-weight: 700;
}

.local {
	/* 할줄 몰라서 패딩으로 밀어버림. 나중에 수정할 수 있으면 수정하세용. */
	padding-top: 15px;
	display: flex;
	justify-content: center;
	align-items: center;
}

.localmap {
	margin: 3px;
}

.localmapimg {
	width: 500px;
	height: 500px;
	display: none;
	position: absolute;
	top: 0%;
	right: 100%
}

.localmap:hover .localmapimg {
	display: block;
}

#content {
	position: relative;
}
</style>

</head>

<body>
<%@ include file="bar.jsp" %>
	<div class="main">
		<!-- 서울 지도 부분 -->
		<div class="Seoul">
			<img src="./img/Lara01.gif" alt="" class="Seoulmap">
		</div>
		<div class="Seoul" id="content">
			<!-- 헤드라인 부분 -->
			<div class="headline">
				<h1>Seoul Trip</h1>
			</div>
			<!-- 서울 구 나타내는 코드 -->
			<div class="contents">
				<!-- 첫째 줄 -->
				<div class="local">
					<div class="localmap">
						<a id="seochogu" href="LocalMap.do">서초구</a>
						<div>
							<img src="./img/Lara2.png" alt="" class="localmapimg">
						</div>
					</div>
					<div class="localmap">
						<a id="gangnamgu" href="LocalMap.do">강남구</a>
						<div>
							<img src="./img/Lara3.png" alt="" class="localmapimg">
						</div>
					</div>
				</div>
				<!-- 둘째 줄 -->
				<div class="local">
					<div class="localmap">
						<a id="mapogu" href="LocalMap.do">마포구</a>
						<div>
							<img src="./img/Lara4.png" alt="" class="localmapimg">
						</div>
					</div>
					<div class="localmap">
						<a id="seodaemoongu" href="LocalMap.do">서대문구</a>
						<div>
							<img src="./img/Lara5.png" alt="" class="localmapimg">
						</div>
					</div>
					<div class="localmap">
						<a id="unpyeonggu" href="LocalMap.do">은평구</a>
						<div>
							<img src="./img/Lara6.png" alt="" class="localmapimg">
						</div>
					</div>
				</div>
				<!-- 셋째 줄 -->
				<div class="local">
					<div class="localmap">
						<a id="jongrogu" href="LocalMap.do">종로구</a>
						<div>
							<img src="./img/Lara7.png" alt="" class="localmapimg">
						</div>
					</div>
					<div class="localmap">
						<a id="junggu" href="LocalMap.do">중구</a>
						<div>
							<img src="./img/Lara8.png" alt="" class="localmapimg">
						</div>
					</div>
					<div class="localmap">
						<a id="younsangu" href="LocalMap.do">용산구</a>
						<div>
							<img src="./img/Lara9.png" alt="" class="localmapimg">
						</div>
					</div>
				</div>
				<!-- 넷째 줄 -->
				<div class="local">
					<div class="localmap">
						<a id="sungdonggu" href="LocalMap.do">성동구</a>
						<div>
							<img src="./img/Lara10.png" alt="" class="localmapimg">
						</div>
					</div>
					<div class="localmap">
						<a id="dongdaemoon" href="LocalMap.do">동대문구</a>
						<div>
							<img src="./img/Lara11.png" alt="" class="localmapimg">
						</div>
					</div>
					<div class="localmap">
						<a id="joongranggu" href="LocalMap.do">중랑구</a>
						<div>
							<img src="./img/Lara12.png" alt="" class="localmapimg">
						</div>
					</div>
					<div class="localmap">
						<a id="gwanjingu" href="LocalMap.do">광진구</a>
						<div>
							<img src="./img/Lara13.png" alt="" class="localmapimg">
						</div>
					</div>
				</div>
				<!-- 다섯째 줄 -->
				<div class="local">
					<div class="localmap">
						<a id="seongbukgu" href="LocalMap.do">성북구</a>
						<div>
							<img src="./img/Lara14.png" alt="" class="localmapimg">
						</div>
					</div>
					<div class="localmap">
						<a id="gangbukgu" href="LocalMap.do">강북구</a>
						<div>
							<img src="./img/Lara15.png" alt="" class="localmapimg">
						</div>
					</div>
					<div class="localmap">
						<a id="dobonggu" href="LocalMap.do">도봉구</a>
						<div>
							<img src="./img/Lara16.png" alt="" class="localmapimg">
						</div>
					</div>
					<div class="localmap">
						<a id="nowongu" href="LocalMap.do">노원구</a>
						<div>
							<img src="./img/Lara17.png" alt="" class="localmapimg">
						</div>
					</div>
				</div>
				<!-- 여섯째 줄 -->
				<div class="local">
					<div class="localmap">
						<a id="gangdonggu" href="LocalMap.do">강동구</a>
						<div>
							<img src="./img/Lara18.png" alt="" class="localmapimg">
						</div>
					</div>
					<div class="localmap">
						<a id="songpagu" href="LocalMap.do">송파구</a>
						<div>
							<img src="./img/Lara19.png" alt="" class="localmapimg">
						</div>
					</div>
				</div>
				<!-- 일곱째 줄 -->
				<div class="local">
					<div class="localmap">
						<a id="gangseogu" href="LocalMap.do">강서구</a>
						<div>
							<img src="./img/Lara17.png" alt="" class="localmapimg">
						</div>
					</div>
					<div class="localmap">
						<a id="yangcheongu" href="LocalMap.do">양천구</a>
						<div>
							<img src="./img/Lara8.png" alt="" class="localmapimg">
						</div>
					</div>
					<div class="localmap">
						<a id="gurogu" href="LocalMap.do">구로구</a>
						<div>
							<img src="./img/Lara7.png" alt="" class="localmapimg">
						</div>
					</div>
					<div class="localmap">
						<a id="yeongdeongpugu" href="LocalMap.do">영등포구</a>
						<div>
							<img src="./img/Lara5.png" alt="" class="localmapimg">
						</div>
					</div>
				</div>
				<!-- 여덟째 줄 -->
				<div class="local">
					<div class="localmap">
						<a id="dongjakgu" href="LocalMap.do">동작구</a>
						<div>
							<img src="./img/Lara10.png" alt="" class="localmapimg">
						</div>
					</div>
					<div class="localmap">
						<a id="gwanakgu" href="LocalMap.do">관악구</a>
						<div>
							<img src="./img/Lara1.png" alt="" class="localmapimg">
						</div>
					</div>
					<div class="localmap">
						<a id="gumcheongu" href="LocalMap.do">금천구</a>
						<div>
							<img src="./img/Artist01.gif" alt="" class="localmapimg">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script>
	var link = document.getElementById('seochogu');
	link.addEventListener('click', function(event) {
		event.preventDefault(); // 기본 동작인 링크 이동을 막습니다.
		var acAddr = this.innerHTML;
		var url = this.href + '?ac_addr=' + encodeURIComponent(acAddr);
		window.location.href = url; // 새로운 URL로 이동합니다.
	});
	
	var link = document.getElementById('gangnamgu');
	link.addEventListener('click', function(event) {
		event.preventDefault(); // 기본 동작인 링크 이동을 막습니다.
		var acAddr = this.innerHTML;
		var url = this.href + '?ac_addr=' + encodeURIComponent(acAddr);
		window.location.href = url; // 새로운 URL로 이동합니다.
	});
	
	var link = document.getElementById('mapogu');
	link.addEventListener('click', function(event) {
		event.preventDefault(); // 기본 동작인 링크 이동을 막습니다.
		var acAddr = this.innerHTML;
		var url = this.href + '?ac_addr=' + encodeURIComponent(acAddr);
		window.location.href = url; // 새로운 URL로 이동합니다.
	}); 
	var link = document.getElementById('seodaemoongu');
	link.addEventListener('click', function(event) {
		event.preventDefault(); // 기본 동작인 링크 이동을 막습니다.
		var acAddr = this.innerHTML;
		var url = this.href + '?ac_addr=' + encodeURIComponent(acAddr);
		window.location.href = url; // 새로운 URL로 이동합니다.
	}); 
	var link = document.getElementById('unpyeonggu');
	link.addEventListener('click', function(event) {
		event.preventDefault(); // 기본 동작인 링크 이동을 막습니다.
		var acAddr = this.innerHTML;
		var url = this.href + '?ac_addr=' + encodeURIComponent(acAddr);
		window.location.href = url; // 새로운 URL로 이동합니다.
	});jongrogu
	var link = document.getElementById('jongrogu');
	link.addEventListener('click', function(event) {
		event.preventDefault(); // 기본 동작인 링크 이동을 막습니다.
		var acAddr = this.innerHTML;
		var url = this.href + '?ac_addr=' + encodeURIComponent(acAddr);
		window.location.href = url; // 새로운 URL로 이동합니다.
	});
	var link = document.getElementById('junggu');
	link.addEventListener('click', function(event) {
		event.preventDefault(); // 기본 동작인 링크 이동을 막습니다.
		var acAddr = this.innerHTML;
		var url = this.href + '?ac_addr=' + encodeURIComponent(acAddr);
		window.location.href = url; // 새로운 URL로 이동합니다.
	});
	var link = document.getElementById('younsangu');
	link.addEventListener('click', function(event) {
		event.preventDefault(); // 기본 동작인 링크 이동을 막습니다.
		var acAddr = this.innerHTML;
		var url = this.href + '?ac_addr=' + encodeURIComponent(acAddr);
		window.location.href = url; // 새로운 URL로 이동합니다.
	});
	var link = document.getElementById('sungdonggu');
	link.addEventListener('click', function(event) {
		event.preventDefault(); // 기본 동작인 링크 이동을 막습니다.
		var acAddr = this.innerHTML;
		var url = this.href + '?ac_addr=' + encodeURIComponent(acAddr);
		window.location.href = url; // 새로운 URL로 이동합니다.
	});
	var link = document.getElementById('dongdaemoon');
	link.addEventListener('click', function(event) {
		event.preventDefault(); // 기본 동작인 링크 이동을 막습니다.
		var acAddr = this.innerHTML;
		var url = this.href + '?ac_addr=' + encodeURIComponent(acAddr);
		window.location.href = url; // 새로운 URL로 이동합니다.
	});
	var link = document.getElementById('joongranggu');
	link.addEventListener('click', function(event) {
		event.preventDefault(); // 기본 동작인 링크 이동을 막습니다.
		var acAddr = this.innerHTML;
		var url = this.href + '?ac_addr=' + encodeURIComponent(acAddr);
		window.location.href = url; // 새로운 URL로 이동합니다.
	});
	var link = document.getElementById('gwanjingu');
	link.addEventListener('click', function(event) {
		event.preventDefault(); // 기본 동작인 링크 이동을 막습니다.
		var acAddr = this.innerHTML;
		var url = this.href + '?ac_addr=' + encodeURIComponent(acAddr);
		window.location.href = url; // 새로운 URL로 이동합니다.
	});
	var link = document.getElementById('seongbukgu');
	link.addEventListener('click', function(event) {
		event.preventDefault(); // 기본 동작인 링크 이동을 막습니다.
		var acAddr = this.innerHTML;
		var url = this.href + '?ac_addr=' + encodeURIComponent(acAddr);
		window.location.href = url; // 새로운 URL로 이동합니다.
	});
	var link = document.getElementById('gangbukgu');
	link.addEventListener('click', function(event) {
		event.preventDefault(); // 기본 동작인 링크 이동을 막습니다.
		var acAddr = this.innerHTML;
		var url = this.href + '?ac_addr=' + encodeURIComponent(acAddr);
		window.location.href = url; // 새로운 URL로 이동합니다.
	});
	var link = document.getElementById('dobonggu');
	link.addEventListener('click', function(event) {
		event.preventDefault(); // 기본 동작인 링크 이동을 막습니다.
		var acAddr = this.innerHTML;
		var url = this.href + '?ac_addr=' + encodeURIComponent(acAddr);
		window.location.href = url; // 새로운 URL로 이동합니다.
	});
	var link = document.getElementById('nowongu');
	link.addEventListener('click', function(event) {
		event.preventDefault(); // 기본 동작인 링크 이동을 막습니다.
		var acAddr = this.innerHTML;
		var url = this.href + '?ac_addr=' + encodeURIComponent(acAddr);
		window.location.href = url; // 새로운 URL로 이동합니다.
	});
	var link = document.getElementById('gangdonggu');
	link.addEventListener('click', function(event) {
		event.preventDefault(); // 기본 동작인 링크 이동을 막습니다.
		var acAddr = this.innerHTML;
		var url = this.href + '?ac_addr=' + encodeURIComponent(acAddr);
		window.location.href = url; // 새로운 URL로 이동합니다.
	});
	var link = document.getElementById('songpagu');
	link.addEventListener('click', function(event) {
		event.preventDefault(); // 기본 동작인 링크 이동을 막습니다.
		var acAddr = this.innerHTML;
		var url = this.href + '?ac_addr=' + encodeURIComponent(acAddr);
		window.location.href = url; // 새로운 URL로 이동합니다.
	});
	var link = document.getElementById('gangseogu');
	link.addEventListener('click', function(event) {
		event.preventDefault(); // 기본 동작인 링크 이동을 막습니다.
		var acAddr = this.innerHTML;
		var url = this.href + '?ac_addr=' + encodeURIComponent(acAddr);
		window.location.href = url; // 새로운 URL로 이동합니다.
	});
	var link = document.getElementById('yangcheongu');
	link.addEventListener('click', function(event) {
		event.preventDefault(); // 기본 동작인 링크 이동을 막습니다.
		var acAddr = this.innerHTML;
		var url = this.href + '?ac_addr=' + encodeURIComponent(acAddr);
		window.location.href = url; // 새로운 URL로 이동합니다.
	});
	var link = document.getElementById('gurogu');
	link.addEventListener('click', function(event) {
		event.preventDefault(); // 기본 동작인 링크 이동을 막습니다.
		var acAddr = this.innerHTML;
		var url = this.href + '?ac_addr=' + encodeURIComponent(acAddr);
		window.location.href = url; // 새로운 URL로 이동합니다.
	});
	var link = document.getElementById('yeongdeongpugu');
	link.addEventListener('click', function(event) {
		event.preventDefault(); // 기본 동작인 링크 이동을 막습니다.
		var acAddr = this.innerHTML;
		var url = this.href + '?ac_addr=' + encodeURIComponent(acAddr);
		window.location.href = url; // 새로운 URL로 이동합니다.
	});
	var link = document.getElementById('dongjakgu');
	link.addEventListener('click', function(event) {
		event.preventDefault(); // 기본 동작인 링크 이동을 막습니다.
		var acAddr = this.innerHTML;
		var url = this.href + '?ac_addr=' + encodeURIComponent(acAddr);
		window.location.href = url; // 새로운 URL로 이동합니다.
	});
	var link = document.getElementById('gwanakgu');
	link.addEventListener('click', function(event) {
		event.preventDefault(); // 기본 동작인 링크 이동을 막습니다.
		var acAddr = this.innerHTML;
		var url = this.href + '?ac_addr=' + encodeURIComponent(acAddr);
		window.location.href = url; // 새로운 URL로 이동합니다.
	});
	var link = document.getElementById('gumcheongu');
	link.addEventListener('click', function(event) {
		event.preventDefault(); // 기본 동작인 링크 이동을 막습니다.
		var acAddr = this.innerHTML;
		var url = this.href + '?ac_addr=' + encodeURIComponent(acAddr);
		window.location.href = url; // 새로운 URL로 이동합니다.
	});
	</script>
</html>