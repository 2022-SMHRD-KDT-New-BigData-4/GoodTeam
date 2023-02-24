package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.command.Command;
import com.smhrd.model.ReviewsDAO;

public class ReviewDelete implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response) {

		// 1. 요청받은 데이터 꺼내오기
		int review_seq = Integer.parseInt(request.getParameter("review_seq"));
		
		// 3. DAO 생성
		ReviewsDAO dao = new ReviewsDAO();
		// 4. dao가지고있는 회원가입 기능 호출
		int result = dao.delete(review_seq);

		// 5. result 값에 따른 페이지 이동!

		// 페이지의 주소를 기억할 변수!
		String moveURL = null;

		if (result > 0) {
			// 리뷰 작성 성공
			moveURL = "GoMain.do";
			System.out.println("갔음");

		} else {
			// 리뷰 작성 실패
			moveURL = "redirect:/GoMain.do";
			System.out.println("안갔음");
		}
//		// 공통적으로 실행될 수 있는 영역
//		RequestDispatcher rd = request.getRequestDispatcher(moveURL);
//		// rd.forward(request, response);

		// 넘어가는건 중요하지 않고 해당 url로 이동
		return moveURL;
	}
	
}
