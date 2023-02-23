package com.smhrd.model;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.command.Command;
import com.smhrd.database.SqlSessionManager;

public class AccommodationsDAO {

	// 작업을 진행할 수 이있는 파일
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getFactory();

	// 모든 숙소를 조회할 수 있는 메서드()
	public List<AccommodationsVO> SelectAllRooms() {
		List<AccommodationsVO> roomlist = null;

		// 자동커밋
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		try {
			roomlist = sqlSession.selectList("SelectAllRooms");
		} catch (Exception e) {
			e.printStackTrace();
		}
		sqlSession.close();

		return roomlist;

	}

	//
	public List<AccommodationsVO> ChoiceRoom(AccommodationsVO ac_vo) {
		// 자동커밋
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		List<AccommodationsVO> roomlist = null;
		try {
			roomlist = sqlSession.selectList("SelectChoiceRoomInfo", ac_vo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		sqlSession.close();
		
		return roomlist;


	}
	// 지역별 숙소 전체선택
		public List<AccommodationsVO> LocalAreaRooms(String ac_addr) {
			SqlSession sqlSession = sqlSessionFactory.openSession(true);
			List<AccommodationsVO> roomlist = null;
			try {
				roomlist = sqlSession.selectList("LocalAreaRooms", ac_addr);

			} catch (Exception e) {
				e.printStackTrace();
			}
			sqlSession.close();
			return roomlist;

		}


}
