package com.smhrd.controller;

import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.command.Command;

public class MyInfo implements Command {
	// main->login페이지로 넘어가는 로직
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws UnsupportedEncodingException {
		

		
		return "mypage";
	}

}
