package com.smhrd.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.command.Command;
import com.smhrd.model.CustomersVO;
import com.smhrd.model.RoomsVO;
import com.smhrd.model.WishlistDAO;
import com.smhrd.model.WishlistVO;

public class WishlistAdd implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws UnsupportedEncodingException {
		// 방 번호와 고객 아이디 가져오기
		// 세션에서 가져옴 cust_id
		HttpSession session = request.getSession();
		CustomersVO memberinfo = (CustomersVO) session.getAttribute("memberinfo");
		// room_seq 가져오기
		int room_seq = (int) session.getAttribute("room_seq");
		String cust_id = memberinfo.getCust_id();
		System.out.println();
		System.out.println("로직 전 :" + room_seq);
		// 보내온 데이터 한개로 묶기
		WishlistVO vo = new WishlistVO(cust_id, room_seq);
		// 로직을 돌릴 dao 설정
		WishlistDAO dao = new WishlistDAO();
		int result = dao.WistlistAdd(vo);

		session.removeAttribute("room_seq");
//---------------------------- 위시 리스트 추가 ----------------------------------//		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		return "myinfo";
	}

}
