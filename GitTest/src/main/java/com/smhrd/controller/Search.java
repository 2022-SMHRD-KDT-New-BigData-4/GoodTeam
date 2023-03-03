package com.smhrd.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.command.Command;
import com.smhrd.model.AccommodationsDAO;
import com.smhrd.model.AccommodationsVO;

public class Search implements Command {
	// 지역별로 호텔을 묶어서 검색하는 기능
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws UnsupportedEncodingException {

		String ac_addr = request.getParameter("ac_addr");
		String ac_name = ac_addr;
		AccommodationsVO vo = new AccommodationsVO(ac_addr, ac_name);
		AccommodationsDAO dao = new AccommodationsDAO();
		List<AccommodationsVO> Localrooms = dao.Search(vo);
		System.out.println(Localrooms);

		
		request.setAttribute("roomlist", Localrooms);
		return "AllroomsSelect";
	}

}
