package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.command.Command;
import com.smhrd.model.CustomersVO;
import com.smhrd.model.QnasDAO;
import com.smhrd.model.QnasVO;
import com.smhrd.model.ReservationsDAO;
import com.smhrd.model.ReservationsVO;

public class ReservationCancel implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response) {

		// 1. 요청받은 데이터 꺼내오기
		//세션 스코프에서 아이디 
		HttpSession session = request.getSession();
		CustomersVO memberinfo = (CustomersVO) session.getAttribute("memberinfo");
		String cust_id = memberinfo.getCust_id();
		int reserv_seq = Integer.parseInt(request.getParameter("reserv_seq"));
		// 2. 요청받은 데이터를 하나로 묶기
		ReservationsVO vo = new ReservationsVO(cust_id, reserv_seq);
		// 3. DAO 생성
		ReservationsDAO dao = new ReservationsDAO();
		// 4. dao가지고있는 회원가입 기능 호출
		int result = dao.cancel(vo);

		// 5. result 값에 따른 페이지 이동!

//		// 페이지의 주소를 기억할 변수!
//		String moveURL = null;
//
//		if (result > 0) {
//			// 예약 취소 성공
//			moveURL = "GoMain.do";
//			System.out.println("갔음");
//
//		} else {
//			// 예약 취소 실패
//			moveURL = "redirect:/GoMain.do";
//			System.out.println("안갔음");
//		}
////		// 공통적으로 실행될 수 있는 영역
////		RequestDispatcher rd = request.getRequestDispatcher(moveURL);
////		// rd.forward(request, response);
//
//		// 넘어가는건 중요하지 않고 해당 url로 이동
	
		return "mypage";
	}
}
