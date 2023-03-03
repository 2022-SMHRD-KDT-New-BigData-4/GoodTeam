package com.smhrd.controller;

import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.command.Command;

public class CustUpdate implements Command {
	// 개인정보수정 페이지
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws UnsupportedEncodingException {
		

		
		return "custupdate";
	}

}
