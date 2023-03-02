package com.smhrd.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.command.Command;
import com.smhrd.model.AccommodationsDAO;
import com.smhrd.model.AccommodationsVO;
import com.smhrd.model.CustomersVO;
import com.smhrd.model.ReviewsDAO;
import com.smhrd.model.ReviewsVO;
import com.smhrd.model.RoomsDAO;
import com.smhrd.model.RoomsVO;

public class ReviewCustSelect implements Command{
	
		
		public String execute(HttpServletRequest request, HttpServletResponse response) {
			// 1. DAO에 전체 회원 정보를 조회하기
			
			
			HttpSession session = request.getSession();
			CustomersVO memberinfo = (CustomersVO) session.getAttribute("memberinfo");
			String cust_id = memberinfo.getCust_id();
			ReviewsDAO dao = new ReviewsDAO();
			List<ReviewsVO> reviewLst = dao.reviewCustSelect(cust_id);
			
			List<List<AccommodationsVO>> lst = new ArrayList<List<AccommodationsVO>>();
			AccommodationsDAO ac_dao = new AccommodationsDAO();
			RoomsDAO room_dao = new RoomsDAO();
			List<List<RoomsVO>> room_lst = new ArrayList<List<RoomsVO>>();
			for(ReviewsVO review : reviewLst) {
			    int ac_seq = review.getAc_seq();
			    AccommodationsVO ac_vo = new AccommodationsVO(ac_seq);
				List<AccommodationsVO> roominfo = ac_dao.ChoiceRoom(ac_vo);
				lst.add(roominfo);
			}
			for(ReviewsVO review : reviewLst) {
				int ac_seq = review.getAc_seq();
				RoomsVO room_vo = new RoomsVO(ac_seq);
				List<RoomsVO> roominfo = room_dao.selectAll(room_vo);
				room_lst.add(roominfo);
			}

			// 2. 조회한 정보를 request 영역에 담기
			request.setAttribute("reviewLst", reviewLst);
			request.setAttribute("accLstLst", lst);
			request.setAttribute("roomLst", room_lst);

			// 3. forward 방식으로 select.jsp로 이동
//			RequestDispatcher dispatcher = request.getRequestDispatcher("/select.jsp");
//			dispatcher.forward(request, response);

			return "myReview";
		}


}
