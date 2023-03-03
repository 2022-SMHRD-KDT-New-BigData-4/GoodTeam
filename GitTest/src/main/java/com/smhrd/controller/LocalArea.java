package com.smhrd.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import com.smhrd.command.Command;
import com.smhrd.model.AccommodationsDAO;
import com.smhrd.model.AccommodationsVO;
import com.smhrd.model.JoinDAO;
import com.smhrd.model.JoinVO;

public class LocalArea implements Command {
	// 지역별로 호텔을 묶어서 검색하는 기능
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws UnsupportedEncodingException {

		String ac_addr = request.getParameter("ac_addr");
		System.out.println(ac_addr);

		JoinDAO dao = new JoinDAO();
		List<JoinVO> Localrooms = dao.LocalAreaRooms(ac_addr);

		
		request.setAttribute("roomlist", Localrooms);
		return "AllroomsSelect";
	}

}
