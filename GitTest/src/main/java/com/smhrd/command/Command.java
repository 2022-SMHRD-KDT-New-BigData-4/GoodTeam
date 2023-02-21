package com.smhrd.command;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// 인터페이스
public interface Command {

	// Command-interface의 역할
	// : 각 기능별 구체적인 내용들은 달라지지만, 같은 메서드의 이름(excute)과
	// Servlet을 사용하기 위하여 필수적인 매개변수를 정해진 틀로 만들어 사용하는 기능!

	String execute(HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException;

}
