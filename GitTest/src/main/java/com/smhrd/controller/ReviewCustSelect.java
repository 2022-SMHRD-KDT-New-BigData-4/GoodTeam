package com.smhrd.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.command.Command;
import com.smhrd.model.ReviewsDAO;
import com.smhrd.model.ReviewsVO;

public class ReviewCustSelect implements Command{
	
		
		public String execute(HttpServletRequest request, HttpServletResponse response) {
			// 1. DAO에 전체 회원 정보를 조회하기
			
			String cust_id = request.getParameter("cust_id");
			ReviewsDAO dao = new ReviewsDAO();
			List<ReviewsVO> reviewLst = dao.reviewCustSelect(cust_id);
			System.out.println(reviewLst);
			// 2. 조회한 정보를 request 영역에 담기
			request.setAttribute("reviewLst", reviewLst);

			// 3. forward 방식으로 select.jsp로 이동
//			RequestDispatcher dispatcher = request.getRequestDispatcher("/select.jsp");
//			dispatcher.forward(request, response);

			return "ReviewCustSelect";
		}


}
