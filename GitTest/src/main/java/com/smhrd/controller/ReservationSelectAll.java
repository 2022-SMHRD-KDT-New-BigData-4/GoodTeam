package com.smhrd.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.command.Command;
import com.smhrd.model.CustomersVO;
import com.smhrd.model.JoinDAO;
import com.smhrd.model.JoinVO;
import com.smhrd.model.ReservationsDAO;
import com.smhrd.model.ReservationsVO;

public class ReservationSelectAll implements Command{
	
		
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		//세션 스코프에서 가져오기
		HttpSession session = request.getSession();
		CustomersVO memberinfo = (CustomersVO) session.getAttribute("memberinfo");
		String cust_id = memberinfo.getCust_id();
	
		// 1. DAO에 전체 회원 정보를 조회하기
		JoinDAO dao = new JoinDAO();
		List<JoinVO> ReservationSelectAllList = dao.selectAll(cust_id);

		// 2. 조회한 정보를 request 영역에 담기
		request.setAttribute("ReservationSelectAll", ReservationSelectAllList);

		// 3. forward 방식으로 select.jsp로 이동
//		RequestDispatcher dispatcher = request.getRequestDispatcher("/select.jsp");
//		dispatcher.forward(request, response);

		return "myReservation";
	}
	
}
