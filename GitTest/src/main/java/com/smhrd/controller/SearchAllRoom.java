package com.smhrd.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.command.Command;
import com.smhrd.model.AccommodationsDAO;
import com.smhrd.model.AccommodationsVO;
import com.smhrd.model.CustomersDAO;
import com.smhrd.model.RoomsDAO;

public class SearchAllRoom implements Command {
	// 전체 방을 조회하는 기능
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws UnsupportedEncodingException {

		// 한글 잡아주기
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id");
		// 전체숙소 검색이라 받아올 데이터값이 없다.
		AccommodationsDAO dao = new AccommodationsDAO();
		// 들어갈 데이터 값이 없음
		// AccommodationsVO vo = new AccommodationsVO();

		// 뽑아오는 로직 수행
		List<AccommodationsVO> roomlist = dao.SelectAllRooms();
		request.setAttribute("roomlist", roomlist);

		return "전체숙소";
	}

}
