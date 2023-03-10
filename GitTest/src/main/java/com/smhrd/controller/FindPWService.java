package com.smhrd.controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.command.Command;
import com.smhrd.model.CustomersDAO;
import com.smhrd.model.CustomersVO;

public class FindPWService implements Command {
	// pw 찾기
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws UnsupportedEncodingException {
		request.setCharacterEncoding("UTF-8");

		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");

		CustomersVO vo = new CustomersVO(id, name, email);
		CustomersDAO dao = new CustomersDAO();

		String findpw = dao.findPW(vo);

		String url = null;
		if (findpw != null) {
			url = "Find_Pw";
			request.setAttribute("pw", findpw);
		} else {
			url = "forgot_pw";
		}

		return url;
	}

}
