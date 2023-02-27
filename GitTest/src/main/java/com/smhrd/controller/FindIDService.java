package com.smhrd.controller;

import java.io.UnsupportedEncodingException;
import java.time.LocalDate;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.command.Command;
import com.smhrd.model.CustomersDAO;
import com.smhrd.model.CustomersVO;

public class FindIDService implements Command {
	//id 찾기
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws UnsupportedEncodingException {
		// 한글 잡아주기 
		request.setCharacterEncoding("UTF-8");
		// 받아온 파라미터 꺼내기
		String email = request.getParameter("email");
		
		CustomersDAO dao = new CustomersDAO();
		
		String id = dao.findID(email);
		
		request.setAttribute("ID", id);
//		        setAttribute(보낼 페이지에서 보낼 변수명을 기입, 내가 이 페이지에 저장할 값을 기입)
//		^request는 값을 받고 나면 사라짐
//		session은 서버끄기 전까지 페이지에서 계속 값을 가지고 있어서 오류날 수 있음
		return "id찾은 페이지";
	}
	
}
