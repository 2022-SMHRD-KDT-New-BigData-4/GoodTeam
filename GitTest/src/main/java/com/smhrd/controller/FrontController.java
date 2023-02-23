package com.smhrd.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
// FrontController는 어떠한 요청이 들어오더라도 한 곳으로 서비스를 지원할 수 있도록
// 잡아주는 패턴이다.
import javax.servlet.http.HttpSession;

import com.smhrd.command.Command;

// *do 확장자! -> 어떤 요청이라도 .do 라는 확장자를 가지고 있다면
//@WebServlet("*do")라는 url Mapping을 찾아온다.
@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	// HashMap 구조 만들기
	HashMap<String, Command> map = null;

	// 제공하고자 하는 서비스에 대하여 기본 설정이 필요할 때 사용한다.
	public void init(ServletConfig config) throws ServletException {
		// 서블릿 실행시 최초 1번만 실행되는 메서드이다.
		System.out.println("초기화 메서드 생성");
		// FrontController 가 생성될 때 객체 생성을 최초 1번만
		// 어떤 요청이 들어왔을 때 해당하는 요청을 수행할 수 있는 클래스의 객체를 생성!!
		map = new HashMap<>();
		// 회원가입 서비스
		map.put("JoinService.do", new JoinService());
		// 모든 숙소 검색 서비스
		map.put("SearchAllRoom.do", new SearchAllRoom());
		// 내가 선택한 숙소 들어가는 서비스
		map.put("ChoiceRoom.do", new ChoiceRoom());
		// 지역별로 내가 들어갈 숙소 선택
		map.put("LocalMap.do", new LocalArea());
		// 로그인을 할 수 있는 기능
		map.put("LonginService.do", new LoginService());

	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 인코딩 잡아주기
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		// 1. 들어온 요청이 어떤 요청인지 판단이 필요.
		// getRequestURI() : 요청된 주소값 자체를 가져오는 메서드
		String uri = request.getRequestURI();
		System.out.println("요청된 uri 주소 : " + uri);

		// 프로젝트 이름만 분리하기. -> getContextPath()
		String path = request.getContextPath();
		System.out.println("프로젝트 이름 : " + path);

		// 요청된 서블릿의 이름
		// uri.특정 이름 제거하기
		String finaluri = uri.substring(path.length() + 1);
		System.out.println("요청된 서블릿 : " + finaluri);

		String finalpath = null;

		if (finaluri.contains("Go")) {
			// 2. WEB-INF로 이동
			// GoMain.do -> main.jsp
			// GoUpdate.do -> update.jsp
			finalpath = finaluri.substring(2).replaceAll(".do", "").toLowerCase();
		}
		// 서블릿이 아닌 클래스로 가는 부분
		else {
			// 3. 그렇지 않은 경우에는
			Command com = map.get(finaluri);
			finalpath = com.execute(request, response);
		}

		// finalpath ---> redirect:/GoMain.do
		if (finalpath == null) {
			// ajax 통신인 경우 아무것도 안한다.
		} else if (finalpath.contains("redirect:/")) {
			// redirect 방식
			response.sendRedirect(finalpath.substring(10));

		} else {

			// 페이지 결과 응답 진행(forward 방식)
			RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/" + finalpath + ".jsp");
			rd.forward(request, response);

		}

	}

}
