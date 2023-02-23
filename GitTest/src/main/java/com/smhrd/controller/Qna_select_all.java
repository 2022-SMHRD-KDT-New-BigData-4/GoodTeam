package com.smhrd.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.command.Command;
import com.smhrd.model.QnasDAO;
import com.smhrd.model.QnasVO;

public class Qna_select_all implements Command {
	
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// 1. DAO에 전체 회원 정보를 조회하기
		QnasDAO dao = new QnasDAO();
		List<QnasVO> qnaList = dao.selectAll();

		// 2. 조회한 정보를 request 영역에 담기
		request.setAttribute("qnaList", qnaList);

		// 3. forward 방식으로 select.jsp로 이동
//		RequestDispatcher dispatcher = request.getRequestDispatcher("/select.jsp");
//		dispatcher.forward(request, response);

		return "QnaSelectAll";
	}


}
