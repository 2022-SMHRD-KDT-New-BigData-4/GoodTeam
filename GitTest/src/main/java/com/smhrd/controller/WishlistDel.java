package com.smhrd.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.command.Command;
import com.smhrd.model.AccommodationsDAO;
import com.smhrd.model.AccommodationsVO;
import com.smhrd.model.AmentiesDAO;
import com.smhrd.model.AmentiesVO;
import com.smhrd.model.ReviewsDAO;
import com.smhrd.model.ReviewsVO;
import com.smhrd.model.RoomsDAO;
import com.smhrd.model.RoomsVO;
import com.smhrd.model.WishlistDAO;

public class WishlistDel implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws UnsupportedEncodingException {
		// WISH_SEQ
		// WISH_SEQ
		Integer wish_seq = Integer.parseInt(request.getParameter("wish_seq"));
		String ac_seq = request.getParameter("ac_seq");
		ac_seq = ac_seq.replaceAll("[^0-9]", ""); // ac_seq= 제거
		int ac_seq_int = Integer.parseInt(ac_seq);


		// 로직을 수행할 DAO데이터 생성

		WishlistDAO dao = new WishlistDAO();
		int result = dao.WishDelete(wish_seq);
		// 가져온 파라미터 꺼내기
		// accommodations
		// 객체 생성
		AccommodationsVO ac_vo = new AccommodationsVO(ac_seq_int);
		// 1. 객실명 , 2. 객실사진 3. 주소
		AccommodationsDAO ac_dao = new AccommodationsDAO();
		List<AccommodationsVO> roominfo = ac_dao.ChoiceRoom(ac_vo);

		request.setAttribute("roominfo", roominfo);

		// Amenties
		// 객체 생성
		AmentiesVO am_vo = new AmentiesVO(ac_seq_int);
		// 1. 편의 시설
		AmentiesDAO am_dao = new AmentiesDAO();
		List<AmentiesVO> roomamen = am_dao.ChoiceRoom(am_vo);

		request.setAttribute("roomamen", roomamen);

		// Rooms 호텔 가격 가져오기
		RoomsVO roomvo = new RoomsVO(ac_seq_int);
		RoomsDAO roomdao = new RoomsDAO();

		List<RoomsVO> roomprice = roomdao.RoomPrice(roomvo);

		request.setAttribute("roomprice", roomprice);
		
		ReviewsDAO rvdao = new ReviewsDAO();
		List<ReviewsVO> rv = rvdao.reviewAcSelect(ac_seq_int);
		request.setAttribute("reviews", rv);

		return "hotel_choice"; 
	}

}
