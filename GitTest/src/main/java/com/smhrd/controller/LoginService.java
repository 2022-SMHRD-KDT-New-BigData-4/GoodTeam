package com.smhrd.controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.smhrd.command.Command;
import com.smhrd.model.CustomersDAO;
import com.smhrd.model.CustomersVO;

public class LoginService implements Command {
	// 로그인 기능의 메서드
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws UnsupportedEncodingException {
		// post 방식으로 가져왔을 때 한글이 깨지지 않게 하기
		request.setCharacterEncoding("UTF-8");
		// 받아온 id, pw 저장
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");

		// 전달할 데이터 하나로 묶기
		CustomersVO vo = new CustomersVO(id, pw);
		CustomersDAO dao = new CustomersDAO();

		CustomersVO memberinfo = dao.login(vo);

		if (memberinfo != null) {

			// 아이디 정보를 집어넣을 세션 생성
			HttpSession Session = request.getSession();
			Session.setAttribute("memberinfo", memberinfo);
			return "AllroomsSelect";

		}

		return "Loginfail";
	}

}
