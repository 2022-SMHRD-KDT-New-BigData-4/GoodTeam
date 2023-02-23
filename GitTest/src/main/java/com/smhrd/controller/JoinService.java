package com.smhrd.controller;

import java.io.UnsupportedEncodingException;
import java.time.LocalDate;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.command.Command;
import com.smhrd.model.CustomersDAO;
import com.smhrd.model.CustomersVO;

public class JoinService implements Command {
	// 회원가입
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws UnsupportedEncodingException {
		
		// 한글 잡아주기 
		request.setCharacterEncoding("UTF-8");
		// 받아온 파라미터 꺼내기
		 String cust_id = request.getParameter("id");
		 String cust_pw = request.getParameter("pw");
		 String cust_name = request.getParameter("pw");
		 String cust_email= request.getParameter("email");
		 String cust_phone = request.getParameter("phone");
		 int cust_point = 0;
		 LocalDate cust_joindate = LocalDate.of(2055,03,20);
		 char cust_type = 'M';
		 // 현재 오늘 날자 불러옴

		
		// 보낼 데이터 하나로 묶기 위한 객체 생성
		CustomersVO vo = new CustomersVO(cust_id , cust_pw , cust_name , cust_email , cust_phone ,cust_point , cust_joindate , cust_type);
		CustomersDAO dao = new CustomersDAO();
		
		//CustomersDAO로부터 조인을 수행할 메서드 불러오기
		int result = dao.JoinService(vo);
		System.out.println(cust_id);
		System.out.println(cust_pw);
		System.out.println(cust_name);
		System.out.println(cust_email);
		System.out.println(cust_phone);
		String url;
		if(result == 1) {
			System.out.println("삽입성공");
			url = "GoMain.do";
		} else {
			url = "fail.do";
			System.out.println("삽입실패");
		}
		
		
		return url;
	}

}
