package com.smhrd.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.reflection.SystemMetaObject;

import com.smhrd.command.Command;
import com.smhrd.model.AccommodationsDAO;
import com.smhrd.model.AccommodationsVO;
import com.smhrd.model.AmentiesDAO;
import com.smhrd.model.AmentiesVO;
import com.smhrd.model.RoomsDAO;
import com.smhrd.model.RoomsVO;

public class ChoiceRoom implements Command {
		// 한개의 호텔을 찝어서 가져오는 것
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws UnsupportedEncodingException {

		// 가져온 파라미터 꺼내기
		String ac_seq = request.getParameter("ac_seq");
		System.out.println("ajax로 받아온 데이터 >>" + ac_seq);
		int ac_seq_int = 0;
		if (ac_seq != null) {
			System.out.print(ac_seq);
			ac_seq_int = Integer.parseInt(ac_seq);
			// 변환된 값을 사용하는 코드
		}
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

//		return "hotel_choice";
		return "ChoiceRoom";
	}

}
