package com.smhrd.controller;

import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.command.Command;
import com.smhrd.model.CustomersDAO;

public class FindId implements Command {
	// main->login페이지로 넘어가는 로직
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws UnsupportedEncodingException {
		
		// 파라미터 가져오기
		String email = request.getParameter("email");
		
		// 로직을 실행할 DAO 만들기
		CustomersDAO dao = new CustomersDAO();
		System.out.println("여기 있지롱");
		// 로직 실행
		String id = dao.findID(email);
		
		String url = null;
		if (id != null) {
			
			url = "Find_Id";
			request.setAttribute("id", id);
			
		}else {
			
			url ="forgot_id";
			
		}
		
		
		return url;
	}

}
