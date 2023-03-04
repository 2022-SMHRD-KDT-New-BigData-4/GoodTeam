package com.smhrd.controller;

import java.io.UnsupportedEncodingException;
import java.time.LocalDate;
import java.time.temporal.ChronoUnit;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.command.Command;
import com.smhrd.model.CustomersVO;
import com.smhrd.model.ReservationsDAO;
import com.smhrd.model.ReservationsVO;

public class Reservation implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws UnsupportedEncodingException {

		
		String checkIn = request.getParameter("checkin");
		String checkOut = request.getParameter("checkout");
		int roomSeq = Integer.parseInt(request.getParameter("room_seq"));
		// 날짜변환
		LocalDate checkInDate = LocalDate.parse(checkIn);
		LocalDate checkOutDate = LocalDate.parse(checkOut);
		// 날짜 빼기
		long numberOfNights = ChronoUnit.DAYS.between(checkInDate, checkOutDate);
		
		
		
		int totalAmount = Integer.parseInt(request.getParameter("total_amount"))*(int)numberOfNights;
		// 디버깅을 위해 콘솔에 출력
		System.out.println("Total amount: " + totalAmount);
		System.out.println("Check in date: " + checkIn);
		System.out.println("Check out date: " + checkOut);
		System.out.println("Room sequence: " + roomSeq);

		HttpSession session = request.getSession();
		CustomersVO memberinfo = (CustomersVO) session.getAttribute("memberinfo");
		String cust_id = memberinfo.getCust_id();
		System.out.println(memberinfo.getCust_id());

		// 한번에 묶을 VO 생성
		ReservationsVO vo = new ReservationsVO(cust_id, roomSeq, checkIn, checkOut, totalAmount);
		ReservationsDAO dao = new ReservationsDAO();
		int result = dao.reservation(vo);

		String url = "recommand";

		url = "mypage";

		return url;
	}

}
