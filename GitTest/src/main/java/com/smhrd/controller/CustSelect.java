package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.command.Command;
import com.smhrd.model.CustomersDAO;
import com.smhrd.model.CustomersVO;

public class CustSelect implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws UnsupportedEncodingException {

		HttpSession session = request.getSession();
		CustomersVO memberinfo = (CustomersVO) session.getAttribute("memberinfo");
		String id = memberinfo.getCust_id();

		// post로 넘긴 데이터 한글 깨지지 않게 잡아주기
		request.setCharacterEncoding("UTF-8");
		// 보낸 데이터 받아오기
		String cust_id = request.getParameter("id");
		String cust_pw = request.getParameter("pw");
		String cust_name = request.getParameter("name");
		String cust_email = request.getParameter("email");
		String cust_phone = request.getParameter("phone");

		// 받아온 데이터 하나로 묶기
		CustomersVO vo = new CustomersVO(cust_id, cust_pw, cust_name, cust_email, cust_phone);
		// 회원정보를 수정할 dao 생성
		CustomersDAO dao = new CustomersDAO();
		// 회원정보 수정 로직 수행 쿼리문
		int result = dao.update(vo);
		String url = null;
		if (result == 1) {
			/* 회원정보 수정 성공 시, my page 창으로 이동 */
			url = "SelectSuccess";
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = null;
			try {
				out = response.getWriter();
			} catch (IOException e) {
				e.printStackTrace();
				out.printf("<script>alert('회원정보 수정이 완료되었습니다.')</script>");
			}
			
			
			

		} else {

			url = "SelectFail";

		}

		return url;
	}

}
