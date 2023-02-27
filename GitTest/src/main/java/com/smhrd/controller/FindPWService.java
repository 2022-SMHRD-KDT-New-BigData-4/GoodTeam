package com.smhrd.controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.command.Command;
import com.smhrd.model.CustomersDAO;
import com.smhrd.model.CustomersVO;


public class FindPWService implements Command {
	//pw 찾기
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
		
		request.setAttribute("findpw", findpw);
		
		return "id찾은 페이지";
	}

}
