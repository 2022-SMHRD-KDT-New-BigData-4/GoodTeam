<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SeoulLocal</title>
<link rel="stylesheet" href="assets/css/reset.css">
<link rel="stylesheet" href="assets/css/SeoulLocal.css">
<link rel="stylesheet" href="assets/css/bar2.css">
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>	<div class="main">
<!--  -->
</head>
<body>
		<img src="assets/images/seoul2.jpg">
		<!-- 상단바 -->
		<div class="bar_home">
			<!-- 1. 홈  -->
			<div class="home">
				<a class="has" href="GoMain.do">HOW ABOUT SEOUL ?</a>
				</div>
			<!-- 홈  -->
			<!-- 2. 페이지 -->
			<div class="page">
				<h3>> Login</h3>
			</div>
			<!-- 페이지 -->

			<!-- 3. 검색놈들 -->
			<div class="searchicon">
				<!-- 3-1. 검색바 -->
				<form action="Search.do" id="searchBox" >
					<div class="search">
						<input type="text" class="non" name="ac_addr">
						<!-- 3-2. 돋보기 -->
							<div class="icon" style="cursor:pointer" onclick="document.getElementById('searchBox').submit();">
							<img class="iconimg" src="assets/images/searchicon.png">
							
						</div>
						<!-- 돋보기 -->
					</div>
					<!-- 검색바 -->
				</form>
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
						<a href="#">USD - US Dollar</a> <a href="#">GBP - British
							Pound</a> <a href="#">JPY - Japanese Yen</a> <a href="#">EUR -
							Euro</a>
					</div>
				</div>
				<!-- login -->

				<!-- 메뉴1 login-->
				<div class="log">
					<a class="a" href="Recommand.do">Recommand</a>
				</div>
				<!-- login -->


				<!-- 메뉴2 qna-->
				<div class="qna">
					<a class="a" href="QnaTotal.do">Contact Us</a>
				</div>
				<!-- qna -->

				<!-- 메뉴3 profile-->
				<div class="profilebox">
					<a href="MyInfo.do" class="non1"></a>
					<div class="head"></div>
					<div class="p_body"></div>
				</div>
				<!-- profile -->
			</div>
			<!-- 오른쪽 박스 -->
		</div>
		<!-- 상단바 -->

		<!-- 중앙 -->
		<div class="sub13">
			<!-- 4-1.컨텐츠 담을 박스 -->
			<div class="s_left">
				<!-- 서울 지도 부분 -->
				<div class="Seoul">
					<img src="assets/images/서울지도/서울지도.png" alt="" class="Seoulmap">
				</div>
				<!-- Seoul -->
			</div>
			<!-- s_left -->
			<!-- 헤드라인 부분 -->
			<div class="s_right">
				<div class="Seoul" id="content">
					<div>
						<a class="headline" href="SearchAllRoom.do">Seoul Trip</a>
					</div>
					<!-- 서울 구 나타내는 코드 -->
					<div class="contents">
						<!-- 첫째 줄 -->
						<div class="local">
							<div class="localmap">
								<a class="aa" id="seochogu" href="LocalMap.do">서초구</a>
								<div>
									<img src="assets/images/서울지도/서초구.png" alt="" class="localmapimg">
								</div>
							</div>
							<div class="localmap">
								<a class="aa" id="gangnamgu" href="LocalMap.do">강남구</a>
								<div>
									<img src="assets/images/서울지도/강남구.png" alt="" class="localmapimg">
								</div>
							</div>
						</div>
						<!-- 둘째 줄 -->
						<div class="local">
							<div class="localmap">
								<a class="aa" id="mapogu" href="LocalMap.do">마포구</a>
								<div>
									<img src="assets/images/서울지도/마포구.png" alt="" class="localmapimg">
								</div>
							</div>
							<div class="localmap">
								<a class="aa" id="seodaemoongu" href="LocalMap.do">서대문구</a>
								<div>
									<img src="assets/images/서울지도/서대문구.png" alt="" class="localmapimg">
								</div>
							</div>
							<div class="localmap">
								<a class="aa" id="unpyeonggu" href="LocalMap.do">은평구</a>
								<div>
									<img src="assets/images/서울지도/은평구.png" alt="" class="localmapimg">
								</div>
							</div>
						</div>
						<!-- 셋째 줄 -->
						<div class="local">
							<div class="localmap">
								<a class="aa" id="jongrogu" href="LocalMap.do">종로구</a>
								<div>
									<img src="assets/images/서울지도/종로구.png" alt="" class="localmapimg">
								</div>
							</div>
							<div class="localmap">
								<a class="aa" id="junggu" href="LocalMap.do">중구</a>
								<div>
									<img src="assets/images/서울지도/중구.png" alt="" class="localmapimg">
								</div>
							</div>
							<div class="localmap">
								<a class="aa" id="younsangu" href="LocalMap.do">용산구</a>
								<div>
									<img src="assets/images/서울지도/용산구.png" alt="" class="localmapimg">
								</div>
							</div>
						</div>
						<!-- 넷째 줄 -->
						<div class="local">
							<div class="localmap">
								<a class="aa" id="sungdonggu" href="LocalMap.do">성동구</a>
								<div>
									<img src="assets/images/서울지도/성동구.png" alt="" class="localmapimg">
								</div>
							</div>
							<div class="localmap">
								<a class="aa" id="dongdaemoon" href="LocalMap.do">동대문구</a>
								<div>
									<img src="assets/images/서울지도/동대문구.png" alt="" class="localmapimg">
								</div>
							</div>
							<div class="localmap">
								<a class="aa" id="joongranggu" href="LocalMap.do">중랑구</a>
								<div>
									<img src="assets/images/서울지도/중랑구.png" alt="" class="localmapimg">
								</div>
							</div>
							<div class="localmap">
								<a class="aa" id="gwanjingu" href="LocalMap.do">광진구</a>
								<div>
									<img src="assets/images/서울지도/광진구.png" alt="" class="localmapimg">
								</div>
							</div>
						</div>
						<!-- 다섯째 줄 -->
						<div class="local">
							<div class="localmap">
								<a class="aa" id="seongbukgu" href="LocalMap.do">성북구</a>
								<div>
									<img src="assets/images/서울지도/성북구.png" alt="" class="localmapimg">
								</div>
							</div>
							<div class="localmap">
								<a class="aa" id="gangbukgu" href="LocalMap.do">강북구</a>
								<div>
									<img src="assets/images/서울지도/강북구.png" alt="" class="localmapimg">
								</div>
							</div>
							<div class="localmap">
								<a class="aa" id="dobonggu" href="LocalMap.do">도봉구</a>
								<div>
									<img src="assets/images/서울지도/도봉구.png" alt="" class="localmapimg">
								</div>
							</div>
							<div class="localmap">
								<a class="aa" id="nowongu" href="LocalMap.do">노원구</a>
								<div>
									<img src="assets/images/서울지도/노원구.png" alt="" class="localmapimg">
								</div>
							</div>
						</div>
						<!-- 여섯째 줄 -->
						<div class="local">
							<div class="localmap">
								<a class="aa" id="gangdonggu" href="LocalMap.do">강동구</a>
								<div>
									<img src="assets/images/서울지도/강동구.png" alt="" class="localmapimg">
								</div>
							</div>
							<div class="localmap">
								<a class="aa" id="songpagu" href="LocalMap.do">송파구</a>
								<div>
									<img src="assets/images/서울지도/송파구.png" alt="" class="localmapimg">
								</div>
							</div>
						</div>
						<!-- 일곱째 줄 -->
						<div class="local">
							<div class="localmap">
								<a class="aa" id="gangseogu" href="LocalMap.do">강서구</a>
								<div>
									<img src="assets/images/서울지도/강서구.png" alt="" class="localmapimg">
								</div>
							</div>
							<div class="localmap">
								<a class="aa" id="yangcheongu" href="LocalMap.do">양천구</a>
								<div>
									<img src="assets/images/서울지도/양천구.png" alt="" class="localmapimg">
								</div>
							</div>
							<div class="localmap">
								<a class="aa" id="gurogu" href="LocalMap.do">구로구</a>
								<div>
									<img src="assets/images/서울지도/구로구.png" alt="" class="localmapimg">
								</div>
							</div>
							<div class="localmap">
								<a class="aa" id="yeongdeongpugu" href="LocalMap.do">영등포구</a>
								<div>
									<img src="assets/images/서울지도/영등포구.png" alt="" class="localmapimg">
								</div>
							</div>
						</div>
						<!-- 여덟째 줄 -->
						<div class="local">
							<div class="localmap">
								<a class="aa" id="dongjakgu" href="LocalMap.do">동작구</a>
								<div>
									<img src="assets/images/서울지도/동작구.png" alt="" class="localmapimg">
								</div>
							</div>
							<div class="localmap">
								<a class="aa" id="gwanakgu" href="LocalMap.do">관악구</a>
								<div>
									<img src="assets/images/서울지도/관악구.png" alt="" class="localmapimg">
								</div>
							</div>
							<div class="localmap">
								<a class="aa" id="gumcheongu" href="LocalMap.do">금천구</a>
								<div>
									<img src="assets/images/서울지도/금천구.png" alt="" class="localmapimg">
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- s_left -->
		</div>
		<!-- 컨텐츠 담을 박스 -->
	






</body>
<script>
	const districts = [ 'seochogu', 'gangnamgu', 'mapogu', 'seodaemoongu',
			'unpyeonggu', 'jongrogu', 'junggu', 'younsangu', 'sungdonggu',
			'dongdaemoon', 'joongranggu', 'gwanjingu', 'seongbukgu',
			'gangbukgu', "dobonggu", "nowongu", "gangdonggu", "songpagu",
			"gangseogu", "yangcheongu", "gurogu", "yeongdeongpugu",
			"dongjakgu", "dongjakgu", "gwanakgu", "gumcheongu" ];

	for (let i = 0; i < districts.length; i++) {
		const link = document.getElementById(districts[i]);
		link.addEventListener('click', function(event) {
			event.preventDefault(); // 기본 동작인 링크 이동을 막습니다.
			const acAddr = this.innerText;
			const url = this.href + '?ac_addr=' + encodeURIComponent(acAddr);
			window.location.href = url; // 새로운 URL로 이동합니다.
		});
	}
</script>
</html>