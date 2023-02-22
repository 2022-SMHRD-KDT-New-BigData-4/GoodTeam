const calendarDays = document.querySelectorAll(".calendar_days"),
	calendarTitle = document.querySelector(".title"),
	leftButton = document.querySelector(".left_button"),
	rightButton = document.querySelector(".right_button"),
	calendar = document.querySelector(".calendar");
// dateUpdate = document.querySelector(".date_update");

let stays = ''

$('#stay').on('keyup',()=>{
	stays = parseInt($('#stay').val())	
	})
		
	console.log(stays)

class Calendar {
	constructor(year, month) {
		this.today = new Date(year, month);
		this.year = this.today.getFullYear(),
			this.month = this.today.getMonth(),
			this.date = this.today.getDate(),
			this.day = this.today.getDay()
	}


	

	getFirstDay() {
		const firstDate = new Date(this.year, this.month);
		return firstDate.getDay();
	}

	getLastDay() {
		let wholeDays = [];
		if ((this.year % 4 === 0 && this.year % 100 !== 0) || (this.year % 400 === 0)) {
			wholeDays = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
		} else {
			wholeDays = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
		}
		return wholeDays[this.month];
	}

	fillCalendar() {
		this.initCalendar();
		calendarTitle.innerHTML = `${this.year}년 ${this.month + 1}월`
		const firstDay = this.getFirstDay();
		const lastDay = this.getLastDay();
		let day = 1;
		const today = new Date();
		for (let i = firstDay; i < calendarDays.length; i++) {
			if (day <= lastDay) {
				const button = document.createElement('button');
				button.classList.add('day_button');
				button.textContent = day;
				if (this.year == today.getFullYear() && this.month == today.getMonth() && day < today.getDate()) {
					button.classList.add('gray');
					button.disabled = true; // 버튼을 클릭할 수 없도록 설정
				}
				calendarDays[i].appendChild(button);
				day++;
			}
		}
	}

	initCalendar() {
		calendarDays.forEach((e) => {
			e.innerHTML = "";
		});
	}


	drawCalendar() {
		let change = 0;
		const today = new Date();
		let calendarInstance = new Calendar(today.getFullYear(), today.getMonth() + change);

		calendarInstance.fillCalendar();

		leftButton.addEventListener("click", (e) => {
			e.stopPropagation();
			change--;
			calendarInstance = new Calendar(today.getFullYear(), today.getMonth() + change);
			calendarInstance.fillCalendar();
			this.updateCalendarStyle();
		});
		rightButton.addEventListener("click", (e) => {
			e.stopPropagation();
			change++;
			calendarInstance = new Calendar(today.getFullYear(), today.getMonth() + change);
			calendarInstance.fillCalendar();
			this.updateCalendarStyle();
		});
	}


	updateCalendarStyle() {
		const dayButtons = document.querySelectorAll(".day_button");
		let firstSelectedDay = 0;
		let clickCount = 0;

		// 달력 스타일 초기화
		dayButtons.forEach((element) => {
			element.classList.remove("day_selected");
		})

		// 달력 날짜들에 클릭 이벤트 추가
		dayButtons.forEach((element) => {
			element.addEventListener("click", (event) => {
				event.target.classList.toggle("day_selected");
				++clickCount;

				// 선택 일자 타입 변환
				if (firstSelectedDay === 0) {
					firstSelectedDay = Number(event.target.innerText);
				}

				// 클릭 횟수 2회 넘어가면 달력 스타일 초기화
				if (clickCount > 1) {
					dayButtons.forEach((e) => {
						e.classList.remove("day_selected");
						clickCount = 0;
						firstSelectedDay = 0;
					});
				}
			});
		});

		// 달력 날짜들에 호버링 이벤트 추가
		dayButtons.forEach((element) => {
			element.addEventListener("mouseenter", (event) => {
				event.target.classList.add("day_hover")
			});
		});

		dayButtons.forEach((element) => {
			element.addEventListener("mouseleave", (event) => {
				event.target.classList.remove("day_hover")
			});
		});

	}




	handleEvents() {
		this.drawCalendar();
		this.updateCalendarStyle();
		// 예약버튼 추가
		const reserveButton = document.querySelector(".reserve_button");

		reserveButton.addEventListener("click", () => {
			// 날짜 선택후 클릭 이벤트
			const selectedDayButtons = document.querySelectorAll(".day_selected");
			if (selectedDayButtons.length !== 1) {
				alert("하나의 날짜를 선택해주세요.");
				return;
			}

			const selectedDay = Number(selectedDayButtons[0].innerText);
			const today = new Date();
			if (selectedDay < today.getDate()) {
				alert("당일 이전의 날짜는 예약할 수 없습니다.");
				return;
			}
			
			
			
			// 년, 월, 일 데이터 입력 받고 입력받은 데이터를 date로 뭉침
			let reservYear = calendarTitle.innerHTML.split('년')[0]
			let reservMonth = calendarTitle.innerHTML.split('년')[1].replace('월', '')
			let reservDate = new Date(reservYear, reservMonth - 1, selectedDay + 1);
			console.log(reservDate)
			// queryString 형식으로 보내기 위해 데이터를 다시 입력받는작업
			let dateString = reservDate.toISOString().substring(0, 10);
			let checkOut = new Date(reservYear, reservMonth - 1, selectedDay + 1 + stays)
			let checkOutString = checkOut.toISOString().substring(0,10);
			$.ajax({
				url: "hotel_choice.jsp",
				method: "POST",
				data: {
					date: dateString
				},
				success: function(result) {
					window.location.href = "hotel_choice.jsp?checkIn=" + dateString + "&" + "checkOut=" + checkOutString;
				},
				error: function(jqXHR, textStatus, errorThrown) {
					console.error("There was a problem with the ajax operation:", errorThrown);
				}
			});



		});
	}


}

const reserveButton = document.querySelector(".reserve_button");


const cal = new Calendar();
cal.handleEvents();
$(document).ready(function() {
	// URL에서 쿼리스트링 가져오기
	let urlParams = new URLSearchParams(window.location.search);

	// "date" 매개 변수 가져오기
	let dateParam = urlParams.get('checkIn');
	let dateParam2 = urlParams.get('checkOut');
	// "date" 매개 변수를 날짜 형식으로 변환
	let date = new Date(dateParam);
	let date2 = new Date(dateParam2)
	
	// 변환된 날짜 출력

	let formattedDate = date.toLocaleDateString("en-US", {
		month: "short",
		day: "2-digit",
		year: "numeric"
	});
	
	let formattedDate2 = date2.toLocaleDateString("en-US", {
		month: "short",
		day: "2-digit",
		year: "numeric"
	});

	let formattedDate3 = date.toLocaleDateString("en-US", {
		month: "2-digit",
		day: "2-digit"
	}).replace(/\//g, '/');
	
	let formattedDate4 = date2.toLocaleDateString("en-US", {
		month: "2-digit",
		day: "2-digit"
	}).replace(/\//g, '/');

	console.log(date); // 예: Thu Feb 17 2023 00:00:00 GMT+0900 (한국 표준시)
	if (dateParam != null) {
		$("#calendarButton").text("     " + formattedDate + " ~ " + formattedDate2);
		$("#calendarButton").css({
			"justify-content": "left",
			"white-space": "pre"
		});
		$(".re_date").text(formattedDate3 + " ~ " + formattedDate4);
		$(".re_date").css({
			"justify-content": "left",
			"white-space": "pre-wrap"
		});
	}
});


// 클릭 시 화면이 전체화면이 회색이 됨
const calendarButton = document.getElementById("calendarButton")
const calendarContainer = document.getElementsByClassName('calendar_container')[0]
const closeButton = document.getElementById("close");
  calendarButton.addEventListener('click', () => {
    document.body.style.backgroundColor = 'lightgray';
    calendarContainer.classList.remove('hide');
    $('#re_scroll').css('background-color', 'lightgray');
  });
  closeButton.addEventListener('click', () => {
	 calendarContainer.classList.add('hide'); 
	 document.body.style.backgroundColor = 'white';
	 $('#re_scroll').css('background-color', '');
  });

