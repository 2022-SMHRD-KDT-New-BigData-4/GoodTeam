package com.smhrd.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.command.Command;
import com.smhrd.model.CustomersVO;
import com.smhrd.model.JoinDAO;
import com.smhrd.model.JoinVO;
import com.smhrd.model.RoomsDAO;
import com.smhrd.model.WishlistDAO;
import com.smhrd.model.WishlistVO;

public class WishSelectAll implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws UnsupportedEncodingException {
		// 받아올 정보 >> cust_id(세션 영역)
		HttpSession session = request.getSession();
		CustomersVO memberinfo = (CustomersVO) session.getAttribute("memberinfo");
		// cust_id 빼오기
		String cust_id = memberinfo.getCust_id();

		// 실행할 DAO 설정
		JoinDAO dao = new JoinDAO();
		List<JoinVO> wishlist = dao.WishSelectAll(cust_id);

		request.setAttribute("wishlist", wishlist);

		return "Allwishlist";
	}

}
