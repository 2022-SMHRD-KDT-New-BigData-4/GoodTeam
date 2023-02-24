package com.smhrd.controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.command.Command;
import com.smhrd.model.WishlistDAO;

public class WishlistDel implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws UnsupportedEncodingException {
		// WISH_SEQ
		Integer wish_seq = Integer.parseInt(request.getParameter("wish_seq"));

		// 로직을 수행할 DAO데이터 생성

		WishlistDAO dao = new WishlistDAO();
		int result = dao.WishDelete(wish_seq);

		if (result == 1) {
			System.out.println("서엉공");
		} else {
			System.out.println("시일패");
		}

		return "AllroomSelect";
	}

}
