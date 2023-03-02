package com.smhrd.controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.command.Command;

public class LogoutService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws UnsupportedEncodingException {
		// request스코프에서 부터 꺼내올 수 있다.
		HttpSession session = request.getSession();

		session.invalidate();
		// 또는
		// session.removeAttribute("member");

		// response.sendRedirect("main.jsp");
		return "redirect:/Gomain.do";
	}

}
